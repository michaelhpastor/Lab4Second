import 'package:flutter/material.dart';



class SecondPage extends StatelessWidget {

  const SecondPage({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(style: TextStyle(fontSize: 18),"Agregar nueva situacion anormal"),
        backgroundColor: Colors.green,
      ),
      body:SingleChildScrollView(
        child: OrientationBuilder( 
        builder: (context, orientation) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20,60,0,0),
              child: Text(
                style: TextStyle(
                  fontSize: 20
                ),
                "Fecha"
                )
              ),
            Container(
              padding: EdgeInsets.fromLTRB(20,4,20,30), 
              child: TextField()
              ),
              Container( 
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: Text(
                style: TextStyle(
                  fontSize: 20
                ),
                "Lugar",
                )
              ),
            Container(
              padding: EdgeInsets.fromLTRB(20,4,20,20), 
              child: TextField(maxLines: 1)
              ),
            Container(
              padding: EdgeInsets.fromLTRB(20,4,0,0),
              child: Text(
                style: TextStyle(
                  fontSize: 20
                ),
                "Descripción"
                )
              ),  
            Container(
              padding: EdgeInsets.fromLTRB(20,4,20,30), 
              child: TextField(maxLines: 5)
              ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: ElevatedButton(onPressed: () {
                final snackBar = SnackBar(
                backgroundColor: Colors.green,
                content: Text('Se ha enviado la situacion anormal'),
                duration: Duration(seconds: 2),
                );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Enviar")),
            )
          ],
         );
        },
       ),
      ),
    );
  }
}