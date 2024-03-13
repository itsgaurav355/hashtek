import 'package:flutter/material.dart';
import 'package:hashtek/constants/global_variables.dart';

// ignore: must_be_immutable
class WidgetTile extends StatelessWidget {
  final String title;
  final IconData icon;
  VoidCallback? onTap;

  WidgetTile({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
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
                  icon,
                  color: secondary,
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Spacer(),
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
