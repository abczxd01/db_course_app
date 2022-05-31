import 'package:db_course_app/fixtures/city_items.dart';
import 'package:db_course_app/navigation/app_router.dart';
import 'package:db_course_app/presentation/search/widgets/cities_list_item_widget.dart';
import 'package:db_course_app/presentation/search/widgets/past_search_block.dart';
import 'package:flutter/material.dart';

import 'widgets/current_location_widget.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({required this.city, Key? key}) : super(key: key);
  final String city;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  String? chosenCity;
  List<String> pastSearchCities = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title(
              color: Colors.black,
              title: 'Get Weather',
              child: Text(
                'Get Weather',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SearchTextField(
                controller: _controller,
                focusNode: _focusNode,
                onTap: () => setState(() {}),
                onCloseTap: () => setState(() {
                      _controller.clear();
                      _focusNode.unfocus();
                    })),
            const SizedBox(
              height: 32,
            ),
            if (_focusNode.hasFocus == false) ...[
              CurrentLocationWidget(city: widget.city),
              const Divider(
                height: 48,
                thickness: 1,
              ),
              PastSearchBlock(
                  onClearAllTap: () => setState(() {
                        pastSearchCities.clear();
                      }),
                  pastSearchCities: pastSearchCities)
            ] else ...[
              Column(
                children: [
                  for (final cityItem in testCities) ...[
                    CitiesListItemWidget(
                        item: cityItem,
                        onTap: () => onCityItemTap(cityItem.city)),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    )
                  ]
                ],
              )
            ]
          ],
        ),
      ),
    );
  }

  void onPressed() {
    appRouter.goBack(context);
  }

  void onCityItemTap(String city) {
    setState(() {
      pastSearchCities.add(city);
      chosenCity = city;
      _focusNode.unfocus();
    });
  }
}
