import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
import 'package:hotel_booking_ui/Module/Home/HomePage.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  
  PageController? _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 351,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 351,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "asset/images/valeriia-bugaiova-_pPHgeHz1uk-unsplash.png"))),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                Transform.translate(
                  offset: Offset(0, 300),
                  child: PageViewIndicator(
                    otherSize: 8,
                    currentSize: 10,
                    length: 3,
                    currentIndex: currentIndex,
                    currentColor: Colors.white,
                    otherColor: Color.fromARGB(255, 205, 202, 202),
                  ),
                ),
                Positioned(
                  top: 44,
                  left: 20,
                  child: InkWell(
                    onTap: (() => Navigator.pop(context)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 27,
                      width: 27,
                      child: const Center(child: Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Platinum Grand",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                const Text(
                  "Tokyo square, Japan -",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    "show in map",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              """This upscale, contemporary hotel is 2 km from Hazrat Shahjalal 
International Airport and 11 km from Jatiyo Sangsad Bhaban, 
the Bangladesh Parliament complex.""",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const[
                    Text("Price"),
                    Text("120\$"),
                  ],
                ),
                Column(
                  children: [
                    Text("Reviews"),
                    Row(
                      children: [
                        Text("4.5"),
                        Image.asset("asset/images/star-4.png"),
                        Image.asset("asset/images/star-4.png"),
                        Image.asset("asset/images/star-4.png"),
                        Image.asset("asset/images/star-4.png"),
                        Image.asset(
                          "asset/images/star-8.png",
                          color: Color.fromARGB(255, 3, 43, 75),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Recently booked"),
                    Container(
                      height: 20,
                      width: 20,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomAminiti(
                    title: "Parking",
                    imageurl: "asset/images/sports-car-2.png"),
                CustomAminiti(
                    title: "Bath", imageurl: "asset/images/bath-2.png"),
                CustomAminiti(
                    title: "wifi", imageurl: "asset/images/wifi-2.png"),
                CustomAminiti(
                    title: "Bar",
                    imageurl: "asset/images/glass-and-bottle-of-wine-2.png"),
                CustomAminiti(
                    title: "Gym", imageurl: "asset/images/Clocks_1_.png"),
                CustomAminiti(
                    title: "More",
                    imageurl: "asset/images/glass-and-bottle-of-wine-2.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(8, 12),
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.2),
                          // spreadRadius: -2,
                        )
                      ],
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage("asset/images/heart.png"),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: InkWell(
                    onTap: (() {
                      
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff060B92),
                          borderRadius: BorderRadius.circular(10)),
                      height: 55,
                      width: 250,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAminiti extends StatelessWidget {
  const CustomAminiti({
    Key? key,
    required this.title,
    required this.imageurl,
  }) : super(key: key);
  final String title;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(8, 12),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.2),
                  // spreadRadius: -2,
                )
              ],
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(imageurl),
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
