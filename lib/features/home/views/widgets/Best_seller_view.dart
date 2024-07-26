import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/helper/spacing.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:bookly_app/features/home/views/widgets/rating_book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key, required this.bookmodels});
  final Bookmodels bookmodels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/Bookview', extra: bookmodels);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookmodels.volumeInfo.imageLinks.thumbnail),
            ),
            SizedBox(
              width: sizeOfWidth(0.04, context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: sizeOfWidth(0.5, context),
                  child: Text(
                    bookmodels.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textmlarg
                        .copyWith(fontSize: 20, fontFamily: kGtSectraFine),
                  ),
                ),
                Text(
                  bookmodels.volumeInfo.authors[0],
                  style: const TextStyle(fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                RatingBook(
                  count: bookmodels.volumeInfo.pageCount ?? 0,
                  language: bookmodels.volumeInfo.language ?? 'en',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ksin     noteka 2015
