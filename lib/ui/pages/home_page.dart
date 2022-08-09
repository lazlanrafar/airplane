import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Where to fly today?',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/dummy/dm-profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imgUrl: 'assets/dummy/destination/1.png',
                city: 'Tangerang',
                title: 'Lake Ciliwung',
                rating: 4.8,
              ),
              DestinationCard(
                imgUrl: 'assets/dummy/destination/2.png',
                city: 'Tangerang',
                title: 'Lake Ciliwung',
                rating: 4.8,
              ),
              DestinationCard(
                imgUrl: 'assets/dummy/destination/3.png',
                city: 'Tangerang',
                title: 'Lake Ciliwung',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 16),
            const DestinationTile(
              imgUrl: 'assets/dummy/destination/1.png',
              city: 'Tangerang',
              title: 'Lake Ciliwung',
              rating: 4.8,
            ),
            const DestinationTile(
              imgUrl: 'assets/dummy/destination/2.png',
              city: 'Tangerang',
              title: 'Lake Ciliwung',
              rating: 4.8,
            ),
            const DestinationTile(
              imgUrl: 'assets/dummy/destination/3.png',
              city: 'Tangerang',
              title: 'Lake Ciliwung',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
