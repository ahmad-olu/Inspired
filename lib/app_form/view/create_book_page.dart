import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/app/utilities/image_picker.dart';
import 'package:geat/app_form/bloc/create_book_form_cubit/create_book_form_cubit.dart';
import 'package:geat/app_form/view/widgets/book_text_input.dart';
import 'package:geat/app_form/view/widgets/create_book_form_exteded.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';
import 'package:motion_toast/motion_toast.dart';

import 'package:geat/app_form/view/widgets/create_book_avatar_container.dart';

@RoutePage(name: 'createBook')
class CreateBookPage extends StatelessWidget {
  const CreateBookPage({super.key, this.book, this.isUpdate = false});
  final Book? book;
  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateBookFormCubit(
        context.read<BookRepo>(),
        context.read<StorageRepo>(),
        context.read<AuthBloc>(),
      )..initForm(book, isUpdate: isUpdate),
      child: CreateBookView(isUpdate: isUpdate),
    );
  }
}

class CreateBookView extends StatefulWidget {
  const CreateBookView({required this.isUpdate, super.key});
  final bool isUpdate;

  @override
  State<CreateBookView> createState() => _CreateBookViewState();
}

class _CreateBookViewState extends State<CreateBookView> {
  final createBookForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBookFormCubit, CreateBookFormState>(
      listener: (context, state) {
        if (state.status == CreateBookFormStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == CreateBookFormStatus.submitted) {
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
            title: const Text('Create Book'),
            centerTitle: true,
            actions: [
              if (state.status != CreateBookFormStatus.submitting)
                RepaintBoundary(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (createBookForm.currentState!.validate()) {
                        final submit =
                            await showExtendedBookForm(context: context);
                        if (submit != null && submit == true) {
                          if (context.mounted) {
                            await context.read<CreateBookFormCubit>().upload();
                          }
                        }
                      }
                    },
                    child: Text(
                      state.isUpdate == true ? 'update' : '🆙 Upload',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
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
          body: state.status == CreateBookFormStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: SingleChildScrollView(
                    child: Form(
                      key: createBookForm,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: BookTextInput(
                                  initialValue: state.title,
                                  helperText: 'Book Title',
                                  onChanged: (val) => context
                                      .read<CreateBookFormCubit>()
                                      .titleStr(val),
                                  validator: ValidationBuilder()
                                      .maxLength(
                                        250,
                                        'max data 🟰== 250 😟',
                                      )
                                      .build(),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: AvatarContainer(
                                  isUpdate: widget.isUpdate,
                                  onlineImageUrl: state.imagesId.isEmpty
                                      ? null
                                      : state.imagesId[0],
                                  imageUrl: state.imagesPath.isEmpty
                                      ? null
                                      : state.imagesPath[0],
                                  size: 120,
                                  borderRadius: 40,
                                  onPressed: () async {
                                    final image = await pickImage();
                                    if (!context.mounted) return;
                                    context
                                        .read<CreateBookFormCubit>()
                                        .imagesList(image);
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          for (var i = 0; i < state.content.length; i++)
                            Column(
                              key: ValueKey(state.content[i].id),
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: BookTextInput(
                                        initialValue: state.content[i].chapter,
                                        helperText: 'Chapter Number',
                                        hintText:
                                            'Chapter 1 / Book 1/ Episode 1',
                                        onChanged: (value) => context
                                            .read<CreateBookFormCubit>()
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
                                            .read<CreateBookFormCubit>()
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
                                      .read<CreateBookFormCubit>()
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
          floatingActionButton: state.status == CreateBookFormStatus.submitting
              ? null
              : Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton.extended(
                    onPressed: () =>
                        context.read<CreateBookFormCubit>().addContent(),
                    label: const Text('Add Chapters ➕'),
                  ),
                ),
        );
      },
    );
  }
}
