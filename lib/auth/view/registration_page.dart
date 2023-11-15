import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/extensions/password_validation_extention.dart';
import 'package:geat/app/repository/auth_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/auth/bloc/registration_cubit/registration_cubit.dart';
import 'package:geat/auth/widgets/auth_button.dart';
import 'package:geat/auth/widgets/auth_text_input.dart';
import 'package:geat/auth/widgets/auth_text_span.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

@RoutePage(name: 'register')
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(
        context.read<AuthRepo>(),
        context.read<UserRepo>(),
      ),
      child: const RegistrationView(),
    );
  }
}

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final regForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegistrationCubit, RegistrationState>(
        listener: (context, state) {
          if (state.status == RegistrationStatus.submitted) {
            MotionToast.success(
              title: const Text('Logged In'),
              description: const Text(''),
              layoutOrientation: ToastOrientation.rtl,
              animationType: AnimationType.fromRight,
            ).show(context);

            context.read<AuthBloc>().add(const AuthEvent.appUserChanged());
            AutoRouter.of(context).push(Ap());
          } else if (state.status == RegistrationStatus.error) {
            MotionToast.error(
              title: const Text('Error'),
              description: Text(state.errorMessage ?? ''),
              toastDuration: 6.seconds,
            ).show(context);
          }
        },
        builder: (context, state) {
          final isLoading = state.status == RegistrationStatus.submitting;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: regForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Hey, You',
                      textScaleFactor: 3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Welcome to Geat.',
                      textScaleFactor: 1.5,
                      style: TextStyle(),
                    ),
                    const Text(
                      "Get a chance to share you'r stories to the world",
                      textScaleFactor: 1.5,
                      style: TextStyle(),
                    ),
                    const SizedBox(height: 40),
                    AuthTextInput(
                      helperText: 'Name',
                      enabled: !isLoading,
                      onChanged: (val) =>
                          context.read<RegistrationCubit>().nameStr(val),
                      validator: ValidationBuilder()
                          .minLength(5)
                          .regExp(
                            RegExp(
                              r'^([a-zA-Z])[a-zA-Z_-]*[\w_-]*[\S]$|^([a-zA-Z])[0-9_-]*[\S]$|^[a-zA-Z]*[\S]$',
                            ),
                            'Start with either uppercase or lowercase, then continue with letters, digits, underscores,hyphens',
                          )
                          .build(),
                    ),
                    const SizedBox(height: 10),
                    AuthTextInput(
                      helperText: 'Email',
                      enabled: !isLoading,
                      onChanged: (val) =>
                          context.read<RegistrationCubit>().emailStr(val),
                      validator:
                          ValidationBuilder().email().maxLength(50).build(),
                    ),
                    const SizedBox(height: 10),
                    AuthTextInput(
                      helperText: 'Password',
                      enabled: !isLoading,
                      onChanged: (val) =>
                          context.read<RegistrationCubit>().passwordStr(val),
                      onVisibilityPressed: () => context
                          .read<RegistrationCubit>()
                          .passwordVisibilityBool(),
                      visibility: state.passwordVisibility,
                      isPassword: true,
                      validator: ValidationBuilder()
                          .password()
                          .minLength(8, 'Length < 8️ 😟')
                          .build(),
                    ),
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: AuthButton(
                        isSubmitting: isLoading,
                        inputData: 'Register',
                        backgroundColor: Colors.black87,
                        textColor: Colors.white,
                        onPressed: () {
                          if (regForm.currentState!.validate()) {
                            context.read<RegistrationCubit>().onRegister();
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    AuthTextSpan(
                      isSubmitting: isLoading,
                      firstText: 'Already have an Account',
                      secondText: 'Walk in',
                      onTap: () {
                        AutoRouter.of(context).push(const Login());
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
