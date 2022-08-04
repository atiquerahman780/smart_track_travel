import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Drawer.dart';
import '../phone_login_two_type_user/login_splash.dart';
import '../phone_login_two_type_user/login_type.dart';
import '../phone_login_two_type_user/setting1.dart';
import 'available_drivers.dart';
import 'google_map.dart';
class HomeParent extends StatefulWidget {

  const HomeParent({Key? key}) : super(key: key);

  @override
  State<HomeParent> createState() => _HomeParentState();
}

class _HomeParentState extends State<HomeParent> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        appBar: AppBar(title: Text("Driver Side"),
          actions: [
            new IconButton(onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.push(
                context
                , MaterialPageRoute(builder: (_)=> LoginSplash()),
              );

            },
                icon: Icon(Icons.logout)),
          ],
        ),
        drawer: NavigationDrawerWidget(),

          body: Container(
            // color: Colors.black12,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (_selectedIndex == 0) ...[

            Card(
            child: Column(
            children: [
                SizedBox(
                height: MediaQuery.of(context).size.width*0.02,
          ),
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
          Text("03024334546"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  print("llll");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => GooMap()));

                }, child: Text("Location")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  print("llll");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => GooMap()));

                }, child: Text("Leave Driver")),
              ),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.width*0.02,
          ),
            ],
            ),
            )

                  ]
                  else if (_selectedIndex == 1) ...[
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.82 ,
                      width: MediaQuery.of(context).size.width,
                      child:AvailableDriver(),
                      //FirebaseAuth.instance.currentUser==null? SignIn():account(),
                    ),
                  ]
                  else if (_selectedIndex == 2) ...[
                      SizedBox(
                        height: MediaQuery.of(context).size.height *0.82,
                        width: MediaQuery.of(context).size.width,
                        child: Setting1(),
                      ),
                    ]
                ],
              ),

            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,

            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.drive_eta_rounded),
                label: 'Drivers',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_applications),
                label: 'Setting',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          )
      ),
    );
  }
}
