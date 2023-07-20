import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/color/gradientsConst.dart';
import 'package:food_delivery_theme_local/constants/images/imagesConst.dart';
import 'package:food_delivery_theme_local/views/welcomeScreen/widgets/customButton.dart';
import 'package:get/get.dart';
import '../../components/text/textComponents.dart';
import '../../constants/color/colorConst.dart';
import '../../shared_preferance.dart';
import '../bottomNavigationBar/bottomNavigationBar.dart';

class WelcomeScreen extends StatefulWidget {
     const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final selectedLanguageColor = Rx<Color>(Colors.grey);


  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final thirdPartHeight = screenHeight / 1.5;
    final secondPartHeight = screenHeight / 2;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: thirdPartHeight,
            width: double.infinity,
            child: Image.asset(
              appBackImg,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(gradient: AppColors.primaryGradient),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// --DialogBox Menu To Change the Language
                  IconButton(
                      onPressed: () {
                        Get.defaultDialog(
                            title: AppLocalizations.of(context)!.chooseLanguage,
                            middleText: "",
                            backgroundColor: appGreyColor2,
                            actions: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                child: Column(
                                  children: [
                                    OutlinedButton(
                                      onPressed: ()async {
                                        Get.updateLocale(
                                            const Locale('en'));
                                        await SharedPreferencesHelper.saveSelectedLanguage('en');
                                        Get.back();
                                      },
                                      child: const Text('English', style: TextStyle(color: Colors.white),),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    OutlinedButton(
                                      onPressed: () async{
                                        Get.updateLocale(
                                            const Locale('fa',));
                                        await SharedPreferencesHelper.saveSelectedLanguage('fa');
                                        Get.back();
                                      },
                                      child: const Text('فارسی', style: TextStyle(color: Colors.white),),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    OutlinedButton(
                                      onPressed: () async{
                                        Get.updateLocale(
                                            const Locale('ps',));
                                        await SharedPreferencesHelper.saveSelectedLanguage('ps');
                                        Get.back();
                                      },
                                      child: const Text('پښتو', style: TextStyle(color: Colors.white),),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    OutlinedButton(
                                      onPressed: ()async {
                                        Get.updateLocale(
                                            const Locale('bn',));
                                        await SharedPreferencesHelper.saveSelectedLanguage('bn');
                                        Get.back();
                                      },
                                      child: const Text('বাংলা', style: TextStyle(color: Colors.white),),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    OutlinedButton(
                                      onPressed: ()async {
                                        Get.updateLocale(
                                            const Locale('ne',));
                                        await SharedPreferencesHelper.saveSelectedLanguage('ne');
                                        Get.back();
                                      },
                                      child: const Text('नेपाली', style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                ),
                              )
                            ]);
                      },
                      icon: const Icon(Icons.language_outlined), color: Colors.white,),
                 // const SizedBox(height: 20),
                  SizedBox(
                    height: secondPartHeight,
                  ),
                  /// --Heading Text
                  Text(
                    AppLocalizations.of(context)!.welcomeText,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  /// --Body Text
                  Text(
                    AppLocalizations.of(context)!.bodyText,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  /// --Welcome Button
                   CustomButton(img: appGoogleIcon, text: AppLocalizations.of(context)!.btnText1,),
                  SizedBox(
                    height: 16.h,
                  ),
                  /// --Login With Email Button
                  SizedBox(
                      height: 46.h,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(const MyHomePage());
                          },
                          child: Text(AppLocalizations.of(context)!.btnText2, style: TextStyle(color: appLoginBtnTextColor2, fontSize: 18.sp),))),
                  SizedBox(
                    height: 16.h,
                  ),
                  /// --RichText
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppLocalizations.of(context)!.richText1,
                            style: MyTextStyles.noAccount1,
                          ),
                          TextSpan(
                            text: AppLocalizations.of(context)!.richText2,
                            style: MyTextStyles.noAccount2,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



