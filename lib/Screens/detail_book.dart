import 'package:book/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  const DetailBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.icons.arrowBack.svg(),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 22, 92, 115),
                      ),
                    ),
                    child: const Text(
                      '+ Add to wishlist',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                child: Assets.icons.rectangle18.image()),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                    width: 48,
                    height: 48,
                    child: CircleAvatar(
                      radius: 100,
                      child: Assets.icons.ellipse2.image(),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dust Jacket',
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 92, 115),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'By Pisco Pirinto',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Assets.icons.starfiled.svg(width: 15, height: 15),
                        const SizedBox(
                          width: 2,
                        ),
                        Assets.icons.starfiled.svg(width: 15, height: 15),
                        const SizedBox(
                          width: 2,
                        ),
                        Assets.icons.starfiled.svg(width: 15, height: 15),
                        const SizedBox(
                          width: 2,
                        ),
                        Assets.icons.star.svg(width: 15, height: 15),
                        const SizedBox(
                          width: 2,
                        ),
                        Assets.icons.star.svg(width: 15, height: 15),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '| 1,500 Reads',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                const Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '\$10.00',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )))
              ],
            )
          ],
        ),
      )),
    );
  }
}
