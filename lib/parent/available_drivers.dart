import 'package:flutter/material.dart';
class AvailableDriver extends StatefulWidget {
  const AvailableDriver({Key? key}) : super(key: key);

  @override
  State<AvailableDriver> createState() => _AvailableDriverState();
}

class _AvailableDriverState extends State<AvailableDriver> {
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*0.17,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      color: Colors.white60,
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10.0)
                            ),
                          ),
                          child:
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Center(
                                  child: Icon(Icons.search,color: Colors.blue,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Center(
                                  child:
                                  Text('Search Destination',style: TextStyle(color: Colors.blue)),
                                ),
                              ),


                            ],
                          )
                      ),
                    ),
                  )
              ),
            ),
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width*0.25,
                    child: Container(
                      //height: MediaQuery.of(context).size.width*0.25,
                      alignment: const Alignment(0.0,2.5),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(Icons.person,size: 80,color: Colors.black12,),
                        radius: 60.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" Driver Name ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.02,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          child: Column(
                            children: [
                              Text("Reserve Seats",style: TextStyle(),),
                              Text("4",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Vehicle No.",style: TextStyle(),),
                              Text("LE 7055",style: TextStyle(),),

                            ],
                          ),
                        ),
                      ),Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          child: Column(
                            children: [
                              Text("Available Seats",style: TextStyle(),),
                              Text("3",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Color",style: TextStyle(),),
                              Text("Red",style: TextStyle(),),

                            ],
                          ),
                          //child: T,
                        ),
                      ),
                      Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          //child: T,
                          child: Column(
                            children: [
                              Text("Total Seats",style: TextStyle(),),
                              Text("7",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Dues",style: TextStyle(),),
                              Text("7000",style: TextStyle(),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                    child: Container(
                        color: Colors.blue,
                        height: MediaQuery.of(context).size.width*0.08,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 6, 0, 0),
                          child: Text("Route",style: TextStyle(color: Colors.white),),
                        )
                    ),
                  ),
                  Card(
                    elevation: 8,
                    child: Container(
                      //color: Colors.blue,
                        height: MediaQuery.of(context).size.width*0.222,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8,8, 0),
                          child: Text("Johar Town Block A, Block B, Block D,Block E, Block F, Block G To University of Punjab"
                            ,style: TextStyle(),),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),ElevatedButton(onPressed: (){}, child: Text("Send Request"))
                ],
              ),
            ),Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width*0.25,
                    child: Container(
                      //height: MediaQuery.of(context).size.width*0.25,
                      alignment: const Alignment(0.0,2.5),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(Icons.person,size: 80,color: Colors.black12,),
                        radius: 60.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(" Driver Name ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.02,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          child: Column(
                            children: [
                              Text("Reserve Seats",style: TextStyle(),),
                              Text("4",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Vehicle No.",style: TextStyle(),),
                              Text("LE 7055",style: TextStyle(),),

                            ],
                          ),
                        ),
                      ),Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          child: Column(
                            children: [
                              Text("Available Seats",style: TextStyle(),),
                              Text("3",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Color",style: TextStyle(),),
                              Text("Red",style: TextStyle(),),

                            ],
                          ),
                          //child: T,
                        ),
                      ),
                      Card(
                        elevation: 8,
                        child: Container(
                          //color: Colors.blue,
                          height: MediaQuery.of(context).size.width*0.25,
                          width: MediaQuery.of(context).size.width*0.30,
                          //child: T,
                          child: Column(
                            children: [
                              Text("Total Seats",style: TextStyle(),),
                              Text("7",style: TextStyle(),),
                              SizedBox(
                                height: MediaQuery.of(context).size.width*0.02,
                              ),
                              Text("Dues",style: TextStyle(),),
                              Text("7000",style: TextStyle(),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                    child: Container(
                        color: Colors.blue,
                        height: MediaQuery.of(context).size.width*0.08,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 6, 0, 0),
                          child: Text("Route",style: TextStyle(color: Colors.white),),
                        )
                    ),
                  ),
                  Card(
                    elevation: 8,
                    child: Container(
                      //color: Colors.blue,
                        height: MediaQuery.of(context).size.width*0.222,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8,8, 0),
                          child: Text("Johar Town Block A, Block B, Block D,Block E, Block F, Block G To University of Punjab"
                            ,style: TextStyle(),),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),ElevatedButton(onPressed: (){}, child: Text("Send Request"))
                ],
              ),
            ),



          ],
        ),
      );

  }
}
