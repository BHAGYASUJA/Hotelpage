import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:HotelDetails(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Align(alignment: Alignment.topLeft,
          child:AppBar(
            backgroundColor:Colors.transparent,
            elevation: 0,
          ),
          ),
          Image.asset("assets/images/ph.jpeg",fit: BoxFit.cover),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                const Text("Crown Plaza \n Kochi Kerala" ,style: TextStyle(color: Colors.white,fontSize: 28),),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16,),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text("8.4/85 reviews"),
                    ),
                    Spacer(),
                    IconButton(color: Colors.white, icon: const Icon(Icons.favorite_outlined), onPressed: () {  },)
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.purple,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.purple,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.purple,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.purple,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.purple,
                                  ),
                                ],
                              ),
                              const Text.rich(
                                TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                        Icons.location_on,
                                        size: 16.0,
                                        color: Colors.grey,
                                      )),
                                  TextSpan(text: "8 km to LuluMall")
                                ]),
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.0),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "\$200",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              const Text(
                                "/per night",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0)),
                                    backgroundColor: Colors.purple,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                      horizontal: 32.0,
                                    ),
                                  ),
                                  child: const Text(
                                    "Book Now",
                                    style: TextStyle(fontWeight: FontWeight.normal),
                                  ),
                                  onPressed: () {},
                                ),
                              ),

                              Text(
                                "Description".toUpperCase(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14.0),
                              ),

                              Text(
                                "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione architecto autem quasi nisi iusto eius ex dolorum velit! Atque, veniam! Atque incidunt laudantium eveniet sint quod harum facere numquam molestias?",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 14.0),
                              ),


                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                "DETAIL",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          )

        ],
      ),
    );
  }
}
