import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class card_ extends StatelessWidget {
  final String title1;
  final String title2;
  final String description;
  const card_({super.key, required this.title1, required this.title2, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:
       Color.fromARGB(255, 59, 55, 55),
      shape: BoxShape.rectangle,
     
     borderRadius: BorderRadius.all(Radius.circular(20)) ),
     padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      child:  Column( crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Row(
                            children: [
                              Image.asset('assets/images/circle.png',
                              height: 50,
                              width: 50,),
                              SizedBox(width: 100,),
                              Image.asset('assets/images/free.png',
                              height: 60,
                              width: 60,)
                            ],
                          ),
                           SizedBox(height: 10,),
                          Column(
                            
                            
                            children: [
                              Text(title1, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),)
                            ],
                          ),
                            Column(
                            children: [
                              Text(title2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),)
                            ],
                          ),
                          SizedBox(height: 5,),
                           Column(
                            children: [
                              Text(description, style: TextStyle( fontSize: 14, 
                              color: Colors.grey),)
                            ],
                          ),
                        ],

                      ),
    );
    
  }
}