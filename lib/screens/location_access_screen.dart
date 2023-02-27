import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/viewModels/auth_viewModel.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen ({Key? key}) : super(key: key);

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
                  "ACCESS OF,",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "LOCATION.",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Location For The BetterR Delivery Experience',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 80,),
                SizedBox(
                  height: 195,
                  width: double.maxFinite,
                  child:
                  SvgPicture.asset('assets/images/location.svg',),
                ),
                const Spacer(),
                CustomButton(
                  title: 'Yes I\'m In',
                  onPressed: (){
                  },
                  backgroundColor: AppColors.primaryColor,
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        )
    );
  }
}
