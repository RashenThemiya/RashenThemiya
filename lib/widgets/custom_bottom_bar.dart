import 'package:flutter/material.dart';
import 'package:mhart_s_application1/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgMinimize,
      activeIcon: ImageConstant.imgMinimize,
      type: BottomBarEnum.Minimize,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBusinesscredit,
      activeIcon: ImageConstant.imgBusinesscredit,
      type: BottomBarEnum.Businesscredit,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUsersaccount,
      activeIcon: ImageConstant.imgUsersaccount,
      type: BottomBarEnum.Usersaccount,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgStatistic,
      activeIcon: ImageConstant.imgStatistic,
      type: BottomBarEnum.Statistic,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.v,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup29,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: 22.adaptSize,
                width: 22.adaptSize,
                color: appTheme.blueGray400,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].activeIcon,
                height: 22.adaptSize,
                width: 22.adaptSize,
                color: appTheme.cyan600,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Minimize,
  Businesscredit,
  Usersaccount,
  Statistic,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
