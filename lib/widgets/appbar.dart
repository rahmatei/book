import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';


class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {},
              icon: Assets.icons.menu.svg(),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color.fromARGB(255, 246, 245, 250)),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Assets.icons.scanDash.svg()),
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: Assets.icons.clarityNotificationOutlineBadged.svg()),
            Positioned(
              top: 6,
              right: -5,
              child: IconButton(
                  onPressed: () {},
                  icon: Assets.icons.mdiBellNotification.svg()),
            )
          ],
        )
      ],
    );
  }
}