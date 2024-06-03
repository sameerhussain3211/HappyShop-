// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:user_repository/user_repository.dart';
// part 'google_sign_in_event.dart';
// part 'google_sign_in_state.dart';

// class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
//   GoogleSignInBloc(this._authRepo) : super(GoogleSignInInitial()) {
//     on<GoogleSignInEvent>(_signinWithGoogle);
//   }

//   final FirebaseUserRepo _authRepo;

//   Future<void> _signinWithGoogle(
//       GoogleSignInEvent event, Emitter<GoogleSignInState> emit) async {
//     emit(GoogleSignInPending());
//     try {
//       final user = await _authRepo.signinWithGoogle();
//       if (user != null) {
//         emit(GoogleSignInSuccess());
//       } else {
//         emit(const GoogleSignInError("Google sign-in canceled"));
//       }
//     } catch (e) {
//       emit(GoogleSignInError(e.toString()));
//     }
//   }
// }
