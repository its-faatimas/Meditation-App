import 'package:flutter/material.dart';
import 'package:meditation_app/core/components/exporting_packages.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarProvider provider = context.watch();
    return SizedBox(
      height: getProportionScreenHeight(88.0),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: provider.index,
        onTap: provider.onPressed,
        items: _bottomNavigationBarItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItems(
  ) {
    return <BottomNavigationBarItem>[
      _setBottomNavigationBarItem(
        'Home',
        AssetIcons.home,
      ),
      _setBottomNavigationBarItem('Search', AssetIcons.sounds),
      _setBottomNavigationBarItem(
        'Tickets',
        AssetIcons.user,
      ),
    ];
  }

  BottomNavigationBarItem _setBottomNavigationBarItem(
    String label,
    String assetIcon,
  ) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(assetIcon),
        label: label,
        tooltip: label,
      );
}
