import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of fire ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textmlarg
                      .copyWith(fontSize: 20, fontFamily: kGtSectraFine),
                ),
              ),
              const Text(
                'J.K.Rowling',
                style: TextStyle(fontSize: 14),
              ),
              Row(
                children: [
                  const Text(
                    r'19.99$',
                    style: Styles.textmid,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 8,
                  ),
                  const Icon(
                    FontAwesomeIcons.solidStar,
                    color: Color(0xffFFDD4F),
                    size: 16,
                  ),
                  Text(
                    '  4.8',
                    style: Styles.textmid.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  const Text(
                    '(2390)',
                    style: Styles.textsmail,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
