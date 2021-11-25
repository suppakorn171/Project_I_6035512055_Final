import 'package:my_project_I/Start.dart';
import 'package:my_project_I/json/constant.dart';
import 'package:my_project_I/theme/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      
    );  
  }
  
    Widget getBody(){
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(homeImg),fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 28,
                  ),
                  SizedBox(width: 15,),
                  Icon(
                    Feather.search,
                    color: Colors.pink,
                    size: 25,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Collection",style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                    Text("DISCOVER",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Icon(
                      Icons.arrow_forward_ios, 
                      color: grey,
                      size: 18,)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",style: TextStyle(
                        fontSize: 18,
                        color: black,
                        fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text("All",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,color:grey,size: 16,),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Container(
                width: 180,
                height: 220,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(categories[index]['imgUrl']),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              );
            })
          ),
        ),
        ActionChip(label: Text("Logout"), 
        onPressed: signOut,
          
        ),
      ],
    );
    
  }
}
