import 'package:flutter/material.dart';

import 'approve_request.dart';
class ParentRequest extends StatefulWidget {
  const ParentRequest({Key? key}) : super(key: key);

  @override
  State<ParentRequest> createState() => _ParentRequestState();
}

class _ParentRequestState extends State<ParentRequest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //backgroundColor: Colors.black26,
          appBar: AppBar(
            title: Text("Parent Requests"),
          ),
          body: Container(
            color: Colors.black12,
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    print("llll");
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => ApproveDisapproveRequest()));

                  },
                  child: Card(
                    child: Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.width*0.20,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("You have new Parent Requests ",style: TextStyle(color: Colors.red),),
                                    Text("to take child from home to School",style: TextStyle(color: Colors.red),),
                                    Text("in 7000 only per month",style: TextStyle(color: Colors.red),),
                                  ],
                                ),
                              ),

                              const Expanded(child: SizedBox()),
                              Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 25, 12, 0),
                                    child: Icon(Icons.arrow_forward),
                                  )
                              ),
                            ],

                          ),
                        )
                    ),
                  ),
                ),InkWell(
                  onTap: (){
                    print("llll");
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => ApproveDisapproveRequest()));

                  },
                  child: Card(
                    child: Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.width*0.20,
                        width: MediaQuery.of(context).size.width,
                        child:
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("You have new Parent Requests ",style: TextStyle(color: Colors.red),),
                                    Text("to take child from home to School",style: TextStyle(color: Colors.red),),
                                    Text("in 7000 only per month",style: TextStyle(color: Colors.red),),
                                  ],
                                ),
                              ),

                              const Expanded(child: SizedBox()),
                              Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 25, 12, 0),
                                    child: Icon(Icons.arrow_forward),
                                  )
                              ),
                            ],

                          ),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
