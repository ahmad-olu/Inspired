import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/storage_repo.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this._userRepo,
    this._storageRepo,
    this._profileBloc,
  ) : super(EditProfileState.initial()) {
    final user = _profileBloc.state.currentLoggedInUser;
    emit(
      state.copyWith(
        username: user.username,
        fullname: user.fullname,
        website: user.website,
        bio: user.bio,
        imageId: user.imageId,
        val: user,
      ),
    );
  }
  final UserRepo _userRepo;
  final StorageRepo _storageRepo;
  final ProfileBloc _profileBloc;

  void localImageFile(File val) {
    emit(state.copyWith(localImage: val));
  }

  void usernameStr(String val) {
    emit(state.copyWith(username: val));
  }

  void fullnameStr(String val) {
    emit(state.copyWith(fullname: val));
  }

  void websiteStr(String val) {
    emit(state.copyWith(website: val));
  }

  void bioStr(String val) {
    emit(state.copyWith(bio: val));
  }

  Future<void> update() async {
    emit(state.copyWith(status: EditProfileStatus.submitting));

    String? imageId;
    try {
      if (state.localImage != null) {
        imageId = await _storageRepo.uploadProfileImage(
          state.localImage!,
          state.imageId,
        );
      }
      final user = UpdateAppUser(
        id: state.val!.id,
        username: state.username,
        fullname: state.fullname,
        website: state.website,
        bio: state.bio,
        imageId: imageId,
        email: state.val!.email,
      );

      await _userRepo.updateUser(user);
      emit(state.copyWith(status: EditProfileStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: EditProfileStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: EditProfileStatus.error));
    }
  }
}
