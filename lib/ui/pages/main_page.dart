import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Image(
                    image: AssetImage('assets/icon/tab-nav/ic-home.png'),
                    height: 24,
                    width: 24,
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Image(
                    image: AssetImage('assets/icon/tab-nav/ic-booking.png'),
                    height: 24,
                    width: 24,
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Image(
                    image: AssetImage('assets/icon/tab-nav/ic-card.png'),
                    height: 24,
                    width: 24,
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Image(
                    image: AssetImage('assets/icon/tab-nav/ic-settings.png'),
                    height: 24,
                    width: 24,
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  )
                ],
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
