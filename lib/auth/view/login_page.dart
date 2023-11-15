import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:geat/app/extensions/password_validation_extention.dart';
import 'package:geat/app/repository/auth_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/auth/bloc/login_cubit/login_cubit.dart';
import 'package:geat/auth/widgets/auth_button.dart';
import 'package:geat/auth/widgets/auth_text_input.dart';
import 'package:geat/auth/widgets/auth_text_span.dart';
import 'package:motion_toast/motion_toast.dart';

@RoutePage(name: 'login')
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        context.read<AuthRepo>(),
      ),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.submitted) {
          MotionToast.success(
            title: const Text('Logged In'),
            description: const Text(''),
          ).show(context);
          context.read<AuthBloc>().add(const AuthEvent.appUserChanged());
          AutoRouter.of(context).push(Ap());
        } else if (state.status == LoginStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
      },
      builder: (context, state) {
        final isLoading = state.status == LoginStatus.submitting;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Form(
                key: loginForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Walk in',
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
                      helperText: 'Email',
                      enabled: !isLoading,
                      onChanged: (val) =>
                          context.read<LoginCubit>().emailStr(val),
                      validator:
                          ValidationBuilder().email().maxLength(50).build(),
                    ),
                    const SizedBox(height: 10),
                    AuthTextInput(
                      helperText: 'Password',
                      enabled: !isLoading,
                      onChanged: (val) =>
                          context.read<LoginCubit>().passwordStr(val),
                      onVisibilityPressed: () =>
                          context.read<LoginCubit>().passwordVisibilityBool(),
                      visibility: state.passwordVisibility,
                      isPassword: true,
                      validator: ValidationBuilder()
                          .password()
                          .minLength(8, 'Length < 8️ 😟')
                          .build(),
                    ),
                    const SizedBox(height: 90),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: AuthButton(
                        isSubmitting: isLoading,
                        inputData: 'Walk in',
                        backgroundColor: Colors.grey[200],
                        textColor: Colors.black87,
                        onPressed: () {
                          if (loginForm.currentState!.validate()) {
                            context.read<LoginCubit>().onLogin();
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    AuthTextSpan(
                      isSubmitting: isLoading,
                      firstText: "Don't have an Account",
                      secondText: 'Register',
                      onTap: () {
                        AutoRouter.of(context).push(
                          const Register(),
                        );
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
