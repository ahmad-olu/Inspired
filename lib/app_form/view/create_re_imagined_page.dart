import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app_form/bloc/re_imagined_book_form_cubit/re_imagined_book_form_cubit.dart';
import 'package:geat/app_form/view/widgets/book_text_input.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';
import 'package:motion_toast/motion_toast.dart';

//* todo reImagined ==== alternate...
@RoutePage(name: 'createAlternate')
class CreateReImaginedPage extends StatelessWidget {
  const CreateReImaginedPage({
    required this.postId,
    required this.postName,
    required this.postUserId,
    super.key,
  });
  final String postId;
  final String postName;
  final String postUserId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReImaginedBookFormCubit(
        context.read<BookRepo>(),
        context.read<AuthBloc>(),
        context.read<NotificationRepo>(),
        context.read<ProfileBloc>(),
      )..initBook(postId, postName, postUserId),
      child: const CreateReImaginedView(),
    );
  }
}

class CreateReImaginedView extends StatefulWidget {
  const CreateReImaginedView({
    super.key,
  });

  @override
  State<CreateReImaginedView> createState() => _CreateReImaginedViewState();
}

class _CreateReImaginedViewState extends State<CreateReImaginedView> {
  final createReImaginedForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReImaginedBookFormCubit, ReImaginedBookFormState>(
      listener: (context, state) {
        if (state.status == ReImaginedBookFormStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == ReImaginedBookFormStatus.submitted) {
          // MotionToast.success(
          //   title: const Text('Submitted'),
          //   description: const Text(''),
          //   toastDuration: 6.seconds,
          // ).show(context);
          context.router.pop();
        }
      },
      builder: (context, state) {
        final theme = Theme.of(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Create Alternate Book'),
            centerTitle: true,
            actions: [
              if (state.status != ReImaginedBookFormStatus.submitting)
                ElevatedButton(
                  onPressed: () {
                    if (createReImaginedForm.currentState!.validate()) {
                      if (context.mounted) {
                        context.read<ReImaginedBookFormCubit>().upload();
                      }
                    }
                  },
                  child: const Text('Upload')
                      .animate(
                        onPlay: (controller) =>
                            controller.repeat(reverse: true),
                      )
                      .shimmer(
                        duration: 2000.ms,
                        delay: 1000.ms,
                        color: theme.scaffoldBackgroundColor,
                      ),
                ),
            ],
          ),
          body: state.status == ReImaginedBookFormStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Form(
                    key: createReImaginedForm,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var i = 0; i < state.content.length; i++)
                            Column(
                              key: ValueKey(state.content[i].id),
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: BookTextInput(
                                        helperText: 'Chapter Number',
                                        initialValue: state.content[i].chapter,
                                        hintText:
                                            'Chapter 1 / Book 1/ Episode 1',
                                        onChanged: (value) => context
                                            .read<ReImaginedBookFormCubit>()
                                            .updateContent(
                                              i,
                                              value,
                                              isData: false,
                                            ),
                                        validator: ValidationBuilder()
                                            .maxLength(
                                              250,
                                              'max data 🟰== 250 😟',
                                            )
                                            .build(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () => context
                                            .read<ReImaginedBookFormCubit>()
                                            .deleteContent(i),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(20, 50),
                                        ),
                                        child: const Text(
                                          '➖',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                MarkdownTextInput(
                                  (String value) => context
                                      .read<ReImaginedBookFormCubit>()
                                      .updateContent(i, value),
                                  state.content[i].data,
                                  label: 'Story',
                                  actions: const [
                                    MarkdownType.bold,
                                    MarkdownType.italic,
                                    MarkdownType.title,
                                    MarkdownType.list,
                                    MarkdownType.strikethrough,
                                    MarkdownType.separator,
                                  ],
                                  validators: ValidationBuilder()
                                      .maxLength(4000, 'max data 🟰== 4000 😟')
                                      .build(),
                                ),
                                const SizedBox(height: 20),
                                const Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
          floatingActionButton: state.status ==
                  ReImaginedBookFormStatus.submitting
              ? null
              : Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton.extended(
                    onPressed: () =>
                        context.read<ReImaginedBookFormCubit>().addContent(),
                    label: const Text('Add Chapters ➕'),
                  ),
                ),
        );
      },
    );
  }
}
