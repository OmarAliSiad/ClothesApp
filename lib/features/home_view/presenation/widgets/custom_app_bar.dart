// import 'package:flutter/material.dart';
// import '../../../../core/utils/app_styles.dart';
// import '../../../../core/utils/assets.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       clipBehavior: Clip.none,
//       backgroundColor: const Color(0xff1A0F91),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(
//             height: 45,
//           ),
//           Row(
//             children: [
//               Image.asset(
//                 Assets.imagesHand,
//                 width: 19.87,
//                 height: 18.38,
//               ),
//               const SizedBox(
//                 width: 8,
//               ),
//               Text(
//                 'Hello !',
//                 style: AppStyles.styleSemiBold20(context)
//                     .copyWith(color: Colors.white),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Martin Shah ',
//                 style: AppStyles.styleSemiBold20(context)
//                     .copyWith(color: Colors.white),
//               ),
//               Image.asset(
//                 Assets.imagesImageProfile,
//                 width: 31.91,
//                 height: 36.92,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size(double.infinity, 100);
// }
