import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_project/food_details.dart';

class PlaceOrderInfoScreen extends StatelessWidget {
  const PlaceOrderInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarContainer(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.arrow_2_circlepath, color: Colors.green,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          child: Column(
                            children: const [
                              Text("We recycle and more plastic than used in our orders", style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Icon(CupertinoIcons.clear, color: Colors.black45,)
                  ],
                ),
              ),
              Container(
                height: 125,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DetailContainer(text1: "karnavati fast food", text2: 'Bairahwa, Bank road', showEnd: true,),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DetailContainer(text1: "I am ramesh, your delivery partner", text2: '',showEnd: true,),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26, //New
                      blurRadius: 0.25,
                      offset: Offset(0,5)
                  )
                ],
               ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.info),
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade400
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Pugadu rider will assign soon..loading animation", style: TextStyle(color:Colors.white, fontSize: 16),),
                    ),
                  )

                ],),
              ),

              Container(
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100
                ),
                child:Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.arrowtriangle_left_square_fill),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Vada Pav 1 x 100 = 100"),
                              Text("+1 more"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey.shade500,),
                      const Text("View order summary", style: TextStyle(fontSize: 16, color: Colors.red),)
                    ],
                  )
                ),
              ),

              Card(
                elevation: 10,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: Container(
                  child: Column(
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                            const Icon(CupertinoIcons.info),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Text("Hardik | 9800852309"),
                                  Text("add alternate contact ", style: TextStyle(color: Colors.red),),
                                ],
                              ),
                            )
                          ],),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.location),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Delivery Address",style: TextStyle(fontSize: 14),),
                                  Text("Bhairahwaha, gallamandi rupandehi map address", style: TextStyle(color: Colors.grey),),
                                  Text("Change address", style: TextStyle(color: Colors.red),),
                                ],
                              ),
                            )
                          ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.info),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Text("Need help & support?"),
                                  Text("call in pugau office", style: TextStyle(color: Colors.red),),
                                ],
                              ),
                            )
                          ],),
                      ),
                    ],
                  ),
                ),),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Row(
                  children: [
                    Icon(CupertinoIcons.circle_fill),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Do you like service ?"),
                          Text("Do rate us on playstore ?"),
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Not now",style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsScreen()));
                      },
                      child: Container(
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Rate pugau app",style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ),
                  ]

              ),)
            ],
          ),
        ),
      ),
    );
  }
}


class DetailContainer extends StatelessWidget {
  const DetailContainer({
    super.key, required this.text1, required this.text2, required this.showEnd,
  });
  final String text1;
  final String text2;
  final bool showEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, //New
              blurRadius: 0.25,
              offset: Offset(0,5)
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Icon(CupertinoIcons.location),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text("$text1",
                  style: TextStyle(fontWeight:FontWeight.w700, fontSize: 18),),
                 Text("${text2}"),
                Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  height: 25.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.blueAccent,
                  ),
                  child: Center(child: Text("Order is ready to pick up")),
                )
              ],
          ),),
        ),
        Visibility(
          visible: showEnd,
          child: Container(
            child: Column(
              children: const [
                CircleAvatar(child: Icon(CupertinoIcons.phone, color: Colors.red,),),
                CircleAvatar(child: Icon(CupertinoIcons.location, color: Colors.black26,),)
              ],
            ),
          ),
        )
      ],),
    );
  }
}

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.25,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
                 children: const [
                   Icon(CupertinoIcons.left_chevron),
                   Text("Karnavati fast food",style: TextStyle(fontSize: 18),)
                 ],
               ),
              const Text("Cancel Order:1:59",style: TextStyle(fontSize: 16 ),)
             ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("ORDER ID : 45875685482", style: TextStyle(fontSize: 18, color: Colors.white),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Order placed at 6.00 PM", style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent
                    ),
                    child: Column(
                      children:const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("PENDING",style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Food preparation will begin shortly", style: TextStyle(color:Colors.white, fontSize: 16),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
