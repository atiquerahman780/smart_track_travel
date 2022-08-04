import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:track_travel/parent/home_parent.dart';
import 'package:track_travel/phone_login_two_type_user/check_type.dart';

import '../driver/driver_profile.dart';
import '../driver/home_driver.dart';

class LoginType extends StatefulWidget {
  const LoginType({Key? key}) : super(key: key);

  @override
  State<LoginType> createState() => _LoginTypeState();

}
final FirebaseAuth auth = FirebaseAuth.instance;
void inputData() {
  final User? user = auth.currentUser;
  final uid = user?.uid;
  String? l =uid;
  q.r=l!;
}

class _LoginTypeState extends State<LoginType> {
  late DatabaseReference _reference;
  void initState() {
    // TODO: implement initState
    super.initState();
    _reference =FirebaseDatabase.instance.reference().child('LoginType');
  }
  @override
  Widget build(BuildContext context) {
    inputData();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width,
              ),
              Card(
                //color: Colors.cyanAccent,
                child: SizedBox(
                  height: MediaQuery.of(context).size.width*0.30,
                  width: MediaQuery.of(context).size.width*0.30,
                  child:Image.asset('assets/images/stlogo.jpeg'),
                ),
              ),
              const Text("Smart Track",style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
                //fontWeight: FontWeight.bold,
              ),),
              const Text("& Travel",style: TextStyle(
                  fontSize: 13,
                  //fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Login Type",style: TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.yellow,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(200, 50), //////// HERE
                  ),
                  onPressed: () async {
                    String uid = q.r+"Driver";
                   // String loginType = "Driver";
                    String key = _reference.push().key as String;
                    Map<String,String> products={
                      'uid' :uid,
                    };
                    _reference.child(q.r).set(products).then((value) {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (context) => DriverProfile(data: q.r)));
                    });
                  },
                  child: const Text("Continue as Driver",
                    style: TextStyle(fontSize: 17, color: Colors.white),),
                ),
              ),Padding(
                padding: const EdgeInsets.all(0.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.yellow,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(200, 50), //////// HERE
                  ),
                  onPressed: () async {
                    String uid = q.r+"Parent";
                    String key = _reference.push().key as String;
                    Map<String,String> products={
                      'uid' :uid,
                    };
                    _reference.child(q.r).set(products).then((value) {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (context) => HomeParent()));
                    });
                  },
                  child: const Text("Continue as Parent",
                    style: TextStyle(fontSize: 17, color: Colors.white),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

  class q{
  static String r='';
  }
