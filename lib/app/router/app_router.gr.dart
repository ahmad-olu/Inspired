// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:flutter/material.dart' as _i27;
import 'package:geat/app/models/book.dart' as _i28;
import 'package:geat/app/models/re_imagined.dart' as _i29;
import 'package:geat/app/view/app.dart' as _i1;
import 'package:geat/app_form/view/create_book_page.dart' as _i3;
import 'package:geat/app_form/view/create_image_book_page.dart' as _i4;
import 'package:geat/app_form/view/create_profile_page.dart' as _i5;
import 'package:geat/app_form/view/create_re_imagined_page.dart' as _i6;
import 'package:geat/app_form/view/email_update_page.dart' as _i7;
import 'package:geat/app_form/view/password_page.dart' as _i16;
import 'package:geat/auth/view/login_page.dart' as _i13;
import 'package:geat/auth/view/registration_page.dart' as _i19;
import 'package:geat/comment/view/comment_page.dart' as _i2;
import 'package:geat/feed/view/feed_navigation_screen.dart' as _i10;
import 'package:geat/feed/view/feed_page.dart' as _i11;
import 'package:geat/feedback/view/feedback_comment_page.dart' as _i8;
import 'package:geat/feedback/view/feedback_page.dart' as _i9;
import 'package:geat/home/view/home.dart' as _i12;
import 'package:geat/notification/view/notification_navigation_page.dart'
    as _i14;
import 'package:geat/notification/view/notification_page.dart' as _i15;
import 'package:geat/profile/view/profile_navigation_page.dart' as _i17;
import 'package:geat/profile/view/profile_view.dart' as _i18;
import 'package:geat/search/view/search_navigation_page.dart' as _i20;
import 'package:geat/search/view/search_page.dart' as _i21;
import 'package:geat/settings/view/settings_page.dart' as _i22;
import 'package:geat/splash/view/splash_view.dart' as _i23;
import 'package:geat/view_book/view/view_book_page.dart' as _i24;
import 'package:geat/view_book/view/view_reImagined_page.dart' as _i25;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    Ap.name: (routeData) {
      final args = routeData.argsAs<ApArgs>(orElse: () => const ApArgs());
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.App(key: args.key),
      );
    },
    Comment.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookCommentPage(),
      );
    },
    CreateBook.name: (routeData) {
      final args = routeData.argsAs<CreateBookArgs>(
          orElse: () => const CreateBookArgs());
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CreateBookPage(
          key: args.key,
          book: args.book,
          isUpdate: args.isUpdate,
        ),
      );
    },
    CreateImageBook.name: (routeData) {
      final args = routeData.argsAs<CreateImageBookArgs>(
          orElse: () => const CreateImageBookArgs());
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CreateComicPage(
          key: args.key,
          book: args.book,
          isUpdate: args.isUpdate,
        ),
      );
    },
    UpdateProfile.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CreateProfilePage(),
      );
    },
    CreateAlternate.name: (routeData) {
      final args = routeData.argsAs<CreateAlternateArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.CreateReImaginedPage(
          postId: args.postId,
          postName: args.postName,
          postUserId: args.postUserId,
          key: args.key,
        ),
      );
    },
    UpdateEmail.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmailUpdatePage(),
      );
    },
    FComment.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.FeedBackCommentPage(),
      );
    },
    Feedback.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.FeedBackPage(),
      );
    },
    FeedN.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.FeedNavigationPage(),
      );
    },
    Feed.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.FeedPage(),
      );
    },
    Home.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
      );
    },
    Login.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.LoginPage(),
      );
    },
    NotificationNav.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.NotificationNavigationPage(),
      );
    },
    Notification.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.NotificationPage(),
      );
    },
    UpdatePassword.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.PasswordUpdatePage(),
      );
    },
    ProfileNav.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ProfileNavigationPage(),
      );
    },
    Profile.name: (routeData) {
      final args = routeData.argsAs<ProfileArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.ProfilePage(
          isProfilePage: args.isProfilePage,
          uid: args.uid,
          key: args.key,
        ),
      );
    },
    Register.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.RegistrationPage(),
      );
    },
    SearchNav.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SearchNavigationPage(),
      );
    },
    Search.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SearchPage(),
      );
    },
    Settings.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.SettingsPage(),
      );
    },
    Splash.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.SplashPage(),
      );
    },
    ViewBook.name: (routeData) {
      final args = routeData.argsAs<ViewBookArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ViewBookPage(
          book: args.book,
          key: args.key,
        ),
      );
    },
    ViewAlternate.name: (routeData) {
      final args = routeData.argsAs<ViewAlternateArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i25.ViewReImaginedPage(
          reImagined: args.reImagined,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.App]
class Ap extends _i26.PageRouteInfo<ApArgs> {
  Ap({
    _i27.Key? key,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          Ap.name,
          args: ApArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Ap';

  static const _i26.PageInfo<ApArgs> page = _i26.PageInfo<ApArgs>(name);
}

class ApArgs {
  const ApArgs({this.key});

  final _i27.Key? key;

  @override
  String toString() {
    return 'ApArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.BookCommentPage]
class Comment extends _i26.PageRouteInfo<void> {
  const Comment({List<_i26.PageRouteInfo>? children})
      : super(
          Comment.name,
          initialChildren: children,
        );

  static const String name = 'Comment';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateBookPage]
class CreateBook extends _i26.PageRouteInfo<CreateBookArgs> {
  CreateBook({
    _i27.Key? key,
    _i28.Book? book,
    bool isUpdate = false,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          CreateBook.name,
          args: CreateBookArgs(
            key: key,
            book: book,
            isUpdate: isUpdate,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateBook';

  static const _i26.PageInfo<CreateBookArgs> page =
      _i26.PageInfo<CreateBookArgs>(name);
}

class CreateBookArgs {
  const CreateBookArgs({
    this.key,
    this.book,
    this.isUpdate = false,
  });

  final _i27.Key? key;

  final _i28.Book? book;

  final bool isUpdate;

  @override
  String toString() {
    return 'CreateBookArgs{key: $key, book: $book, isUpdate: $isUpdate}';
  }
}

/// generated route for
/// [_i4.CreateComicPage]
class CreateImageBook extends _i26.PageRouteInfo<CreateImageBookArgs> {
  CreateImageBook({
    _i27.Key? key,
    _i28.Book? book,
    bool isUpdate = false,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          CreateImageBook.name,
          args: CreateImageBookArgs(
            key: key,
            book: book,
            isUpdate: isUpdate,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateImageBook';

  static const _i26.PageInfo<CreateImageBookArgs> page =
      _i26.PageInfo<CreateImageBookArgs>(name);
}

class CreateImageBookArgs {
  const CreateImageBookArgs({
    this.key,
    this.book,
    this.isUpdate = false,
  });

  final _i27.Key? key;

  final _i28.Book? book;

  final bool isUpdate;

  @override
  String toString() {
    return 'CreateImageBookArgs{key: $key, book: $book, isUpdate: $isUpdate}';
  }
}

/// generated route for
/// [_i5.CreateProfilePage]
class UpdateProfile extends _i26.PageRouteInfo<void> {
  const UpdateProfile({List<_i26.PageRouteInfo>? children})
      : super(
          UpdateProfile.name,
          initialChildren: children,
        );

  static const String name = 'UpdateProfile';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CreateReImaginedPage]
class CreateAlternate extends _i26.PageRouteInfo<CreateAlternateArgs> {
  CreateAlternate({
    required String postId,
    required String postName,
    required String postUserId,
    _i27.Key? key,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          CreateAlternate.name,
          args: CreateAlternateArgs(
            postId: postId,
            postName: postName,
            postUserId: postUserId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateAlternate';

  static const _i26.PageInfo<CreateAlternateArgs> page =
      _i26.PageInfo<CreateAlternateArgs>(name);
}

class CreateAlternateArgs {
  const CreateAlternateArgs({
    required this.postId,
    required this.postName,
    required this.postUserId,
    this.key,
  });

  final String postId;

  final String postName;

  final String postUserId;

  final _i27.Key? key;

  @override
  String toString() {
    return 'CreateAlternateArgs{postId: $postId, postName: $postName, postUserId: $postUserId, key: $key}';
  }
}

/// generated route for
/// [_i7.EmailUpdatePage]
class UpdateEmail extends _i26.PageRouteInfo<void> {
  const UpdateEmail({List<_i26.PageRouteInfo>? children})
      : super(
          UpdateEmail.name,
          initialChildren: children,
        );

  static const String name = 'UpdateEmail';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i8.FeedBackCommentPage]
class FComment extends _i26.PageRouteInfo<void> {
  const FComment({List<_i26.PageRouteInfo>? children})
      : super(
          FComment.name,
          initialChildren: children,
        );

  static const String name = 'FComment';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i9.FeedBackPage]
class Feedback extends _i26.PageRouteInfo<void> {
  const Feedback({List<_i26.PageRouteInfo>? children})
      : super(
          Feedback.name,
          initialChildren: children,
        );

  static const String name = 'Feedback';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i10.FeedNavigationPage]
class FeedN extends _i26.PageRouteInfo<void> {
  const FeedN({List<_i26.PageRouteInfo>? children})
      : super(
          FeedN.name,
          initialChildren: children,
        );

  static const String name = 'FeedN';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i11.FeedPage]
class Feed extends _i26.PageRouteInfo<void> {
  const Feed({List<_i26.PageRouteInfo>? children})
      : super(
          Feed.name,
          initialChildren: children,
        );

  static const String name = 'Feed';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomePage]
class Home extends _i26.PageRouteInfo<void> {
  const Home({List<_i26.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i13.LoginPage]
class Login extends _i26.PageRouteInfo<void> {
  const Login({List<_i26.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i14.NotificationNavigationPage]
class NotificationNav extends _i26.PageRouteInfo<void> {
  const NotificationNav({List<_i26.PageRouteInfo>? children})
      : super(
          NotificationNav.name,
          initialChildren: children,
        );

  static const String name = 'NotificationNav';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i15.NotificationPage]
class Notification extends _i26.PageRouteInfo<void> {
  const Notification({List<_i26.PageRouteInfo>? children})
      : super(
          Notification.name,
          initialChildren: children,
        );

  static const String name = 'Notification';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i16.PasswordUpdatePage]
class UpdatePassword extends _i26.PageRouteInfo<void> {
  const UpdatePassword({List<_i26.PageRouteInfo>? children})
      : super(
          UpdatePassword.name,
          initialChildren: children,
        );

  static const String name = 'UpdatePassword';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ProfileNavigationPage]
class ProfileNav extends _i26.PageRouteInfo<void> {
  const ProfileNav({List<_i26.PageRouteInfo>? children})
      : super(
          ProfileNav.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNav';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i18.ProfilePage]
class Profile extends _i26.PageRouteInfo<ProfileArgs> {
  Profile({
    required bool isProfilePage,
    required String uid,
    _i27.Key? key,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          Profile.name,
          args: ProfileArgs(
            isProfilePage: isProfilePage,
            uid: uid,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i26.PageInfo<ProfileArgs> page =
      _i26.PageInfo<ProfileArgs>(name);
}

class ProfileArgs {
  const ProfileArgs({
    required this.isProfilePage,
    required this.uid,
    this.key,
  });

  final bool isProfilePage;

  final String uid;

  final _i27.Key? key;

  @override
  String toString() {
    return 'ProfileArgs{isProfilePage: $isProfilePage, uid: $uid, key: $key}';
  }
}

/// generated route for
/// [_i19.RegistrationPage]
class Register extends _i26.PageRouteInfo<void> {
  const Register({List<_i26.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SearchNavigationPage]
class SearchNav extends _i26.PageRouteInfo<void> {
  const SearchNav({List<_i26.PageRouteInfo>? children})
      : super(
          SearchNav.name,
          initialChildren: children,
        );

  static const String name = 'SearchNav';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SearchPage]
class Search extends _i26.PageRouteInfo<void> {
  const Search({List<_i26.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i22.SettingsPage]
class Settings extends _i26.PageRouteInfo<void> {
  const Settings({List<_i26.PageRouteInfo>? children})
      : super(
          Settings.name,
          initialChildren: children,
        );

  static const String name = 'Settings';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i23.SplashPage]
class Splash extends _i26.PageRouteInfo<void> {
  const Splash({List<_i26.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ViewBookPage]
class ViewBook extends _i26.PageRouteInfo<ViewBookArgs> {
  ViewBook({
    required _i28.Book book,
    _i27.Key? key,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          ViewBook.name,
          args: ViewBookArgs(
            book: book,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewBook';

  static const _i26.PageInfo<ViewBookArgs> page =
      _i26.PageInfo<ViewBookArgs>(name);
}

class ViewBookArgs {
  const ViewBookArgs({
    required this.book,
    this.key,
  });

  final _i28.Book book;

  final _i27.Key? key;

  @override
  String toString() {
    return 'ViewBookArgs{book: $book, key: $key}';
  }
}

/// generated route for
/// [_i25.ViewReImaginedPage]
class ViewAlternate extends _i26.PageRouteInfo<ViewAlternateArgs> {
  ViewAlternate({
    required _i29.ReImagined reImagined,
    _i27.Key? key,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          ViewAlternate.name,
          args: ViewAlternateArgs(
            reImagined: reImagined,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewAlternate';

  static const _i26.PageInfo<ViewAlternateArgs> page =
      _i26.PageInfo<ViewAlternateArgs>(name);
}

class ViewAlternateArgs {
  const ViewAlternateArgs({
    required this.reImagined,
    this.key,
  });

  final _i29.ReImagined reImagined;

  final _i27.Key? key;

  @override
  String toString() {
    return 'ViewAlternateArgs{reImagined: $reImagined, key: $key}';
  }
}
