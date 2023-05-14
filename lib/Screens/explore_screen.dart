import 'package:book/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                width: double.infinity,
                color: Colors.white,
          child: Column(
            children: [
              const MainAppBar(),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.icons.rectangle13Png.path)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Find out the best books to read \nwhen you don’t even know what \nto read!!!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text(
                            'Explore',
                            style: TextStyle(color: Colors.orange),
                          )),
                    ],
                  ),
                ),
              ),
             Container(
                width: 100,
                height: 50,
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 8,
                      decoration: const BoxDecoration(shape: BoxShape.rectangle , color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(10)) ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),                  Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(shape: BoxShape.rectangle , color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10)) ),
                    ),
                                      const SizedBox(
                      width: 5,
                    ),  
                                     Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(shape: BoxShape.rectangle , color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(10)) ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
