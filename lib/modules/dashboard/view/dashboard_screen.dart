import 'package:flutter/cupertino.dart';
import 'package:quotix/import_export.dart';
import 'package:quotix/utils/global_style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: PRIMARY_COLOR),
              width: Get.width,
              height: Get.height * 0.25,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SpaceConfig.paddingSizeDefault,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: SpaceConfig.paddingSizeExtraLarge),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/profile/commonPPman.jpg',
                                  ),
                                ),
                              ),
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(width: SpaceConfig.paddingSizeSmall),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Welcome User",
                                  style: GlobalStyle.methodTitle.copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Let\'s Make Your Business Easy",
                                  style: GlobalStyle.methodMessage.copyWith(
                                    color: BACKGROUND_COLOR,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(CupertinoIcons.bell_fill, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width*0.3,
                          height: Get.height*0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Card(
                            color:  Color(0xFFFFFFFF),
                            elevation: 4,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,color: PRIMARY_COLOR,size: 30,),
                                  SizedBox(height: 8,),
                                  Text('Create Quotation',style: GlobalStyle.productName.copyWith(fontSize: 12),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: SpaceConfig.paddingSizeExtraLarge,),
                        Container(
                          width: Get.width*0.3,
                          height: Get.height*0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Card(
                            color:  Color(0xFFFFFFFF),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.cube_box,size: 30,color: PRIMARY_COLOR),
                                SizedBox(height: 8,),
                                Text('Products',style: GlobalStyle.productName.copyWith(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SpaceConfig.paddingSizeOverLarge,),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width*0.3,
                          height: Get.height*0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Card(
                            color:  Color(0xFFFFFFFF),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.history,size: 30,color: PRIMARY_COLOR),
                                SizedBox(height: 8,),
                                Text('History',style: GlobalStyle.productName.copyWith(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: SpaceConfig.paddingSizeExtraLarge,),
                        Container(
                          width: Get.width*0.3,
                          height: Get.height*0.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Card(
                            color:  Color(0xFFFFFFFF),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.graph_square  ,size: 30,color: PRIMARY_COLOR),
                                SizedBox(height: 8,),
                                Text('Statistics',style: GlobalStyle.productName.copyWith(fontSize: 12),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
