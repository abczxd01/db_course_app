import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:db_course_app/app/app_state.dart';

import 'package:db_course_app/features/weather/actions/get_weather_by_city_name_action.dart';
import 'package:db_course_app/fixtures/city_items.dart';
import 'package:db_course_app/navigation/app_router.dart';
import 'package:db_course_app/presentation/search/widgets/cities_list_item_widget.dart';
import 'package:db_course_app/presentation/search/widgets/past_search_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/current_location_widget.dart';
import 'widgets/search_text_field.dart';

class SearchPage extends HookWidget {
  const SearchPage({
    required this.pastSearchCities,
    Key? key,
  }) : super(key: key);
  final List<String> pastSearchCities;

  @override
  Widget build(BuildContext context) {
    final context = useContext();
    final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');
    final dispatch = storeProvider.dispatch;
    final currentCity = storeProvider.state.weather.currentCity?.name;

    final _controller = useTextEditingController();
    final _focusNode = useFocusNode();
    final hasFocus = useState(false);
    useEffect(() {
      _focusNode.addListener(() {
        hasFocus.value = _focusNode.hasFocus;
      });
      return; // You need this return if you have missing_return lint
    }, [_focusNode]);

    void onEditingComplete({
      required BuildContext context,
      required String? cityName,
    }) {
      if (cityName!.isNotEmpty) {
        dispatch(GetWeatherByCityNameAction(cityName: cityName));
        appRouter.goBack(context);
      }
    }

    void onCityItemTap(String city) {
      pastSearchCities.add(city);
      _focusNode.unfocus();
      appRouter.goBack(context);
    }

    return Scaffold(
      appBar: AppBar(toolbarHeight: 70),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Title(
            color: Colors.black,
            title: 'Get Weather',
            child: Text(
              'Get Weather',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(height: 32),
          SearchTextField(
            controller: _controller,
            focusNode: _focusNode,
            onComplete: (value) => onEditingComplete(
              context: context,
              cityName: value,
            ),
            onCloseTap: () {
              _controller.clear();
              _focusNode.unfocus();
            },
          ),
          const SizedBox(height: 32),
          if (hasFocus.value == false) ...[
            CurrentLocationWidget(city: currentCity!),
            const Divider(
              height: 48,
              thickness: 1,
            ),
            PastSearchBlock(
                onClearAllTap: () => pastSearchCities.clear(),
                pastSearchCities: pastSearchCities)
          ] else ...[
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                height: 1,
              ),
              itemBuilder: (context, index) => CitiesListItemWidget(
                  item: testCities[index],
                  onTap: () => onCityItemTap(testCities[index].name)),
              itemCount: testCities.length,
            ),
          ]
        ]),
      ),
    );
  }
}
