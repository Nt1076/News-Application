import 'package:flutter/material.dart';
import 'package:newsapp/pages/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("images/building.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.7,
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("News from all around the \n           world for you",style: TextStyle(
           color: Colors.black,
           fontSize: 22,
           fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 10,),
             Text("Best time to read, take your time to read \n               a little from this world",style: TextStyle(
           color: Colors.black,
           fontSize: 17,
           fontWeight: FontWeight.w400

            ),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Container(
                    
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text("Get Started",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}