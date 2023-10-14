import 'package:flutter/material.dart';
import 'package:plantapp/screens/product_screen.dart';

import '../constants/const.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController(text: "Plants");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: homescreenbgcolor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: blackcolor,
            )),
        title: Text(
          "Search Products",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: greycolor.shade700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              maxRadius: 20,
              child: Image.asset(
                'assets/boy.png',
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: TextFormField(
                            controller: controller,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, color: blackcolor),
                            cursorColor: blackcolor,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: greycolor.shade700,
                                ),
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w700))),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/setting.png',
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    const StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 0.4,
                      child: Expanded(
                        child: Text(
                          "Found\n10 Results",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductScreen(
                                    plantname: 'Snake Plants',
                                    plantimg: 'assets/plant.png',
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/plant.png",
                                  ),
                                  const Text(
                                    "Snake Plants",
                                    style: TextStyle(
                                        color: blackcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: blackcolor,
                                          maxRadius: 18,
                                          child: Icon(
                                            Icons.favorite,
                                            color: whitecolor,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductScreen(
                                    plantname: 'Lucy Jade Plant',
                                    plantimg: 'assets/plant-pot.png',
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/plant-pot.png",
                                  ),
                                  const Text(
                                    "Lucy Jade Plant",
                                    style: TextStyle(
                                        color: blackcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: blackcolor,
                                          maxRadius: 18,
                                          child: Icon(
                                            Icons.favorite,
                                            color: whitecolor,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductScreen(
                                    plantname: 'Small Plants',
                                    plantimg: 'assets/botanic.png',
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/botanic.png",
                                  ),
                                  const Text(
                                    "Small Plants",
                                    style: TextStyle(
                                        color: blackcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: blackcolor,
                                          maxRadius: 18,
                                          child: Icon(
                                            Icons.favorite,
                                            color: whitecolor,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductScreen(
                                    plantname: 'Peperomia Plant',
                                    plantimg: 'assets/alocasia.png',
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/alocasia.png",
                                  ),
                                  const Text(
                                    "Peperomia Plant",
                                    style: TextStyle(
                                        color: blackcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: blackcolor,
                                          maxRadius: 18,
                                          child: Icon(
                                            Icons.favorite,
                                            color: whitecolor,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProductScreen(
                                    plantname: 'Boatanic Plant',
                                    plantimg: 'assets/plant.png',
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/plant.png",
                                  ),
                                  const Text(
                                    "Boatanic Plant",
                                    style: TextStyle(
                                        color: blackcolor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      CircleAvatar(
                                          backgroundColor: blackcolor,
                                          maxRadius: 18,
                                          child: Icon(
                                            Icons.favorite,
                                            color: whitecolor,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
