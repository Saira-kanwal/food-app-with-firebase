import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/viewModels/auth_viewModel.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/input_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthViewModel vm = context.watch<AuthViewModel>();
    return  Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children:  [
                const SizedBox(height: 90,),
                const Text(
                  "VERIFICATION,",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "(OTP).",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'One Time Password For Verification',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 80,),
                SizedBox(
                  height: 70,
                  width: double.maxFinite,
                  child: InputFiled(
                    controller: vm.otpController,
                    onTap:  ()  {
                    },
                    trailIcon: const Icon(Icons.edit,color: Colors.grey,size: 20),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  title: 'Verify',
                  onPressed: (){},
                  backgroundColor: AppColors.primaryColor,
                  textColor: Colors.white,
                ),
                const SizedBox(height: 10,),
                CustomButton(
                  title: 'Resend Code',
                  onPressed: (){},
                  backgroundColor: Colors.white,
                  textColor: AppColors.primaryColor,
                ),



              ],
            ),
          ),
        )
    );
  }
}
