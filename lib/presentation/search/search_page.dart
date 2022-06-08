import 'package:db_course_app/fixtures/city_items.dart';
import 'package:db_course_app/navigation/app_router.dart';
import 'package:db_course_app/presentation/search/widgets/cities_list_item_widget.dart';
import 'package:db_course_app/presentation/search/widgets/past_search_block.dart';
import 'package:flutter/material.dart';

import 'widgets/current_location_widget.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    required this.onCityChosen,
    required this.chosenCity,
    required this.pastSearchCities,
    Key? key,
  }) : super(key: key);

  final ValueNotifier<String> chosenCity;
  final VoidCallback onCityChosen;
  final List<String> pastSearchCities;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

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
              CurrentLocationWidget(city: widget.chosenCity.value),
              const Divider(
                height: 48,
                thickness: 1,
              ),
              PastSearchBlock(
                  onClearAllTap: () => setState(() {
                        widget.pastSearchCities.clear();
                      }),
                  pastSearchCities: widget.pastSearchCities)
            ] else ...[
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  height: 1,
                ),
                itemBuilder: (context, index) => CitiesListItemWidget(
                    item: testCities[index],
                    onTap: () => onCityItemTap(testCities[index].city)),
                itemCount: testCities.length,
              ),
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
      widget.pastSearchCities.add(city);
      widget.chosenCity.value = city;
      _focusNode.unfocus();
    });
    widget.onCityChosen.call();
    appRouter.goBack(context);
  }
}
