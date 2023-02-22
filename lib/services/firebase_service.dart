import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../utils/common_functions.dart';

class FirebaseService
{
  static final _auth = FirebaseAuth.instance;
  static loginWithPhoneNumber({required BuildContext context, required PhoneAuthCredential phoneAuthCredential, required Function() goTo}) async
  {
    try
        {
          final authCredential = await _auth.signInWithCredential(phoneAuthCredential);
          if(authCredential.user != null)
            {
              goTo();
            }
        }
        on FirebaseAuthException catch(e)
        {
          CommonFunctions.showSnackBar(context: context, message:e.message.toString());
        }
  }
  static verifyPhoneNumber({required Function(String) verifyId, required String phoneNumber, required BuildContext context})
  {
    try
        {
          _auth.verifyPhoneNumber(
              verificationCompleted: (val){},
              verificationFailed: (exception){
                CommonFunctions.showSnackBar(context: context, message: exception.message.toString());
              },
              codeSent: (verificationId, code){
                verifyId(verificationId);
              },
              codeAutoRetrievalTimeout: (val){},
            phoneNumber: phoneNumber
          );

        }
        on FirebaseAuthException catch(e)
    {
      CommonFunctions.showSnackBar(context: context, message: e.message.toString());
    }

  }
}