import 'package:db_course_app/navigation/app_router.dart';
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
            CurrentLocationWidget(city: widget.city),
            const Divider(
              height: 48,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }

  void onPressed() {
    appRouter.goBack(context);
  }
}
