import'package:flutter/material.dart';

class SecondPage extends StatelessWidget 
// биринчи беттен келген санды сактоо учун
{
final int receivedNumber;
const SecondPage ({ super.key, required this.receivedNumber});

@override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
     backgroundColor: Colors.white,
        title: const Text("Тапшырма 1"),
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
       centerTitle: true,
       
      ),
    body: Center(
      child: Container(
             
              padding: const EdgeInsets.symmetric(
              vertical: 15.0),
               width: double.infinity,
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 218, 218),
              border: Border.all(color:Color.fromARGB(255, 181, 182, 187)),
              borderRadius: BorderRadius.circular(20.0),
              ),
            child: Text( 'сан: ',
            textAlign: TextAlign.center,
             style: const TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
             ),
            ),
           
      ),
    ),
    );
   
  }
}