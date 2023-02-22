import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/firebase_service.dart';

class AuthViewModel extends ChangeNotifier
{
  TextEditingController oathController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final countryPicker = const  FlCountryCodePicker();

  void sendCode(BuildContext context) async
  {
    var number = "+923204828032";
    await FirebaseService.verifyPhoneNumber(
        verifyId: (val) {
          print('verify Id: ${val}');
        },
        phoneNumber: number,
        context: context
    );
  }
}