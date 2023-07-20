import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/provider/myState.dart';
import 'package:food_delivery_theme_local/views/homeScreen/widgets/customAppBar.dart';
import 'package:food_delivery_theme_local/views/homeScreen/widgets/customContainer.dart';
import 'package:food_delivery_theme_local/views/homeScreen/widgets/heroImage.dart';
import 'package:food_delivery_theme_local/views/homeScreen/widgets/searchBar.dart';
import 'package:food_delivery_theme_local/views/homeScreen/widgets/tabs/tabOne.dart';
import 'package:provider/provider.dart';
import '../../constants/color/colorConst.dart';
import '../../constants/images/imagesConst.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  List<String?> image = [
    null,
    appVectorIcon3,
    appVectorIcon1,
    appVectorIcon2,
  ];
  List<Widget> containers = [
    FoodTabWidget(),
    FoodTabWidget(),
    FoodTabWidget(),
    FoodTabWidget(),

  ];

  List<String> text = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    text = [
      AppLocalizations.of(context)!.allText,
      AppLocalizations.of(context)!.pizza,
      AppLocalizations.of(context)!.hamburger,
      AppLocalizations.of(context)!.hotDog,
    ];
  }
  @override
  Widget build(BuildContext context) {
   // final selectedIndexProvider = Provider.of<AppProvider>(context);
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkColor = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkColor ? appDarkBGColor : const Color(0xffF3F3F3),
      body: SafeArea(
        child: Consumer<AppProvider>(
          builder: (context, myState, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                    height: 780.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25.h,
                        ),
                        /// --Custom App BAr
                        CustomAppBar(isDarkColor: isDarkColor),
                        SizedBox(
                          height: 30.h,
                        ),
                        /// --Search Box
                        CustomSearchBar(isDarkColor: isDarkColor),
                        SizedBox(
                          height: 10.h,
                        ),
                        /// --Hero Image
                        const HeroImage(),
                        SizedBox(
                          height: 20.h,
                        ),
                        /// --Categories List
                        SizedBox(
                          height: 49.h,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: text.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  myState.setSelectedIndex(index);
                                  // setState(() {
                                  //   _selectedIndex = index;
                                  // });
                                },
                                child: Containers(
                                  text: text[index],
                                  img: image[index],
                                  isSelected: myState.selectedIndex == index,
                                  // color: _selectedIndex == index ? Colors.blue : Colors.green,
                                ),
                              );
                            },
                          ),
                        ),
                        /// --Categories Pages
                        Container(
                          height: 360.h,
                          width: double.infinity,
                          color: Colors.transparent,
                          child: containers[myState.selectedIndex],
                        )
                      ],
                    )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}





