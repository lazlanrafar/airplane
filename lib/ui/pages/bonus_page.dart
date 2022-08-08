import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/logo.png'),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Text(
                    'Big Bonus 🎉',
                    style: blackTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'We give you early credit so that\nyou can buy a flight ticket',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              width: 220,
              height: 55,
              margin: const EdgeInsets.only(top: 50),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
                child: Text(
                  'Start Fly Now',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
