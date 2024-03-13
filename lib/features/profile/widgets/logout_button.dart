import 'package:flutter/material.dart';
import 'package:hashtek/constants/global_variables.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 60,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: secondary),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.logout_rounded,
              color: secondary,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Log out",
              style: TextStyle(color: secondary, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
