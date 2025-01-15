import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final String prefixIconPath;
  final String suffixIconPath;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const SearchField({
    super.key,
    this.hintText = "Search any Product",
    this.prefixIconPath = 'assets/icons/ic_search.svg',
    this.suffixIconPath = 'assets/icons/ic_mic.svg',
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 8,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Color(0xffDDDADA)),
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              prefixIconPath,
              height: 25,
            ),
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      suffixIconPath,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
