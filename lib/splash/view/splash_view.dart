import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/constants/app_assets.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:lottie/lottie.dart';

@RoutePage(name: 'splash')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.authenticated) {
          AutoRouter.of(context).push(const Home());
        } else if (state.status == AuthStatus.unauthenticated) {
          AutoRouter.of(context).push(const Login());
        }
      },
      child: const SplashView(),
    );
  }
}

class SplashView extends HookWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepaintBoundary(
        child: Center(
          child: Lottie.asset(AssetsConstants.lottieLoading4),
        )
            .animate(
              onPlay: (controller) => controller.repeat(
                reverse: true,
              ),
            )
            .tint(
              duration: 2000.ms,
              delay: 3000.ms,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }
}
