import 'package:flutter/material.dart';

import 'package:hotel_booking_ui/Module/Home/Home/Components/Hotpackages_item.dart';
import 'package:hotel_booking_ui/Module/Home/Home/Components/PopularHotels_item.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          //    padding: EdgeInsets.only(left: 26, right: 26, top: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                       Text(
                        "Hello Pragathesh",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                       Text(
                        "Find your hotel",
                        style: TextStyle(fontSize: 24, color: Colors.black87),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 42,
                    width:42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            "asset/images/user.jpg"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffEFEEEE),
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: Colors.grey,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8, 12),
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.2),
                      // spreadRadius: -2,
                    )
                  ],
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search for hotels…",
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    //suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                "Popular hotels",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           PopularHotels_item(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hot packages",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 11, 11),
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: (() {}),
                      child: const Text(
                        "View All",
                        style:
                            TextStyle(color: Color(0xff060B92), fontSize: 18),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            HotPakageItem()
          ],
        ),
      ),
    );
  }
}
