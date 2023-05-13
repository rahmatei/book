import 'package:book/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LibScreen extends StatefulWidget {
  const LibScreen({super.key});

  @override
  State<LibScreen> createState() => _LibScreenState();
}

class _LibScreenState extends State<LibScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MainAppBar(),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 25),
                      width: double.infinity,
                      child: const Text('Hi Emily,',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 92, 115),
                              fontSize: 17)),
                    ),
                    MainHeader(
                      title: 'My Library,',
                      textColor: const Color.fromARGB(255, 22, 92, 115),
                    ),
                    const MyLibrary(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainHeader(
                          title: 'My Wishlist',
                          textColor: const Color.fromARGB(255, 228, 149, 39),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.5))),
                          child: const Text(
                            'See More',
                            style: TextStyle(
                                color: Color.fromARGB(255, 228, 149, 39)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 375,
                      width: double.infinity,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 7,
                                mainAxisSpacing: 13,
                                childAspectRatio: 138 / 85),
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Assets.icons.rectangle1.image(),
                              const SizedBox(
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Book Lovers',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 22, 92, 115)),
                                  ),
                                  const Text(
                                    'Emily Henry',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 151, 151, 151)),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 4,
                                      ),
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
                              )
                            ],
                          );
                        },
                        itemCount: 6,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class MainHeader extends StatelessWidget {
  String? title;
  Color? textColor;

  MainHeader({super.key, this.title, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      width: 150,
      child: Text(title.toString(),
          style: TextStyle(
              color: textColor!, fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}

class MyLibrary extends StatelessWidget {
  const MyLibrary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return index == 2
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          width: 110,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.plus.svg(),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Discover More'),
                            ],
                          )),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 110,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  offset: const Offset(0, 5),
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1)
                            ],
                            image: const DecorationImage(
                                image: AssetImage('assets/icons/lib1.png'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                          width: 110,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name Of Book',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ))),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 5,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              Positioned(
                                  child: Container(
                                width: 50,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(5)),
                              )),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('50%')
                        ],
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

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
