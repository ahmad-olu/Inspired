import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/extensions/password_validation_extention.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app_form/bloc/email_update_cubit/email_update_cubit.dart';
import 'package:geat/app_form/view/widgets/book_text_input.dart';
import 'package:geat/app_form/view/widgets/submit_button.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_toast/motion_toast.dart';

@RoutePage(name: 'updateEmail')
class EmailUpdatePage extends StatelessWidget {
  const EmailUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailUpdateCubit(
        context.read<AuthBloc>(),
        context.read<UserRepo>(),
        context.read<ProfileBloc>(),
      ),
      child: const EmailUpdateView(),
    );
  }
}

class EmailUpdateView extends StatefulWidget {
  const EmailUpdateView({super.key});

  @override
  State<EmailUpdateView> createState() => _EmailUpdateViewState();
}

class _EmailUpdateViewState extends State<EmailUpdateView> {
  final emailUpdateForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailUpdateCubit, EmailUpdateState>(
      listener: (context, state) {
        if (state.status == EmailUpdateStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
        if (state.status == EmailUpdateStatus.submitted) {
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
          body: state.status == EmailUpdateStatus.submitting
              ? Center(
                  child: Lottie.asset(AssetsConstants.lottieLoading2),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                    child: Form(
                      key: emailUpdateForm,
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
                            initialValue: state.email,
                            helperText: 'New Email ',
                            onChanged: (val) =>
                                context.read<EmailUpdateCubit>().emailStr(val),
                            validator: ValidationBuilder()
                                .email()
                                .maxLength(50)
                                .build(),
                          ),
                          BookTextInput(
                            helperText: 'Password',
                            onChanged: (val) => context
                                .read<EmailUpdateCubit>()
                                .passwordStr(val),
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
                              if (emailUpdateForm.currentState!.validate()) {
                                context.read<EmailUpdateCubit>().update();
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
