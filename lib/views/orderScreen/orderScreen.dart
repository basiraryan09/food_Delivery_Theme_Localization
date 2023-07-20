import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_theme_local/constants/images/imagesConst.dart';
import 'package:food_delivery_theme_local/provider/appProviderStepper.dart';
import 'package:food_delivery_theme_local/views/orderScreen/widgets/orderCard.dart';
import 'package:provider/provider.dart';
import '../../constants/color/colorConst.dart';
import '../../constants/text/textConst.dart';
import '../stepper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}
List<String> titleList =[];
List<String> priceList = [];
List<String> descriptionList =[];
final List imageList = [
  appPizzaHero,
  appPizzaHero2,
];

final List ratingList = ['5.0', '3.4'];

class _OrderScreenState extends State<OrderScreen> {
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
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkColor = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkColor ? appDarkBGColor : const Color(0xffF3F3F3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDarkColor ? appDarkBGColor : const Color(0xffF3F3F3),
        leading: Icon(
          Icons.arrow_back,
          color: isDarkColor ? appWhiteColor1 : Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
                child: Text(
              AppLocalizations.of(context)!.orderList,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          )
        ],
      ),
      body: Consumer<ItemProvider>(
        builder: (context, myProvider, _) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                /// --List View Builder of item Cart
                SizedBox(
                  height: 280.h,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17.0),
                        child: Container(
                          height: 109.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 14.r,
                                  offset: const Offset(0, 4),
                                  color: Colors.black.withOpacity(0.15))
                            ],
                            borderRadius: BorderRadius.circular(16.r),
                            color: isDarkColor
                                ? appDarkSearchBoxColor
                                : appWhiteColor2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90.h,
                                  width: 90.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent),
                                  child: Image.asset(
                                    imageList[index],
                                    height: 90.h,
                                    width: 90.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      /// --First Line Text Row
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            titleList[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                ratingList[index],
                                                style:
                                                const TextStyle(fontSize: 11),
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 16.sp,
                                                color: Colors.yellow,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(descriptionList[index]),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              priceList[index],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Container(
                                                height: 32.h,
                                                width: 72.w,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(4))),
                                                child: const customStepper())
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                /// --Cart Order Detail of Payment
                OrderCard(isDarkColor: isDarkColor)
              ],
            ),
          );
        },

      ),
    );
  }
}
