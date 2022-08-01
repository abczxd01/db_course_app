import 'package:db_course_app/resources/images.dart';
import 'package:flutter/material.dart';

class PastSearchItemWidget extends StatelessWidget {
  const PastSearchItemWidget({
    required this.city,
    required this.onTapCity,
    required this.onTapDelete,
    Key? key,
  }) : super(key: key);

  final String city;
  final VoidCallback onTapCity;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTapCity,
            child: Text(
              city,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          GestureDetector(
              onTap: onTapDelete,
              child: Image.asset(
                Images.icClose,
                scale: 1.2,
              ))
        ],
      ),
    );
  }
}
