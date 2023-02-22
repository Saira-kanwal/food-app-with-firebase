import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/viewModels/auth_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/button.dart';
import '../widgets/input_field.dart';

class AddPhoneScreen extends StatelessWidget {
  const AddPhoneScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AuthViewModel vm = context.read<AuthViewModel>();
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              SizedBox(height: 90.h),
              Text(
                "ADD YOUR,",
                style: TextStyle(
                  fontSize: 52.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "NUMBER.",
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Add Number For Better Experience.',
                style: TextStyle(
                  color: Colors.black54,
                    fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80.h),

              SizedBox(
                height: 70,
                width: double.maxFinite,
                child: InputFiled(
                  controller: vm.oathController,
                  onTap:  ()  {
                  },
                ),
              ),
              const Spacer(),
              OathButton(
                title: 'Send code (OTP)',
                onPressed: (){
                  vm.sendCode(context);
                },
                backgroundColor: AppColors.primaryColor,
                textColor: Colors.white70,
              )



            ],
          ),
        ),
      )
    );
  }
}
