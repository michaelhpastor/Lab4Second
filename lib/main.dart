import 'package:flutter/material.dart';
import 'package:apptool/pages/secondpage.dart';
import 'package:apptool/pages/maps.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tool Bar'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
              );
            }, 
            icon: Icon(Icons.add)),
          IconButton(onPressed: (){
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapSample()),
              );            
          }, icon: Icon(Icons.map))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              //color: Colors.amber,
              padding: EdgeInsets.fromLTRB(20,60,20,20),
              child:const Text(
                style: TextStyle(fontSize: 20),
                "Presiona + para crear una nueva \n            situacion anormal"
                ),
            )
          ],
        ),
      )
    );
  }
}
