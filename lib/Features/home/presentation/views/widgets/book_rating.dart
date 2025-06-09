import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
        const SizedBox(width: 6.3),
        Text('4.6', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(color: Color(0xff727272)),
        ),
      ],
    );
  }
}
