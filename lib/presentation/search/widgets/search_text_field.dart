import 'package:db_course_app/resources/images.dart';
import 'package:db_course_app/theme/weather_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const inputTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: defaultFontFamily);

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    required this.controller,
    required this.focusNode,
    required this.onCloseTap,
    required this.onComplete,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function() onCloseTap;

  final void Function(String?) onComplete;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        focusNode: focusNode,
        onFieldSubmitted: onComplete,
        style: inputTextStyle,
        decoration: InputDecoration(
            hintStyle: const TextStyle(fontFamily: defaultFontFamily),
            hintText: 'Enter city name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            prefixIconConstraints:
                const BoxConstraints(minHeight: 16, minWidth: 16),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                Images.icSearch,
                color:
                    focusNode.hasFocus ? Colors.indigo.shade900 : Colors.grey,
              ),
            ),
            suffixIcon: focusNode.hasFocus
                ? IconButton(
                    onPressed: onCloseTap,
                    icon: Image.asset(Images.icClose),
                  )
                : null));
  }
}
