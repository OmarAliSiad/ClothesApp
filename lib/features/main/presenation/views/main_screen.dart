import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_bottom_container.dart';
import '../../../home_view/presenation/views/home_view.dart';
import '../../../product_view/presenation/views/product_view.dart';

class MainScreen extends StatefulWidget {
  static String id = "MainScreen";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool CartIsOpen = false;
  int currentPage = 0;
  List<Widget> screens = [
    HomeView(
      key: UniqueKey(),
    ),
    ProductView(
      key: UniqueKey(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentPage],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(
                thickness: 1,
                color: Colors.black.withOpacity(.30),
              ),
              BottomNavigationBar(
                selectedLabelStyle:
                    AppStyles.styleMedium16(context).copyWith(fontSize: 14),
                elevation: 0,
                backgroundColor: Colors.white,
                selectedIconTheme:
                    const IconThemeData(color: Color(0xff1A0F91)),
                iconSize: 24,
                type: BottomNavigationBarType.fixed,
                currentIndex: currentPage,
                selectedItemColor: const Color(0xff1A0F91),
                onTap: (i) async {
                  setState(() {
                    currentPage = i;
                    currentPage == 2 || currentPage == 0 || currentPage == 3
                        ? CartIsOpen = true
                        : CartIsOpen = false;
                  });
                },
                items: [
                  const BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      color: (currentPage == 1)
                          ? const Color(0xff1A0F91)
                          : Colors.grey,
                      Assets.imagesProducts,
                      width: 20.5,
                      height: 21.5,
                    ),
                    label: 'Products',
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomBottomContainer(color: Colors.black)
            ],
          ),
        ],
      ),
    );
  }
}
