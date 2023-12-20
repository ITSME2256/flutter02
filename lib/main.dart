import 'package:flutter/material.dart';
import 'package:flutter_assignment02/homepage.dart';
import 'package:get/get.dart';
// import 'package:flutter_assignment02/homepage.dart';
void main() {
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black26),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Image.asset("images/Cat.jpg",
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,),
                Text(
                  "My Cat Shop",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Love cat better than love you.",
                  style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){Get.off(HomePage());},
                    child: Text("Get Sterted",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


