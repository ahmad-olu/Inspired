import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/app/repository/auth_repo.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/notification_repo.dart';
import 'package:geat/app/repository/search_repo.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app/router/app_router.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/l10n/l10n.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';

@RoutePage(name: 'ap')
class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepo(),
        ),
        RepositoryProvider(
          create: (context) => UserRepo(),
        ),
        RepositoryProvider(
          create: (context) => BookRepo(),
        ),
        RepositoryProvider(
          create: (context) => SearchRepo(),
        ),
        RepositoryProvider(
          create: (context) => NotificationRepo(),
        ),
        RepositoryProvider(
          create: (context) => StorageRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              userRepo: context.read<UserRepo>(),
              authRepository: context.read<AuthRepo>(),
            )..add(const AuthEvent.appUserChanged()),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(
              context.read<UserRepo>(),
              context.read<AuthBloc>(),
              context.read<BookRepo>(),
              context.read<NotificationRepo>(),
            ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          theme: FlexThemeData.light(
            scheme: FlexScheme.outerSpace,
            fontFamily: 'SourceCodePro',
          ),
          darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.outerSpace,
            fontFamily: 'SourceCodePro',
          ),
          themeMode: ThemeMode.light,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );

    // return MaterialApp(
    //   // theme: ThemeData(
    //   //   appBarTheme: AppBarTheme(
    //   //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //   //   ),
    //   //   colorScheme: ColorScheme.fromSeed(
    //   //     seedColor: const Color.fromRGBO(238, 175, 97, 1),
    //   //     onPrimary: const Color.fromRGBO(251, 144, 98, 1),
    //   //     onSecondary: const Color.fromRGBO(106, 13, 131, 1),
    //   //     tertiary: const Color.fromRGBO(238, 93, 108, 1),
    //   //     //background: const Color.fromARGB(255, 233, 225, 215),
    //   //     //brightness: Brightness.dark,
    //   //   ),
    //   //   useMaterial3: true,
    //   //   fontFamily: 'SourceCodePro',
    //   // ),
    //   theme: FlexThemeData.light(
    //     scheme: FlexScheme.outerSpace,
    //     fontFamily: 'SourceCodePro',
    //   ),
    //   darkTheme: FlexThemeData.dark(
    //     scheme: FlexScheme.outerSpace,
    //     fontFamily: 'SourceCodePro',
    //   ),
    //   themeMode: ThemeMode.light,
    //   localizationsDelegates: AppLocalizations.localizationsDelegates,
    //   supportedLocales: AppLocalizations.supportedLocales,
    //   home: const SettingsPage(),
    // );
  }
}
