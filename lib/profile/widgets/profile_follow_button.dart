import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';

class ProfileFollowButton extends StatelessWidget {
  const ProfileFollowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.isCurrentUser) {
          return const SizedBox.shrink();
        }
        return ElevatedButton(
          onPressed: () =>
              context.read<ProfileBloc>().add(const ProfileEvent.followUser()),
          child: state.isFollowing
              ? const Text(
                  'UnFollow',
                )
              : const Text(
                  'Follow',
                ),
        );
      },
    );
  }
}
