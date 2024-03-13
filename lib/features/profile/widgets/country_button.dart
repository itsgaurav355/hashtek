import 'package:flutter/material.dart';
import 'package:hashtek/constants/global_variables.dart';
import 'package:hashtek/features/profile/widgets/country_flag.dart';

// ignore: must_be_immutable
class CountryButton extends StatelessWidget {
  const CountryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(tertiary),
            elevation: MaterialStateProperty.all(10.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size(20, 20)),
            overlayColor:
                MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.flag_outlined,
                  color: secondary,
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Country",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Spacer(),
                SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .5,
                    child: const CountryFlag()),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
