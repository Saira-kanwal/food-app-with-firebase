import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/splash_screen.dart';
import 'package:food_app/viewModels/auth_viewModel.dart';
import 'package:food_app/viewModels/category_viewModel.dart';
import 'package:food_app/viewModels/item_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => ItemViewModel()),
        ChangeNotifierProvider(create: (_) => CategoryViewModel()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Food App',
              theme: ThemeData(
                fontFamily: 'Nexa',
                // textTheme: TextTheme(
                //   bodyText1: GoogleFonts.paprika()
                // ),
                primarySwatch: Colors.blue,
              ),
              supportedLocales: flc.supportedLocales.map((e) => Locale(e)),
              localizationsDelegates: const [
                flc.CountryLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              home: const SplashScreen(),
            );

          },

        )

    );
  }
}


