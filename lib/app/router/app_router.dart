import 'package:auto_route/auto_route.dart';
import 'package:geat/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Splash.page, initial: true),
        AutoRoute(page: Login.page),
        AutoRoute(page: Register.page),
        AutoRoute(page: Ap.page),
        AutoRoute(
          page: Home.page,
          children: [
            AutoRoute(
              page: FeedN.page,
              children: [
                AutoRoute(page: Feed.page, initial: true),
                AutoRoute(page: ViewBook.page),
                AutoRoute(page: CreateBook.page),
                AutoRoute(page: CreateImageBook.page),
                AutoRoute(page: CreateAlternate.page),
                AutoRoute(page: Comment.page),
                AutoRoute(page: ViewAlternate.page),
              ],
            ),
            AutoRoute(
              page: SearchNav.page,
              children: [
                AutoRoute(page: Search.page, initial: true),
                AutoRoute(page: Profile.page),
                AutoRoute(page: Comment.page),
                AutoRoute(page: ViewBook.page),
                AutoRoute(page: CreateAlternate.page),
              ],
            ),
            AutoRoute(
              page: NotificationNav.page,
              children: [
                AutoRoute(page: Notification.page, initial: true),
                AutoRoute(page: Profile.page),
                AutoRoute(page: Comment.page),
                AutoRoute(page: ViewBook.page),
                AutoRoute(page: CreateAlternate.page),
                AutoRoute(page: ViewAlternate.page),
              ],
            ),
            AutoRoute(
              page: ProfileNav.page,
              children: [
                AutoRoute(page: Profile.page, initial: true),
                AutoRoute(page: Settings.page),
                AutoRoute(page: UpdateProfile.page),
                AutoRoute(page: CreateImageBook.page),
                AutoRoute(page: Comment.page),
                AutoRoute(page: Feedback.page),
                AutoRoute(page: FComment.page),
                AutoRoute(page: UpdateEmail.page),
                AutoRoute(page: CreateAlternate.page),
                AutoRoute(page: UpdatePassword.page),
                AutoRoute(page: ViewBook.page),
                AutoRoute(page: CreateBook.page),
                AutoRoute(page: ViewAlternate.page),
              ],
            ),
          ],
        ),
      ];
}
