import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum PriceStyle { $189, $389 }

class FoodDetailsScreen extends StatelessWidget {
  FoodDetailsScreen({Key? key}) : super(key: key);



  static PriceStyle? price ;


@override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                        Icon(Icons.arrow_back_rounded),
                        Text("Hoichoi restraunt", style: TextStyle(fontSize: 18, color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Icon(Icons.menu)
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Container(
                            width: MediaQuery.of(context).size.width*0.70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:const [
                                    Expanded(child: TagChips(text: 'BESTSELLER', isSelected:true,)),
                                    Expanded(child: TagChips(text: 'MUSTTRYIT', isSelected:true,)),
                                    Expanded(child: TagChips(text: 'HALALAPRODUCTS', isSelected:true,)),
                                  ],
                                ),
                                Text("Dessert,Pizzaa,Fast Food"),
                                Text("Kolkata, West Bengal"),
                                BelowInfoData(),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                    Icon(CupertinoIcons.time,),
                                    Text("30 mins"),
                                    Icon(CupertinoIcons.car_fill,),
                                    Text("Free Delivery")
                                  ],),
                                )
                              ],
                            ),
                          ),
                          ReviewCard(),

                        ],
                      ),
                    ],
                  ),
                ) ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                      decoration:BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(5.0)
                       ),
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Center(child: Text("Veg", style: const TextStyle(fontSize:10, color: Colors.black),)),
                      ),
                     ),
                      Container(
                        decoration:BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text("Non Veg", style: const TextStyle(fontSize:10, color: Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration:BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.search),
                        Text("Search Menu")
                      ],
                    ),
                  )
              ],),
              const AddOnList()

            ],
          ),
        ),
      ),
    );
  }
}

class AddOnList extends StatelessWidget {
  const AddOnList({
    super.key,
  });

  get price => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.65,
      child: ListView.builder(
         scrollDirection: Axis.vertical,
         physics: const AlwaysScrollableScrollPhysics(),
         shrinkWrap: true,
          itemCount: 12,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height*0.50,
                      child: Column(
                        children: [
                          Container(
                            child: const Icon(Icons.clear, size: 35,),
                            height: 25,
                          ),
                          SizedBox(height: 25,),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25)),
                                color: Colors.white
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(28.0),
                                  child: Column(
                                    children: [
                                     Container(
                                       width: MediaQuery.of(context).size.width*0.85,
                                       height: MediaQuery.of(context).size.height*0.25,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20.0),
                                           color: Colors.grey
                                       ),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Row(
                                         children: [
                                           Icon(CupertinoIcons.dot_square, color: Colors.red,),
                                           SizedBox(height: 25,),
                                           Container(
                                             height: 30,
                                             decoration: BoxDecoration(
                                                 color: Colors.red.shade200,
                                                 borderRadius: BorderRadius.circular(5.0),
                                             ),
                                             child: Row(
                                               children: const [
                                                 Text("BESTSELLER", style: TextStyle(color: Colors.black),)
                                               ],
                                               mainAxisAlignment: MainAxisAlignment.center,
                                             ),
                                           )
                                         ],
                                       ),
                                     ),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text("Roasted Chicken"),
                                         Text("Something about food this is that and ok ofcourse and again abouit you")
                                       ],
                                     ) ,


                                    ],
                                  ),
                                )
                              ],
                            ),)
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: const [
                            Text("Regular Sandwich"),
                            SizedBox(height: 40,),
                            Text("180/plate"),
                            Text("With tauter sauce")
                           ]
                        ),
                      ),

                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey
                            ),
                            width: 80,
                            height: 80,
                          ),
                          Positioned(
                            left:10,
                            right:5,
                            bottom:-20,
                            child: InkWell(
                              onTap: (){
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (BuildContext context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height*0.50,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: const Icon(Icons.clear, size: 35,),
                                          height: 25,
                                        ),
                                        SizedBox(height: 25,),
                                        Container(
                                          decoration: const BoxDecoration(
                                           borderRadius: BorderRadius.only(
                                               topRight: Radius.circular(25),
                                               topLeft: Radius.circular(25)),
                                            color: Colors.white
                                        ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(28.0),
                                              child: Column(
                                                children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text("Quantity"),
                                                            Text("Select any product")
                                                          ],
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                        ),
                                                        Container(
                                                          width: 70,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(5.0),
                                                              border: const Border(
                                                                  top: BorderSide(width: 1.0, color: Colors.orange),
                                                                  bottom:BorderSide(width: 1.0,color: Colors.orange),
                                                                  left: BorderSide(width: 1.0,color: Colors.orange),
                                                                  right: BorderSide(width: 1.0,color: Colors.orange)
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: const [
                                                              Text("Required", style: TextStyle(color: Colors.black),)
                                                            ],
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const RadioStateFulWidget(
                                                      priceStyle: PriceStyle.$189,
                                                      text: "Half[3 pieces]",
                                                      halfPrice: "\$189",
                                                    ),
                                                    const RadioStateFulWidget(
                                                      priceStyle: PriceStyle.$389,
                                                      text: "Full[3 pieces]",
                                                      halfPrice: "\$389",
                                                    ),
                                                    TextFormField(
                                                      maxLines: 3,
                                                      decoration: const InputDecoration(
                                                         border:  OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                color: Colors.red,
                                                                width: 5.0),
                                                                )
                                                         )
                                                      ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Container(
                                                            width:MediaQuery.of(context).size.width*0.35,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(5.0),
                                                                border: const Border(
                                                                    top: BorderSide(width: 1.0, color: Colors.red),
                                                                    bottom:BorderSide(width: 1.0,color: Colors.red),
                                                                    left: BorderSide(width: 1.0,color: Colors.red),
                                                                    right: BorderSide(width: 1.0,color: Colors.red)
                                                                )
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.add, color: Colors.red,),
                                                                Text("1", style: TextStyle(color: Colors.black),),
                                                                Icon(Icons.remove, color: Colors.red,),
                                                              ],
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                            ),
                                                          ),

                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.35,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                color: Colors.red,
                                                                borderRadius: BorderRadius.circular(5.0),
                                                            ),
                                                            child: Center(child: Text("Add Item \$189", style: TextStyle(color: Colors.white),)),
                                                          )
                                                      ],),
                                                    )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),)
                                      ],
                                    ),
                                  );
                                });
                              },
                              child: Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: const Border(
                                        top: BorderSide(width: 1.0),
                                        bottom:BorderSide(width: 1.0),
                                        left: BorderSide(width: 1.0),
                                        right: BorderSide(width: 1.0)
                                    )
                                ),
                                child: Row(
                                  children: const [
                                    Icon(CupertinoIcons.add, size: 20, color: Colors.red,),
                                    Text("Add", style: TextStyle(color: Colors.red),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                 Padding(
                    padding: EdgeInsets.only(top:MediaQuery.of(context).size.width*0.08),
                    child: Divider(thickness: 1.0,),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class RadioStateFulWidget extends StatefulWidget {
  const RadioStateFulWidget({Key? key, required this.priceStyle, required this.text, required this.halfPrice}) : super(key: key);
  final PriceStyle priceStyle;
  final String text;
  final String halfPrice;

  @override
  _RadioStateFulWidgetState createState() => _RadioStateFulWidgetState();
}

class _RadioStateFulWidgetState extends State<RadioStateFulWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(widget.text),
      Row(
        children: [
          Text(widget.halfPrice),
          Radio(
            value: widget.priceStyle,
            groupValue: FoodDetailsScreen.price,
            onChanged: (PriceStyle? value) {
              setState(() {
                FoodDetailsScreen.price = value!;
              });
            },
          ),
        ],
      ),
    ],);
  }
}



class CommonModalRow extends StatelessWidget {
  const CommonModalRow({
    super.key, required this.one, required this.two,
  });
  final Widget one;
  final Widget two;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [one, two],
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.20,
          decoration: const BoxDecoration(color:Colors.green,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("4.3", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                Icon(CupertinoIcons.star, color: Colors.white)
              ],
            ),
          ),
        ),
        Card(
          elevation: 10,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)
          )),
          child: Container(
            width: MediaQuery.of(context).size.width*0.20,
              decoration: const BoxDecoration(color:Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)
                  ),
              ),
              child: Column(
                children: const [
                  Text("200",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  Text("Reviews",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                ],
              )
          ),
        )
      ],
    );
  }
}

class BelowInfoData extends StatelessWidget {
  const BelowInfoData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
            Container(
              decoration:BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(3.0)
              ),
              width: MediaQuery.of(context).size.width*0.25,
              height: MediaQuery.of(context).size.width*0.08,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text("Open orders", style: TextStyle(fontSize:12, color: Colors.white),)),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(child: const Text("Opening hours | 1:30pm - 8:00pm")),
      ],),
    );
  }
}

class TagChips extends StatelessWidget {
  final String text;
  final bool isSelected;
  const TagChips({
    super.key, required this.text, required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child:Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration:BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(2.0)
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(text, style: const TextStyle(fontSize:10, color: Colors.white),)),
          ),
        ),
      )
    );
  }
}
