import 'dart:async';

import 'package:book/gen/assets.gen.dart';
import 'package:book/models/categories.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int indexSlide = 0;
  int itemCategoryListSelected = 0;

  late Timer _timer;

  List<String> categoryList = [
    'Arts',
    'Biography',
    'Romance',
    'Thriller',
    'Fiction',
    'Crime',
    'Movies',
    'Religious',
    'Music'
  ];

  List<CategoryModel> listDataBiographyGrid = [
    CategoryModel(
        title: 'The Story of Marie Curie',
        subject: 'Susan R Katy',
        rate: 4,
        image: Assets.icons.rectangle2.image(width: 150, height: 150)),
  ];

  List<CategoryModel> listDataArtGrid = [
    CategoryModel(
        title: 'The Story of Marie Curie',
        subject: 'Susan R Katy',
        rate: 4,
        image: Assets.icons.rectangle2.image(width: 150, height: 150)),
    CategoryModel(
        title: 'At Home with Mohammed Ali',
        subject: 'Hana Alli',
        rate: 5,
        image: Assets.icons.rectangle3.image(width: 150, height: 150)),
    CategoryModel(
        title: 'Malcolm X',
        subject: 'Alex Haley',
        rate: 3,
        image: Assets.icons.rectangle4.image(width: 150, height: 150)),
    CategoryModel(
        title: 'Becoming Michelle Obama',
        subject: 'Michelle Obama',
        rate: 5,
        image: Assets.icons.rectangle5.image(width: 150, height: 150)),
    CategoryModel(
        title: 'The Story of Walt Disney',
        subject: 'Susan B Katz',
        rate: 4,
        image: Assets.icons.rectangle6.image(width: 150, height: 150)),
    CategoryModel(
        title: 'The Happiest Man on Earth',
        subject: 'Author Name',
        rate: 5,
        image: Assets.icons.rectangle7.image(width: 150, height: 150)),
  ];
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const duration = Duration(seconds: 5);
    _timer = Timer.periodic(duration, (Timer t) {
      setState(() {
        indexSlide < 2 ? ++indexSlide : indexSlide = 0;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

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
          const SizedBox(
            height: 10,
          ),
          IndexedStack(
            index: indexSlide,
            children: const [
              Slide(
                  textSlide:
                      'Find out the best books to read \nwhen you don’t even know what \nto read!!!',
                  textButton: 'Explore'),
              Slide(
                  textSlide:
                      'Shop Book The best Book to read \n Shoping to Book',
                  textButton: 'Buy'),
              Slide(
                  textSlide:
                      'Read Book The best Book to read \n Shoping to Book',
                  textButton: 'Read'),
            ],
          ),
          BottomSlider(
            index: indexSlide,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Categories',
              style: TextStyle(
                  color: Color.fromARGB(255, 22, 92, 115),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      itemCategoryListSelected = index;
                    });
                  },
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide.none,
                        bottom: itemCategoryListSelected == index
                            ? const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 228, 149, 39))
                            : BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    child: Text(
                      categoryList[index],
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                );
              },
              itemCount: categoryList.length,
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 13,
                    childAspectRatio: 0.60),
                itemBuilder: (context, index) {
                  return ItemCategoryListGridView(
                    image: listDataArtGrid[index].image!,
                    text1: listDataArtGrid[index].title!,
                    text2: listDataArtGrid[index].subject!,
                  );
                },
                itemCount: 6),
          )
        ],
      ),
    ));
  }
}

class ItemCategoryListGridView extends StatelessWidget {
  final Image image;
  final String text1;
  final String text2;

  const ItemCategoryListGridView({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 90,
                    child: Text(
                      text1,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 22, 92, 115),
                          fontSize: 10),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 60,
                    child: Text(
                      text2,
                      style: const TextStyle(color: Colors.grey, fontSize: 8),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Assets.icons.starfiled.svg(),
                    const SizedBox(
                      width: 2,
                    ),
                    Assets.icons.starfiled.svg(),
                    const SizedBox(
                      width: 2,
                    ),
                    Assets.icons.starfiled.svg(),
                    const SizedBox(
                      width: 2,
                    ),
                    Assets.icons.star.svg(),
                    const SizedBox(
                      width: 2,
                    ),
                    Assets.icons.star.svg(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSlider extends StatefulWidget {
  final int index;

  const BottomSlider({
    super.key,
    required this.index,
  });

  @override
  State<BottomSlider> createState() => _BottomSliderState();
}

class _BottomSliderState extends State<BottomSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            width: widget.index == 0 ? 45 : 8,
            height: 8,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: widget.index == 0 ? Colors.orange : Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          const SizedBox(
            width: 5,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: widget.index == 1 ? 45 : 8,
            height: 8,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: widget.index == 1 ? Colors.orange : Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          const SizedBox(
            width: 5,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: widget.index == 2 ? 45 : 8,
            height: 8,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: widget.index == 2 ? Colors.orange : Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
        ],
      ),
    );
  }
}

class Slide extends StatelessWidget {
  final String textSlide;
  final String textButton;

  const Slide({
    super.key,
    required this.textSlide,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.bounceInOut,
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
            Text(
              textSlide,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: Text(
                  textButton,
                  style: const TextStyle(color: Colors.orange),
                )),
          ],
        ),
      ),
    );
  }
}
