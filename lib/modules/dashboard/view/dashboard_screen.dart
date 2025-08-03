import 'package:quotix/import_export.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: GlobalStyle.appBarBackgroundColor,
//         title: Text("Dashboard",style: GlobalStyle.appBarTitle,),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.settings,color: GlobalStyle.appBarIconThemeColor,))
//         ],
//       ),
//       body: SizedBox(
//         width: Get.width,
//         height: Get.height,
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Container(
//             //   decoration: BoxDecoration(color: PRIMARY_COLOR.withOpacity(0.5)),
//             //   width: Get.width,
//             //   height: Get.height * 0.25,
//             //   child: SafeArea(
//             //     child: Padding(
//             //       padding: const EdgeInsets.symmetric(
//             //         horizontal: SpaceConfig.paddingSizeDefault,
//             //       ),
//             //       child: Row(
//             //         mainAxisSize: MainAxisSize.max,
//             //         crossAxisAlignment: CrossAxisAlignment.center,
//             //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //         children: [
//             //           Padding(
//             //             padding: const EdgeInsets.only(top: SpaceConfig.paddingSizeExtraLarge),
//             //             child: Column(
//             //               mainAxisSize: MainAxisSize.max,
//             //               crossAxisAlignment: CrossAxisAlignment.start,
//             //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //               children: [
//             //                 Container(
//             //                   decoration: BoxDecoration(
//             //                     color: Colors.white,
//             //                     shape: BoxShape.circle,
//             //                     image: DecorationImage(
//             //                       fit: BoxFit.cover,
//             //                       image: AssetImage(
//             //                         'assets/profile/commonPPman.jpg',
//             //                       ),
//             //                     ),
//             //                   ),
//             //                   width: 60,
//             //                   height: 60,
//             //                 ),
//             //                 SizedBox(width: SpaceConfig.paddingSizeSmall),
//             //                 Column(
//             //                   mainAxisSize: MainAxisSize.min,
//             //                   crossAxisAlignment: CrossAxisAlignment.start,
//             //                   mainAxisAlignment: MainAxisAlignment.center,
//             //                   children: [
//             //                     Text(
//             //                       "Welcome User",
//             //                       style: GlobalStyle.methodTitle.copyWith(
//             //                         fontSize: 20,
//             //                       ),
//             //                     ),
//             //                     Text(
//             //                       "Let\'s Make Your Business Easy",
//             //                       style: GlobalStyle.methodMessage.copyWith(
//             //                         color: BACKGROUND_COLOR,
//             //                       ),
//             //                     ),
//             //                   ],
//             //                 ),
//             //               ],
//             //             ),
//             //           ),
//             //           Icon(CupertinoIcons.bell_fill, color: Colors.white),
//             //         ],
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             Expanded(
//               child: Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: Get.width*0.3,
//                           height: Get.height*0.15,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: Card(
//                             color:  Color(0xFFFFFFFF),
//                             elevation: 4,
//                             child: Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(Icons.add,color: PRIMARY_COLOR,size: 30,),
//                                   SizedBox(height: 8,),
//                                   Text('Create Quotation',style: GlobalStyle.productName.copyWith(fontSize: 12),)
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: SpaceConfig.paddingSizeExtraLarge,),
//                         Container(
//                           width: Get.width*0.3,
//                           height: Get.height*0.15,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: Card(
//                             color:  Color(0xFFFFFFFF),
//                             elevation: 4,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(CupertinoIcons.cube_box,size: 30,color: PRIMARY_COLOR),
//                                 SizedBox(height: 8,),
//                                 Text('Products',style: GlobalStyle.productName.copyWith(fontSize: 12),)
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: SpaceConfig.paddingSizeOverLarge,),
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: Get.width*0.3,
//                           height: Get.height*0.15,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: Card(
//                             color:  Color(0xFFFFFFFF),
//                             elevation: 4,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.history,size: 30,color: PRIMARY_COLOR),
//                                 SizedBox(height: 8,),
//                                 Text('History',style: GlobalStyle.productName.copyWith(fontSize: 12),)
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: SpaceConfig.paddingSizeExtraLarge,),
//                         Container(
//                           width: Get.width*0.3,
//                           height: Get.height*0.15,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: Card(
//                             color:  Color(0xFFFFFFFF),
//                             elevation: 4,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(CupertinoIcons.graph_square  ,size: 30,color: PRIMARY_COLOR),
//                                 SizedBox(height: 8,),
//                                 Text('Statistics',style: GlobalStyle.productName.copyWith(fontSize: 12),)
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 )
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: PRIMARY_COLOR,
        title: Text("Dashboard", style: GlobalStyle.appBarTitle),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: GlobalStyle.appBarIconThemeColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildUserInfoCard(),
              const SizedBox(height: 20),
              _buildSummaryCards(),
              const SizedBox(height: 20),
              _buildGridButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfoCard() {
    return Card(
      color: PRIMARY_COLOR.withOpacity(0.95),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile/commonPPman.jpg'),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome, Harsh", style: GlobalStyle.methodTitle.copyWith(fontSize: 18)),
                  const SizedBox(height: 4),
                  Text("Let's make your business easy", style: GlobalStyle.methodMessage.copyWith(color: Colors.white70)),
                ],
              ),
            ),
            Icon(CupertinoIcons.bell_fill, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _summaryCard("Quotes", "12", Icons.description_outlined, Colors.orange),
        _summaryCard("Products", "20", CupertinoIcons.cube_box, Colors.blue),
        _summaryCard("Clients", "8", Icons.group_outlined, Colors.green),
      ],
    );
  }

  Widget _summaryCard(String title, String count, IconData icon, Color color) {
    return Expanded(
      child: Card(
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Icon(icon, size: 28, color: color),
              const SizedBox(height: 8),
              Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: PRIMARY_TEXT_COLOR)),
              Text(title, style: TextStyle(fontSize: 13, color: SOFT_GREY)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridButtons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _dashboardButton(
              title: "Create Quotation",
              icon: Icons.add,
              onTap: ()=>Get.toNamed(PageConfig.ADD_EDIT_QUOTATION_SCREEN),
            ),
            _dashboardButton(
              title: "Products",
              icon: CupertinoIcons.cube_box,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _dashboardButton(
              title: "History",
              icon: Icons.history,
              onTap: () {},
            ),
            _dashboardButton(
              title: "Statistics",
              icon: CupertinoIcons.graph_square,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 24),
        _alignSectionTitle("Recent Quotations"),
        const SizedBox(height: 12),
        _buildRecentQuotationList(),
      ],
    );
  }

  Widget _dashboardButton({required String title, required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: Get.width * 0.4,
        height: Get.height * 0.15,
        decoration: BoxDecoration(
          color: CARD_COLOR,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: PRIMARY_COLOR),
            const SizedBox(height: 10),
            Text(title, style: GlobalStyle.productName.copyWith(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  Widget _alignSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: GlobalStyle.sectionTitle.copyWith(color: PRIMARY_TEXT_COLOR),
      ),
    );
  }

  Widget _buildRecentQuotationList() {
    // Dummy data – replace this with your controller data later
    final recentQuotations = [
      {'id': '#QT101', 'date': '2025-07-28', 'status': 'Pending'},
      {'id': '#QT100', 'date': '2025-07-25', 'status': 'Approved'},
      {'id': '#QT099', 'date': '2025-07-24', 'status': 'Rejected'},
    ];

    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: recentQuotations.length,
      separatorBuilder: (_, __) => SizedBox(height: 10),
      itemBuilder: (context, index) {
        final item = recentQuotations[index];
        return InkWell(
          onTap: () {
          },
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['id']!, style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text(item['date']!, style: TextStyle(color: SOFT_GREY, fontSize: 12)),
                    ],
                  ),
                  Icon(Icons.chevron_right_outlined,color: Colors.grey.shade500,)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}