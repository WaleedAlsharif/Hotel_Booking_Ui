import 'package:flutter/material.dart';

class PopularHotels_item extends StatelessWidget {
  PopularHotels_item({
    Key? key,
  }) : super(key: key);
  List<Map> listOfHotels = [
    {
      "name": "Sultans dine",
      "imageurl": "asset/images/derick-mckinney-PhA2QbE7h6c-unsplash.png",
      "country": "London"
    },
    {
      "name": "Platinum Grand",
      "imageurl": "asset/images/apartment-bed-bedroom-1743229.png",
      "country": "Paris"
    },
    {
      "name": "Sultans dine",
      "imageurl": "asset/images/bed-bedroom-chair-707581.png",
      "country": "Brasil"
    },
    {
      "name": "Queen hotel",
      "imageurl": "asset/images/bedroom-hotels-interior-833045.png",
      "country": "Roma"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return
    ConstrainedBox(
      
              constraints: const BoxConstraints(
                //maxWidth: 140,
                maxHeight: 250),
              child: GridView.builder(
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4 / 3),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: listOfHotels.length,
                itemBuilder: (((context, index) =>  Padding(
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffEFEEEE),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(8, 10),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("${listOfHotels[index]['imageurl']}"),
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 10, bottom: 5, top: 5),
              child: Text(
                "${listOfHotels[index]['name']}",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 10, bottom: 5),
              child: Text(
                "${listOfHotels[index]['country']}",
                style: TextStyle(fontSize: 12, color: Color(0xffC1C1C1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "\$180/night",
                    style: TextStyle(fontSize: 16, color: Color(0xff060B92)),
                  ),
                  Row(
                    children: const [
                      Text(
                        "4.5",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff060B92)),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff060B92),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
                )),
              ),
            ); 
    
  }
}
