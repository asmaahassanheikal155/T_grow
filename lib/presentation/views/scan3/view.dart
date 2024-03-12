// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:t_grow/app/app_icons.dart';
// import 'package:t_grow/app/app_images.dart';
//
// import '../../../app/app_colors.dart';
//
// class Scan3 extends StatefulWidget {
//   const Scan3({super.key});
//
//   @override
//   State<Scan3> createState() => _Scan3State();
// }
//
// class _Scan3State extends State<Scan3> {
//   int _selectedIndex = 0;
//
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: upload photo',
//       style: TextStyle(
//           color: AppColors.whiteColor,
//           fontSize: 30,
//           fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Index 1: ',
//       style: TextStyle(
//           color: AppColors.whiteColor,
//           fontSize: 30,
//           fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Index 2: Scan tips',
//       style: TextStyle(
//           color: AppColors.whiteColor,
//           fontSize: 30,
//           fontWeight: FontWeight.bold),
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: AppColors.greenColor,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppIcons.photo,
//               color: AppColors.whiteColor,
//               width: 32,
//               height: 32,
//             ),
//             label: 'upload photo',
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               AppIcons.stop,
//               color: AppColors.whiteColor,
//               width: 64,
//               height: 64,
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//               icon: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Scan2()));
//                   },
//                   child: SvgPicture.asset(
//                     AppIcons.tips,
//                     color: AppColors.whiteColor,
//                     width: 32,
//                     height: 32,
//                   )),
//               label: "Scan tips"),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: AppColors.whiteColor,
//         onTap: _onItemTapped,
//       ),
//       body: Column(
//         children: [
//           _widgetOptions.elementAt(_selectedIndex),
//           const Padding(
//             padding: EdgeInsets.only(right: 30),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Align(
//                     child: Icon(
//                   Icons.close,
//                   color: AppColors.greenColor,
//                 ))
//               ],
//             ),
//           ),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 "Scanning your plant",
//                 style:
//                     TextStyle(color: AppColors.clearGreenColor, fontSize: 24),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
