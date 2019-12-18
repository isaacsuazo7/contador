
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
int conteo=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        backgroundColor: Color(0xFF002560),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks: ', style: TextStyle(fontSize: 30),),
              Text('$conteo', style: TextStyle(fontSize: 35),),
            ],
          )
        ),
        
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Hola Mundo');
            
          },

        ),
        backgroundColor: Colors.white
    );
  }
  
}