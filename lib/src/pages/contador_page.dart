import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{

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
        
        floatingActionButton: _crearBotones()
        
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reiniciar),
        Expanded(child: SizedBox(width: 5,)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 5,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar)
      ],
    );
    
    
  }
  void _agregar(){
     setState(()=>conteo=conteo+1);
  }
  void _restar(){
    setState(() {
      conteo=conteo-1;
    });
  }
  void _reiniciar(){
    setState(() {
      conteo=0;
    });
  }
}