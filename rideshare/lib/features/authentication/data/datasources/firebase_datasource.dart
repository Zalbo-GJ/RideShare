import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseDataSource {
  Future<String> sendOTP(String phoneNumber);
  Future<void> verifyOTP(String verificationId, String otp);
}

class FirebaseDataSourceImpl extends FirebaseDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseDataSourceImpl({required this.firebaseAuth});

  @override
  Future<String> sendOTP(String phoneNumber) async {
    final Completer<String> completer = Completer<String>();

    verificationCompleted(PhoneAuthCredential credential) => {};

    verificationFailed(FirebaseAuthException exception) =>
        completer.completeError(exception);

    codeSent(String verificationId, int? resendToken) =>
        completer.complete(verificationId);

    codeAutoRetrievalTimeout(String verificationId) => {};

    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
        timeout: const Duration(seconds: 30),
      );
      return await completer.future;
    } catch (e) {
      throw ('Failed to send OTP');
    }
  }

  @override
  Future<void> verifyOTP(String verificationId, String otp) async {
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );

      await firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      throw Exception('Failed to verify OTP');
    }
  }
}
