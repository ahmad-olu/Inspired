import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/repository/user_repo.dart';

part 'password_update_state.dart';
part 'password_update_cubit.freezed.dart';

class PasswordUpdateCubit extends Cubit<PasswordUpdateState> {
  PasswordUpdateCubit(this._userRepo) : super(PasswordUpdateState.initial());
  final UserRepo _userRepo;

  void oldPasswordStr(String val) {
    emit(state.copyWith(oldPassword: val));
  }

  void newPasswordStr(String val) {
    emit(state.copyWith(newPassword: val));
  }

  Future<void> update() async {
    emit(state.copyWith(status: PasswordUpdateStatus.submitting));
    try {
      await _userRepo.updatePassword(state.newPassword, state.oldPassword);
      emit(state.copyWith(status: PasswordUpdateStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: PasswordUpdateStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: PasswordUpdateStatus.error));
    }
  }
}
