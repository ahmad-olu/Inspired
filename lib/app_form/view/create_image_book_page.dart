import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/constants/appwrite_const.dart';
import 'package:geat/app/models/book.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/app/utilities/image_picker.dart';
import 'package:geat/app_form/bloc/create_image_book_formcubit/create_image_book_form_cubit.dart';
import 'package:geat/app_form/view/widgets/create_book_form_exteded.dart';
import 'package:geat/app_form/view/widgets/create_comic_form_exteded.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_toast/motion_toast.dart';

import 'package:geat/app/widget/global_cached_network_image.dart';

@RoutePage(name: 'createImageBook')
class CreateComicPage extends StatelessWidget {
  const CreateComicPage({super.key, this.book, this.isUpdate = false});
  final Book? book;
  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateImageBookFormCubit(
        context.read<BookRepo>(),
        context.read<StorageRepo>(),
        context.read<AuthBloc>(),
      )..initForm(book, isUpdate: isUpdate),
      child: CreateComicView(isUpdate: isUpdate),
    );
  }
}

class CreateComicView extends StatefulWidget {
  const CreateComicView({required this.isUpdate, super.key});
  final bool isUpdate;

  @override
  State<CreateComicView> createState() => _CreateComicViewState();
}

class _CreateComicViewState extends State<CreateComicView> {
  final createImageBookForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateImageBookFormCubit, CreateImageBookFormState>(
      listener: (context, state) {
        if (state.status == CreateImageBookFormStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == CreateImageBookFormStatus.submitted) {
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
              if (state.status != CreateImageBookFormStatus.submitting)
                RepaintBoundary(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (createImageBookForm.currentState!.validate() &&
                              state.imagesPath.isNotEmpty ||
                          state.imagesId.isNotEmpty) {
                        final submit =
                            await showExtendedComicForm(context: context);
                        if (submit != null && submit == true) {
                          if (context.mounted) {
                            await context
                                .read<CreateImageBookFormCubit>()
                                .upload();
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
          body: state.status == CreateImageBookFormStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: SingleChildScrollView(
                    child: Form(
                      key: createImageBookForm,
                      child: Column(
                        children: [
                          const Text(
                            "❗Note: The first Image Would be you'r comic cover",
                            textScaleFactor: 1.3,
                          ),
                          if (widget.isUpdate == true &&
                              state.imagesPath.isEmpty)
                            // if(state.imagesPath.isEmpty)
                            // const Text("Images can't be empty"),
                            Container(
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              height: MediaQuery.of(context).size.height / 1.7,
                              width: double.maxFinite,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: GlobalCachedNetworkImage(
                                      imageId: state.imagesId[0],
                                    ),
                                    // child: Image.network(
                                    //   state.imagesUrlPath[index],
                                    //   fit: BoxFit.cover,
                                    //   width: 200,
                                    //   height: 250,
                                    // ),
                                  );
                                },
                                itemCount: state.imagesId.length,
                              ),
                            )
                          else if (state.imagesPath.isNotEmpty)
                            Container(
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              height: MediaQuery.of(context).size.height / 1.7,
                              width: double.maxFinite,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 4,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Image.file(
                                      state.imagesPath[index],
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    ),
                                  );
                                },
                                itemCount: state.imagesPath.length,
                              ),
                            )
                          else
                            Card(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.image,
                                  size: 300,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                TextFormField(
                                  autocorrect: false,
                                  initialValue: state.title,
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.text_fields),
                                    labelText: 'Title',
                                    border: OutlineInputBorder(),
                                    errorMaxLines: 2,
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: ValidationBuilder()
                                      .maxLength(
                                        250,
                                        'max data 🟰== 250 😟',
                                      )
                                      .build(),
                                  onChanged: (value) => context
                                      .read<CreateImageBookFormCubit>()
                                      .titleStr(value),
                                  textInputAction: TextInputAction.done,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          floatingActionButton:
              state.status == CreateImageBookFormStatus.submitting
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: FloatingActionButton.extended(
                        onPressed: () async {
                          final image = await pickImage(pickSingleImage: false);
                          if (!context.mounted) return;
                          context
                              .read<CreateImageBookFormCubit>()
                              .imagesList(image);
                        },
                        label: const Text('Add Images ➕'),
                      ),
                    ),
        );
      },
    );
  }
}
