import 'package:flutter/material.dart';
import 'package:flutter_assignment02/product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'contact.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Shop Home Page"),
        backgroundColor: Colors.black26,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("images/OIP.jpg", width: 60),
                Text(
                  "Welcome,Mr.Supakorn",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search for Cat",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Categories",style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).colorScheme.primary,
              fontFamily: GoogleFonts.aladin().fontFamily
            ),),
            Text("ประเภทแมว",style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.secondary
            ),),
            Card(
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).colorScheme.primary
                          ),
                          child: Icon(FontAwesomeIcons.cat,
                          color: Theme.of(context).colorScheme.onPrimary,),
                        ),
                        Text("แมวเปอร์เซีย")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).colorScheme.primary
                          ),
                          child: Icon(FontAwesomeIcons.cat,
                            color: Theme.of(context).colorScheme.onPrimary,),
                        ),
                        Text("แมวอเมริกัน ช็อตแฮร์")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).colorScheme.primary
                          ),
                          child: Icon(FontAwesomeIcons.cat,
                            color: Theme.of(context).colorScheme.onPrimary,),
                        ),
                        Text("แมวสายพันธุ์สฟิงซ์")
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context).colorScheme.primary
                          ),
                          child: Icon(FontAwesomeIcons.cat,
                            color: Theme.of(context).colorScheme.onPrimary,),
                        ),
                        Text("แมวบาหลี")
                      ],
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if(value==0){
            Get.to(HomePage());
          }
          if(value==1){
            Get.to(Product());
          }
          if(value==2){
            Get.to(Contact());
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Product"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Contact US",
          ),
        ],
      ),
    );
  }
}
