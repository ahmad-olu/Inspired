import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/app/repository/book_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:geat/app/widget/avatar_container.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/widgets/page_to_show_for_toggle_button.dart';
import 'package:geat/profile/widgets/profile_follow_button.dart';
import 'package:motion_toast/motion_toast.dart';

@RoutePage(name: 'profile')
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    required this.isProfilePage,
    required this.uid,
    super.key,
  });

  final bool isProfilePage;
  final String uid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<ProfileBloc>(context)
        ..add(const ProfileEvent.emptyPage())
        ..add(ProfileEvent.getUserData(uid: uid)),
      child: ProfileView(isProfilePage: isProfilePage),
    );
  }
}

class ProfileView extends HookWidget {
  const ProfileView({required this.isProfilePage, super.key});
  final bool isProfilePage;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState(0);
    final theme = Theme.of(context);
    // final toggleValue = <String>['books', 're-Imagined', 'drafts'];
    final toggleValue = <String>['books', 're-Imagined'];
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.status == ProfileStatus.error) {
          MotionToast.error(
            title: const Text('Error'),
            description: Text(state.errorMessage ?? ''),
            toastDuration: 6.seconds,
          ).show(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: isProfilePage ? null : AppBar(),
          body: state.status == ProfileStatus.loading
              ? ProfileLoadingWidget(theme: theme)
              : CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Column(
                          children: [
                            if (isProfilePage == true)
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      side: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                      shape: const BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      AutoRouter.of(context)
                                          .push(const Settings());
                                    },
                                    child: const Text(
                                      '🛠️',
                                      textScaleFactor: 2,
                                    ),
                                  ),
                                ),
                              ),
                            AvatarContainer(
                              imageId: state.user.imageId ?? '',
                              size: 120,
                              borderRadius: 40,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  state.user.fullname ?? '',
                                ),
                                const Text(' ☠️ '),
                                Text(
                                  state.user.email,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              state.user.username,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${state.books.length} 📓 && ${state.reImagined.length} 🖋️',
                                  textScaleFactor: 1.2,
                                ),
                                const SizedBox(width: 8),
                                const ProfileFollowButton(),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(state.user.bio ?? 'No Bio'),
                            const SizedBox(height: 4),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      backgroundColor: theme.scaffoldBackgroundColor,
                      floating: true,
                      automaticallyImplyLeading: false,
                      pinned: true,
                      title: Center(
                        child: ToggleButtons(
                          isSelected: [
                            selectedValue.value == 0,
                            selectedValue.value == 1,
                            //  selectedValue.value == 2,
                          ],
                          onPressed: (index) {
                            selectedValue.value = index;
                          },
                          borderColor: theme.colorScheme.secondary,
                          selectedBorderColor: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(15),
                          borderWidth: 1.5,
                          selectedColor: theme.colorScheme.primary,
                          color: theme.colorScheme.secondary,
                          children: toggleValue
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    e.toUpperCase(),
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    PageToShowForToggleButton(
                      pageIndex: selectedValue.value,
                      books: state.books,
                      reImagined: state.reImagined,
                      isCurrentUser: state.isCurrentUser,
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class ProfileLoadingWidget extends StatelessWidget {
  const ProfileLoadingWidget({
    required this.theme,
    super.key,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: theme.scaffoldBackgroundColor,
            )
                .animate(
              onPlay: (controller) => controller.repeat(reverse: true),
            )
                .shimmer(
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.secondary,
                theme.colorScheme.primary,
                theme.colorScheme.secondary,
              ],
              duration: 5000.ms,
              delay: 1000.ms,
            ),
          ),
          Expanded(
            child: Container(
              color: theme.scaffoldBackgroundColor,
            )
                .animate(
              onPlay: (controller) => controller.repeat(reverse: true),
            )
                .shimmer(
              colors: [
                theme.colorScheme.primary,
                theme.scaffoldBackgroundColor,
                theme.colorScheme.primary,
                theme.scaffoldBackgroundColor,
              ],
              duration: 5000.ms,
              delay: 1000.ms,
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(
              child: ListView(
                children: List.generate(
                  10,
                  (index) => SizedBox(
                    height: 70,
                    child: const Card(
                      color: Colors.yellow,
                    )
                        .animate(
                      onPlay: (controller) => controller.repeat(reverse: true),
                    )
                        .shimmer(
                      colors: [
                        theme.colorScheme.secondary,
                        theme.scaffoldBackgroundColor,
                        theme.colorScheme.secondary,
                        theme.scaffoldBackgroundColor,
                      ],
                      duration: 5000.ms,
                      delay: 1000.ms,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
