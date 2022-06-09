import 'package:db_course_app/models/city_item.dart';
import 'package:flutter/material.dart';

class CitiesListItemWidget extends StatelessWidget {
  const CitiesListItemWidget(
      {required this.item, required this.onTap, Key? key})
      : super(key: key);

  final CityItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          children: [
            Text(item.city),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                minRadius: 2,
                backgroundColor: Colors.grey,
              ),
            ),
            Text(
              item.country,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
