import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logisticsapp/ui/screens/screens.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SendParcel(),
    const ParcelCenterScreen(),
  ];
  final PageController _pageController = PageController();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: Theme.of(context).textTheme.headlineSmall,
        unselectedLabelStyle: Theme.of(context).textTheme.headlineSmall,
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                  : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
              label: 'My parcel'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                  : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
              label: 'Send parcel'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Percel center'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
