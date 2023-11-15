import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/repository/auth_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginState.initial());
  final AuthRepo _authRepo;

  void emailStr(String val) {
    emit(state.copyWith(email: val));
  }

  void passwordStr(String val) {
    emit(state.copyWith(password: val));
  }

  void passwordVisibilityBool() {
    emit(state.copyWith(passwordVisibility: !state.passwordVisibility));
  }

  Future<void> onLogin() async {
    emit(state.copyWith(status: LoginStatus.submitting));
    try {
      await _authRepo.login(email: state.email, password: state.password);
      emit(state.copyWith(status: LoginStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: LoginStatus.error,
          errorMessage: '${e.code} ⚠️ ${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error));
    }
  }
}
