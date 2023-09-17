import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(
            width: 130,
            height: 130,
            margin: EdgeInsets.only(
              top: 50,
            ),
            child: Image.network("https://cdn-icons-png.flaticon.com/512/5087/5087579.png"),
            //Image.asset("image.avif")
          ),

          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Sigin in",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
                )
              ),
          
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Name or Email Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                  )
                )
              ),

            ),
          ),

          Container(
            
            margin: EdgeInsets.all(20),
            child: TextFormField(
              maxLines: 3,
              
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                labelText: "Enter Password",
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)
                  )
                )
              ),

            ),
          ),

          Container(
            width: 450,
            height: 45,
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            //padding: EdgeInsets.all(30),


            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                colors:[
                   Colors.deepPurple.shade400,
                   Colors.deepPurple.shade200
                   ],

              ),
              color: Colors.deepPurple.shade300
            ),


            
             child: Text(
              "Click Me",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              
              
              
          ),

            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Create An Account",
                style: TextStyle(
                  color: Colors.blue
                ),
                )
              ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Rest Password",
                style: TextStyle(
                  color: Colors.blue
                ),
                )
              ),


          


        ],
      ),
    );
  }
}