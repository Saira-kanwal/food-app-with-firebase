import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_colors.dart';
import 'admin_panel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _statTimer();
    super.initState();
  }

  _statTimer()
  {
    Future.delayed(const Duration(seconds: 3),_openScreen );
  }

  _openScreen()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AdminPanel()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90,),
            const Text(
              "LESS TALK,",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "EAT MORE.",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Now Delivery is on One Click',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80,),
            SizedBox(
              width: 164,
              height: 49,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
                  ),
                  onPressed: (){
                  },
                  child: const Text("Let's Go",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)),
            ),
            const Spacer(),
            Stack(
              children: [
                SvgPicture.asset('assets/images/splash_lightblue.svg',height: 408,),
                Positioned(
                  bottom: -10,
                  left: -15,
                  child: Stack(
                    children: [
                      SvgPicture.asset('assets/images/splash_blue.svg'),
                      Positioned(
                        bottom: 10,
                          left: -45,
                          child: SvgPicture.asset('assets/images/splash_image.svg',width: 510,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
