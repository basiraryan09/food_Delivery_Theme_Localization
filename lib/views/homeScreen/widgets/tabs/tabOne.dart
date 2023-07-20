import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/images/imagesConst.dart';
import 'CardWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class FoodTabWidget extends StatefulWidget {
  FoodTabWidget({
    super.key,
  });

  @override
  State<FoodTabWidget> createState() => _FoodTabWidgetState();
}

class _FoodTabWidgetState extends State<FoodTabWidget> {
  List<String> titleList =[];
  List<String> priceList = [];
  List<String> descriptionList =[];


  final List imageList =[
    appPizzaHero,
    appPizzaHero2,
  ];
  final List ratingList =[
    '5.0',
    '3.4'
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    titleList = [
      AppLocalizations.of(context)!.meet,
      AppLocalizations.of(context)!.pizza,
    ];
    priceList =[
      AppLocalizations.of(context)!.price1,
      AppLocalizations.of(context)!.price2,
    ];
    descriptionList =[
      AppLocalizations.of(context)!.loremIpsum,
      AppLocalizations.of(context)!.loremIpsum,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        // --Card
        Container(
          height: 280,
          color: Colors.transparent,
          //isDarkColor ? appDarkBGColor : const Color(0xffF3F3F3),
          child: ListView.builder(
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            itemCount: imageList.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10, left: 20),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Material(
                          color: Colors.transparent,
                          child: GestureDetector(
                            onTap: (){
                              // Get.to( ProductDetail(
                              //   image: imageList[index],
                              //   title: titleList[index],
                              //   price: priceList[index],
                              // ));

                            },
                            /// --Card
                            child: CardWidget(
                              priceTag: priceList[index],
                              title: titleList[index],
                              rating: ratingList[index],
                              description: descriptionList[index],),
                          ),
                        ),
                      ),
                      /// --Image
                      Positioned(
                        bottom: 150,
                        left: (170 - 120.w) / 2, // Center the image horizontally within the container
                        child:
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 40.r,
                                  offset: Offset(0, 10.r),
                                  color: const Color(0xff000000).withOpacity(0.4.r),
                                )
                              ]
                            //color: Colors.white
                          ),
                          child: Image.asset(
                            imageList[index],
                            height: 164.h,
                            width: 164.h,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
        ),
       // const SizedBox(height: 60,),

      ],
    );
  }
}

