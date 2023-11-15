import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/app/models/app_error.dart';
import 'package:geat/app/repository/user_repo.dart';
import 'package:geat/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:geat/profile/bloc/profile_bloc/profile_bloc.dart';

part 'email_update_state.dart';
part 'email_update_cubit.freezed.dart';

class EmailUpdateCubit extends Cubit<EmailUpdateState> {
  EmailUpdateCubit(this._authBloc, this._userRepo, this._profileBloc)
      : super(EmailUpdateState.initial()) {
    final user = _profileBloc.state.currentLoggedInUser;
    emit(state.copyWith(email: user.email));
  }
  final AuthBloc _authBloc;
  final UserRepo _userRepo;
  final ProfileBloc _profileBloc;

  void emailStr(String val) {
    emit(state.copyWith(email: val));
  }

  void passwordStr(String val) {
    emit(state.copyWith(password: val));
  }

  Future<void> update() async {
    emit(state.copyWith(status: EmailUpdateStatus.submitting));
    try {
      final userId = _authBloc.state.user!.$id;
      await _userRepo.updateEmail(state.email, state.password, userId);
      emit(state.copyWith(status: EmailUpdateStatus.submitted));
    } on AppGenericException catch (e, _) {
      emit(
        state.copyWith(
          status: EmailUpdateStatus.error,
          errorMessage: '${e.code}⚠️ message:${e.message}',
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: EmailUpdateStatus.error));
    }
  }
}
