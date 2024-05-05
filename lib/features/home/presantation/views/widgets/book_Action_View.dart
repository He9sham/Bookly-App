import 'package:bookly_app/core/widgets/buttom_action.dart';
import 'package:bookly_app/core/widgets/launch_url_costom.dart';
import 'package:bookly_app/features/home/data/Models/bookmodels/bookmodels.dart';
import 'package:flutter/material.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookmodels});
  final Bookmodels bookmodels;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButtom(
            text: 'Free',
            textcolor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButtom(
            onPressed: () async {
              LunchurlCustom(context, bookmodels.volumeInfo.previewLink!);
            },
            text: gettext(bookmodels),
            textcolor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }

  String gettext(Bookmodels bookmodels) {
    if (bookmodels.volumeInfo.previewLink == null) {
      return 'Not Avalibale';
    } else {
      return 'Free preview';
    }
  }
}
