import 'package:flutter/material.dart';
import 'package:plantapp/constants/const.dart';
import 'package:plantapp/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController controller = PageController();

  List<Widget> pagescrollwidgets = [
    Image.asset(
      "assets/plant-pot.png",
    ),
    Image.asset(
      "assets/plant.png",
    ),
    Image.asset(
      "assets/botanic.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homescreenbgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: PageView(
                allowImplicitScrolling: true,
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: pagescrollwidgets,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: pagescrollwidgets.length,
              effect: ExpandingDotsEffect(
                  dotHeight: 5,
                  dotWidth: 6,
                  activeDotColor: lightgreencolor,
                  dotColor: greycolor),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Enjoy your\n', style: TextStyle(fontSize: 36)),
                  TextSpan(text: 'Life with ', style: TextStyle(fontSize: 36)),
                  TextSpan(
                    text: 'Plants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
              child: const CircleAvatar(
                backgroundColor: lightgreencolor,
                maxRadius: 40,
                child: Icon(
                  Icons.arrow_forward,
                  color: whitecolor,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
