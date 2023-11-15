import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/extensions/password_validation_extention.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app_form/bloc/password_update_cubit/password_update_cubit.dart';
import 'package:geat/app_form/view/widgets/book_text_input.dart';
import 'package:geat/app_form/view/widgets/submit_button.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_toast/motion_toast.dart';

@RoutePage(name: 'updatePassword')
class PasswordUpdatePage extends StatelessWidget {
  const PasswordUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordUpdateCubit(
        context.read<UserRepo>(),
      ),
      child: const PasswordUpdateView(),
    );
  }
}

class PasswordUpdateView extends StatefulWidget {
  const PasswordUpdateView({super.key});

  @override
  State<PasswordUpdateView> createState() => _PasswordUpdateViewState();
}

class _PasswordUpdateViewState extends State<PasswordUpdateView> {
  final passwordUpdateForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordUpdateCubit, PasswordUpdateState>(
      listener: (context, state) {
        if (state.status == PasswordUpdateStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == PasswordUpdateStatus.submitted) {
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
          body: state.status == PasswordUpdateStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                    child: Form(
                      key: passwordUpdateForm,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email Update',
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          BookTextInput(
                            helperText: 'New Password',
                            onChanged: (val) => context
                                .read<PasswordUpdateCubit>()
                                .newPasswordStr(val),
                            visibility: true,
                            isPassword: true,
                            validator: ValidationBuilder()
                                .password()
                                .minLength(8, 'Length < 8️ 😟')
                                .build(),
                          ),
                          BookTextInput(
                            helperText: 'Old Password',
                            onChanged: (val) => context
                                .read<PasswordUpdateCubit>()
                                .oldPasswordStr(val),
                            visibility: true,
                            isPassword: true,
                            validator: ValidationBuilder()
                                .password()
                                .minLength(8, 'Length < 8️ 😟')
                                .build(),
                          ),
                          const SizedBox(height: 20),
                          SubmitButton(
                            inputData: 'Submit',
                            onPressed: () {
                              if (passwordUpdateForm.currentState!.validate()) {
                                context.read<PasswordUpdateCubit>().update();
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
