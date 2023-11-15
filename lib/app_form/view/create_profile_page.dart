import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app/utilities/image_picker.dart';
import 'package:geat/app/widget/global_cached_network_image.dart';
import 'package:geat/app_form/bloc/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:geat/app_form/view/widgets/book_text_input.dart';
import 'package:geat/app_form/view/widgets/submit_button.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_toast/motion_toast.dart';

@RoutePage(name: 'updateProfile')
class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(
        context.read<UserRepo>(),
        context.read<StorageRepo>(),
        context.read<ProfileBloc>(),
      ),
      child: const CreateProfileView(),
    );
  }
}

class CreateProfileView extends StatefulWidget {
  const CreateProfileView({super.key});

  @override
  State<CreateProfileView> createState() => _CreateProfileViewState();
}

class _CreateProfileViewState extends State<CreateProfileView> {
  final createProfileForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listener: (context, state) {
        if (state.status == EditProfileStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == EditProfileStatus.submitted) {
          // context.read<AuthBloc>().add(const AuthEvent.appUserChanged());
          context.router.pop();
          // MotionToast.success(
          //   title: const Text('Submitted'),
          //   description: const Text(''),
          //   toastDuration: 6.seconds,
          // ).show(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Edit Profile',
            ),
            centerTitle: true,
          ),
          body: state.status == EditProfileStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : SingleChildScrollView(
                  child: Form(
                    key: createProfileForm,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 70,
                        right: 20,
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          AvatarContainer(
                            imageId: state.imageId,
                            localImage: state.localImage,
                            size: 120,
                            borderRadius: 40,
                            onPressed: () async {
                              final image = await pickImage();
                              if (!context.mounted) return;
                              context
                                  .read<EditProfileCubit>()
                                  .localImageFile(image[0]);
                            },
                          ),
                          const SizedBox(height: 20),
                          BookTextInput(
                            initialValue: state.username,
                            helperText: 'Username',
                            onChanged: (val) => context
                                .read<EditProfileCubit>()
                                .usernameStr(val),
                            validator: ValidationBuilder()
                                .maxLength(
                                  100,
                                  'max data 🟰== 100 😟',
                                )
                                .build(),
                          ),
                          const SizedBox(height: 20),
                          // BookTextInput(
                          //   helperText: 'Email',
                          // ),
                          BookTextInput(
                            initialValue: state.fullname,
                            helperText: 'fullname',
                            onChanged: (val) => context
                                .read<EditProfileCubit>()
                                .fullnameStr(val),
                            validator: ValidationBuilder(
                              optional: true,
                            )
                                .maxLength(
                                  100,
                                  'max data 🟰== 100 😟',
                                )
                                .build(),
                          ),
                          const SizedBox(height: 20),
                          BookTextInput(
                            initialValue: state.website,
                            helperText: 'website',
                            onChanged: (val) => context
                                .read<EditProfileCubit>()
                                .websiteStr(val),
                            validator: ValidationBuilder(
                              optional: true,
                            )
                                .url()
                                .maxLength(
                                  100,
                                  'max data 🟰== 100 😟',
                                )
                                .build(),
                          ),
                          const SizedBox(height: 20),
                          BookTextInput(
                            initialValue: state.bio,
                            helperText: 'bio',
                            maxLines: null,
                            onChanged: (val) =>
                                context.read<EditProfileCubit>().bioStr(val),
                            validator: ValidationBuilder(
                              optional: true,
                            )
                                .maxLength(
                                  250,
                                  'max data 🟰== 250 😟',
                                )
                                .build(),
                          ),
                          const SizedBox(height: 20),
                          SubmitButton(
                            inputData: 'Submit',
                            onPressed: () {
                              if (createProfileForm.currentState!.validate()) {
                                context.read<EditProfileCubit>().update();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    required this.size,
    required this.borderRadius,
    this.imageId,
    super.key,
    this.localImage,
    this.onPressed,
  });
  final String? imageId;
  final File? localImage;
  final double size;
  final double borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          //color: Colors.blue, // Border color
          width: 2, // Border width
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          Align(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: _displayImage(imageId, localImage),
            ),
          ),
          Align(
            child: IconButton(
              onPressed: onPressed,
              style: IconButton.styleFrom(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
              icon: const Icon(
                Icons.person_add_alt,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayImage(
    String? imageId,
    File? localImage,
  ) {
    if (localImage != null) {
      return Image.file(
        localImage,
        fit: BoxFit.cover,
      );
    } else if (localImage == null && imageId != null) {
      return GlobalCachedNetworkImage(
        imageId: imageId,
      );
    }
    return const Icon(
      Icons.person_2_outlined,
      size: 60,
      color: Colors.transparent,
    );
  }
}
