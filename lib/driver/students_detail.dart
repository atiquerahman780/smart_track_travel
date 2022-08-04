import 'package:flutter/material.dart';
class StudentDetail extends StatefulWidget {
  const StudentDetail({Key? key}) : super(key: key);

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Student Detail"),
          ),
          body: Column(
            children: [
              Card(
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.width*0.20,
                    width: MediaQuery.of(context).size.width,
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Student Name",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("July Dues"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Home to School",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("Done",style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("03022301126",style: TextStyle(color: Colors.red),),

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ), Card(
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.width*0.20,
                    width: MediaQuery.of(context).size.width,
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Student Name",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("July Dues"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Home to School",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("Done",style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("03022301126",style: TextStyle(color: Colors.red),),

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ), Card(
                child: Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.width*0.20,
                    width: MediaQuery.of(context).size.width,
                    child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Student Name",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("July Dues"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Home to School",style: TextStyle(color: Colors.red),),
                                const Expanded(child: SizedBox()),
                                Text("Done",style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            Row(
                              children: [
                                Text("03022301126",style: TextStyle(color: Colors.red),),

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
        )
    );
  }
}
