import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'file:///E:/flutter%20projects/khedma_online_1/lib/stateless/custom_widget.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final heightQuery = MediaQuery.of(context).size.height;
    final widthQuery = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Stack(
          //fit: StackFit.loose,
          children: [
            PageView(
              controller: _pageController,
              children: [
                CustomWidget(
                  //  backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "حدد نوع الخدمه",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،',
                  image: 'assets/images/Maintenance-rafiki@3x.png',
                ),
                CustomWidget(
                  //      backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "اختار الوقت المناسب",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،  ',
                  image: 'assets/images/Time management-rafiki@3x.png',
                ),
                CustomWidget(
                  //    backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "الدفع عبر الانترنت",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،  ',
                  image: 'assets/images/Credit card-rafiki@3x.png',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: Colors.grey,
                      activeDotColor: HexColor("#6E8AD5"),
                    ),
                    onDotClicked: (index) => _pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInCubic),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInCubic);
                  },
                  child: Container(
                    height: heightQuery * .055,
                    width: widthQuery * .638,
                    //  padding: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      color: HexColor("#6E8AD5"),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'متابعة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
