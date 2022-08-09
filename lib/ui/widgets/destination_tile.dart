import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String city;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.city,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  city,
                  style: grayTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          const Image(
            image: AssetImage('assets/icon/ic-star.png'),
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 2),
          Text(
            rating.toString(),
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
