import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:track_travel/Admin/DrawerAdmin.dart';

import '../Drawer.dart';
import '../phone_login_two_type_user/login_splash.dart';
import 'driver_detail_by_admin.dart';
class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Admin"),
            actions: [
              new IconButton(onPressed: () async {
               // await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context
                  , MaterialPageRoute(builder: (_)=> LoginSplash()),
                );

              },
                  icon: Icon(Icons.logout)),
            ],
          ),
          drawer: NavigationDrawerWidgetAdmin(),
            body: SingleChildScrollView(
              child:
              Column(
                children: [
                   if (_selectedIndex == 0) ...[
            SizedBox(
            height: MediaQuery.of(context).size.height*0.82 ,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle,size: 40,),
                  title: Text("Driver Name"),
                  subtitle: Text("Gujrat"),
                  selectedTileColor:Colors.green[400],
                  onTap: () {

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle,size: 40,),
                  title: Text("Driver Name"),
                  subtitle: Text("Gujrat"),
                  selectedTileColor:Colors.green[400],
                  onTap: () {

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_circle,size: 40,),
                  title: Text("Driver Name"),
                  subtitle: Text("Gujrat"),
                  selectedTileColor:Colors.green[400],
                  onTap: () {

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                  },
                ),
              ),
            ],
          )
          //FirebaseAuth.instance.currentUser==null? SignIn():account(),
        ),
        ]
        else if (_selectedIndex == 1) ...[
                  SizedBox(
               height: MediaQuery.of(context).size.height *0.82,
                 width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.account_circle,size: 40,),
                        title: Text("Parent Name"),
                        subtitle: Text("Connect with Driver Name"),
                        selectedTileColor:Colors.green[400],
                        onTap: () {

                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                        },
                      ),
                    ),Card(
                      child: ListTile(
                        leading: Icon(Icons.account_circle,size: 40,),
                        title: Text("Parent Name"),
                        subtitle: Text("Connect with Driver Name"),
                        selectedTileColor:Colors.green[400],
                        onTap: () {

                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                        },
                      ),
                    ),Card(
                      child: ListTile(
                        leading: Icon(Icons.account_circle,size: 40,),
                        title: Text("Parent Name"),
                        subtitle: Text("Connect with Driver Name"),
                        selectedTileColor:Colors.green[400],
                        onTap: () {

                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => DriverDetailByAdmin()));
                        },
                      ),
                    ),

                  ],
                ),
          ),
              ]









                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Drivers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Parents',
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.settings_applications),
                //   label: 'Setting',
                // ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue,
              onTap: _onItemTapped,
            )
        ),



    );
  }
}
