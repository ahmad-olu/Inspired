import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/models/user.dart';
import 'package:geat/app/repository/auth_repo.dart';
import 'package:geat/app/repository/user_repo.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(this._authRepo, this._userRepo)
      : super(RegistrationState.initial());
  final AuthRepo _authRepo;
  final UserRepo _userRepo;

  void nameStr(String val) {
    emit(state.copyWith(name: val));
  }

  void emailStr(String val) {
    emit(state.copyWith(email: val));
  }

  void passwordStr(String val) {
    emit(state.copyWith(password: val));
  }

  void passwordVisibilityBool() {
    emit(state.copyWith(passwordVisibility: !state.passwordVisibility));
  }

  Future<void> onRegister() async {
    emit(state.copyWith(status: RegistrationStatus.submitting));
    try {
      final result = await _authRepo.signUp(
        email: state.email,
        password: state.password,
        name: state.name,
      );
      final user = AppUser(
        id: result.$id,
        email: state.email,
        username: state.name,
        followers: [],
        following: [],
      );

      await _userRepo.createUser(user);
      emit(state.copyWith(status: RegistrationStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: RegistrationStatus.error,
          errorMessage: '${e.code} ⚠️ ${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: RegistrationStatus.error));
    }
  }
}
