import 'package:flutter/material.dart';
import 'package:flutter1/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) 

  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title:'jhgbb' ,),
      
       
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCoumter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( 
        backgroundColor: Colors.white,
        title: const Text("Тапшырма 1"),
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
       centerTitle: true,
       
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          InkWell(
            onTap: () {
              Navigator.push(context,
               MaterialPageRoute(builder:(context)=> SecondPage(receivedNumber: _counter),
               ),
               );
            },
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            padding: const EdgeInsets.symmetric(
            vertical: 15.0),
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 209, 218, 218),
            border: Border.all(color:Color.fromARGB(255, 181, 182, 187)),
            borderRadius: BorderRadius.circular(20.0)
            ),
             child: Text('Сан: $_counter',
             style: const TextStyle(fontSize: 20,
             fontWeight: FontWeight.bold,
             ),
             textAlign: TextAlign.center,
             )
            ),
           const SizedBox(height: 30),
         
          Row(   
              mainAxisAlignment:MainAxisAlignment.center,
         children: [ 
            FloatingActionButton(
              heroTag: 'subtractButton',
              onPressed: _decrementCoumter,
              tooltip: 'Кемитуу',
                backgroundColor: Colors.blue,
                
              child: const Icon(Icons.remove,size: 30,
              color: Colors.white,
              ),
              ),
              const SizedBox(width: 95),
            FloatingActionButton(
              heroTag: 'addButton',
              onPressed:_incrementCounter ,
              tooltip: 'Кошуу',
                backgroundColor: Colors.blue,
              child: const Icon(Icons.add,size: 30,
              color: Colors.white
              ),
              ),
                
           
            ],
          )
        ],
      ),        
    );
    
  }
}
