
import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/Module/screens/Hotel.dart';

class HotPakageItem extends StatelessWidget {
  HotPakageItem({Key? key}) : super(key: key);
  List<Map> listOfPakages = [
    {
      "name": "The westin dhaka",
      "imageurl": "asset/images/derick-mckinney-PhA2QbE7h6c-unsplash.png",
      "country": "London"
    },
    {
      "name": "Platinum Grand",
      "imageurl":
          "asset/images/ialicante-mediterranean-homes-8_V45fGyWz4-unsplash.png",
      "country": "Paris"
    },
    {
      "name": "The westin dhaka",
      "imageurl": "asset/images/derick-mckinney-PhA2QbE7h6c-unsplash.png",
      "country": "Brasil"
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: ListView.builder(
        itemCount: listOfPakages.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(8, 12),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.2),
                  // spreadRadius: -2,
                )
              ],
            ),
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Image.asset(
                  "${listOfPakages[index]['imageurl']}",
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${listOfPakages[index]['name']}",
                      style: TextStyle(fontSize: 18, color: Colors.black
                          // ,fontWeight: FontWeight.bold
                          ),
                    ),
                    Row(
                      children: [
                        Image.asset("asset/images/place-1.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${listOfPakages[index]['country']}",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xffC1C1C1)),
                        ),
                      ],
                    ),
                    Text(
                      "\$180/night",
                      style: TextStyle(fontSize: 18, color: Color(0xff060B92)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Image.asset("asset/images/sports-car-2.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Image.asset("asset/images/bath-2.png"),
                        ),
                        Image.asset(
                            "asset/images/glass-and-bottle-of-wine-2.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Image.asset("asset/images/wifi-2.png"),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: (() {
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HotelScreen()),
  );
                  }),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff060B92),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(bottom: 10, right: 10, top: 10),
                    height: 105,
                    width: 47,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Center(
                            child: Text(
                          "Book now",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ))),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
