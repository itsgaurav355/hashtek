import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:hashtek/constants/global_variables.dart';

class CountryFlag extends StatefulWidget {
  const CountryFlag({super.key});

  @override
  State<CountryFlag> createState() => _CountryFlagState();
}

class _CountryFlagState extends State<CountryFlag> {
  Uri uri = Uri.parse('+91');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiary,
      body: CountryListPick(
          pickerBuilder: (context, countryCode) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  countryCode!.flagUri!,
                  package: 'country_list_pick',
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  countryCode.name!,
                  style: TextStyle(color: secondary),
                ),
              ],
            );
          },
          onChanged: (value) {
            if (value != null) {
              setState(() {
                uri = Uri.parse(value.flagUri!);
              });
            }
          },

          // To disable option set to false
          // theme: CountryTheme(
          //   isShowFlag: true,
          //   isShowTitle: true,
          //   isShowCode: false,
          //   isDownIcon: false,
          //   showEnglishName: true,
          // ),
          // Set default value
          initialSelection: uri.toString(),
          // Whether to allow the widget to set a custom UI overlay
          useUiOverlay: true,
          // Whether the country list should be wrapped in a SafeArea
          useSafeArea: false),
    );
  }
}
