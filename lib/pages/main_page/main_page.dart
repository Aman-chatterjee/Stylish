import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/pages/home_page/home_page.dart';
import 'package:stylish_app/pages/main_page/constants/tabs.dart';
import 'package:stylish_app/pages/wishlist/wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    const HomePage(),
    const WishlistPage(),
    const Center(child: Text("Add to Cart")),
    const Center(child: Text("Search")),
    const Center(child: Text("Settings")),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: customBottomNavigationBar(),
      floatingActionButton: floatingActionBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _screens[_selectedIndex],
    );
  }




  Padding floatingActionBtn() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FloatingActionButton(
        onPressed: ()=>_onItemTapped(TabIndex.cart.index),
        shape: const CircleBorder(),
        elevation: 5,
        backgroundColor: Colors.white,
        child:  Icon(
                Icons.shopping_cart_outlined,
                size: 28,
                color: _selectedIndex == TabIndex.cart.index
                    ? const Color(0xFFEB3030)
                    : Colors.black,
              ),
      ),
    );
  }

  BottomAppBar customBottomNavigationBar() {
    return BottomAppBar(
      color: Colors.white,
      clipBehavior: Clip.none,
      shadowColor: Colors.black54,
      elevation: 10,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        buildNavBarItem(Icons.home_outlined, 'Home', TabIndex.home.index),
        buildNavBarItem(Icons.favorite_border, 'Wishlist', TabIndex.wishlist.index),
        const SizedBox(width: 25),
        buildNavBarItem(Icons.search_rounded, 'Search', TabIndex.search.index),
        buildNavBarItem(Icons.settings_outlined, 'Setting', TabIndex.settings.index),
      ]),
    );
  }

  AppBar appBar() {
    return AppBar(
        toolbarHeight: 75,
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xfff9f9f9),
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
          ),
        ),
        leading: InkWell(
          onTap: ()=> Fluttertoast.showToast(msg: "Menu Tapped"),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              'assets/icons/ic_menu.svg',
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: ()=> Fluttertoast.showToast(msg: "Profile Tapped"),
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/icons/ic_profile.png',
                height: 45,
              ),
            ),
          ),
        ]);
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => {_onItemTapped(index)},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              color: _selectedIndex == index
                  ? const Color(0xFFEB3030)
                  : Colors.black,
                  size: 26,
              ),
          Text(
            label,
            style: GoogleFonts.roboto(
                color: _selectedIndex == index
                    ? const Color(0xFFEB3030)
                    : Colors.black),
          )
        ],
      ),
    );
  }
}
