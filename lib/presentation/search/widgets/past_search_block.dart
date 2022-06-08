import 'package:db_course_app/presentation/search/widgets/past_search_item_widget.dart';
import 'package:flutter/material.dart';

class PastSearchBlock extends StatefulWidget {
  const PastSearchBlock(
      {required this.onClearAllTap, required this.pastSearchCities, Key? key})
      : super(key: key);

  final List<String> pastSearchCities;
  final VoidCallback onClearAllTap;

  @override
  State<PastSearchBlock> createState() => _PastSearchBlockState();
}

class _PastSearchBlockState extends State<PastSearchBlock> {
  _PastSearchBlockState();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Past Search', style: Theme.of(context).textTheme.headline4),
            TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                onPressed: widget.onClearAllTap,
                child: Text('Clear All',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.indigo.shade900))),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: widget.pastSearchCities.length,
            itemBuilder: (context, index) {
              return PastSearchItemWidget(
                  city: widget.pastSearchCities[index],
                  onTapCity: () => {},
                  onTapDelete: () {
                    setState(() {
                      widget.pastSearchCities
                          .remove(widget.pastSearchCities[index]);
                    });
                  });
            }),
      ],
    );
  }

  void onPressed() {}
}
