import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String imageUrl, bool isActive = false}) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image(
            image: AssetImage(imageUrl),
            height: 24,
            width: 24,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: isActive ? primaryColor : transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      );
    }

    Widget tabNavigator() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navItem(
                imageUrl: 'assets/icon/tab-nav/ic-home.png',
                isActive: true,
              ),
              navItem(
                imageUrl: 'assets/icon/tab-nav/ic-booking.png',
                isActive: false,
              ),
              navItem(
                imageUrl: 'assets/icon/tab-nav/ic-card.png',
                isActive: false,
              ),
              navItem(
                imageUrl: 'assets/icon/tab-nav/ic-settings.png',
                isActive: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          tabNavigator(),
        ],
      ),
    );
  }
}
