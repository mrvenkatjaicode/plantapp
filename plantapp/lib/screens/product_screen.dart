import 'package:flutter/material.dart';
import 'package:plantapp/constants/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  final String plantname;
  final String plantimg;
  const ProductScreen(
      {super.key, required this.plantname, required this.plantimg});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<Widget> pagescrollwidgets = [
      Image.asset(
        widget.plantimg,
        errorBuilder: (context, error, stackTrace) {
          return Text(error.toString());
        },
      ),
      Image.asset(
        widget.plantimg,
        errorBuilder: (context, error, stackTrace) {
          return Text(error.toString());
        },
      ),
      Image.asset(
        widget.plantimg,
        errorBuilder: (context, error, stackTrace) {
          return Text(error.toString());
        },
      ),
    ];
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: blackcolor,
              )),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: PageView(
                    allowImplicitScrolling: true,
                    scrollDirection: Axis.vertical,
                    controller: controller,
                    children: pagescrollwidgets,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: pagescrollwidgets.length,
                          axisDirection: Axis.vertical,
                          effect: ExpandingDotsEffect(
                              dotHeight: 5,
                              dotWidth: 6,
                              activeDotColor: lightgreencolor,
                              dotColor: greycolor),
                        ),
                        const SizedBox(
                          width: 100,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.plantname,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Plants make your life with minimal and happy\nlove the plants more and enjoy life.",
                  style: TextStyle(height: 1.5),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: lightgreencolor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/height.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                              color: whitecolor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Height",
                              style: TextStyle(
                                  color: whitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "30cm - 40cm",
                              style: TextStyle(
                                  color: lightwhitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/thermometer.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                              color: whitecolor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Temparature",
                              style: TextStyle(
                                  color: whitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "20°C to 25°C",
                              style: TextStyle(
                                  color: lightwhitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/cactus.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                              color: whitecolor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Pot",
                              style: TextStyle(
                                  color: whitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ciramic Pot",
                              style: TextStyle(
                                  color: lightwhitecolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                                color: whitecolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "\$12.99",
                            style: TextStyle(
                                color: whitecolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: darkgreencolor,
                        ),
                        child: const Center(
                            child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: whitecolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
