import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    ); //Fin MaterialApp
  } //Fin de widget
} //fin de MyifApp

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() {
    return _InicioState();
  }
} //Fin Statefulwidget

class _InicioState extends State<Inicio> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitud de empleo'),
      ), //fin de App Bar

      body: Padding(
        padding: const EdgeInsets.all(3), //pading del body espacio blanco

        child: Container(
          height: 556,
          width: 500,
          padding: const EdgeInsets.all(3), //pading del body espacio blanco

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 175,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/derekmag/Mis_imagenes/main/logo.jpg'), alignment: Alignment.topCenter),
                  border: Border.all(), //fin de border
                ), //fin de el decoration box
              ), //fin de el container

              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                width: 500,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre completo',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container

              Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                width: 500,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo ',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                width: 500,

                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'RFC',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                      ), //fin de border side
                    ), //fin de enable border
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.amber,
                        width: 3.0,
                      ), //fin de bordersize
                    ), //fin de outlineInput border
                  ), //fin de inputdecoration
                ), //fin de TextField
              ), //fin de container grupo especialidad

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                width: 500,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Telefono',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                            ), //fin de border side
                          ), //fin de enable border
                          //! Change the Focused Border
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3.0,
                            ), //fin de bordersize
                          ), //fin de outlineInput border
                        ), //fin de inputdecoration
                      ), //fin de TextField
                    ),
                    SizedBox(width: 16),
                    new DropdownButton<String>(
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text('Sucursal donde desea trabajar'),
                      value: _value,
                    ), //fin de dropdown
                  ], //fin de widget
                ), //fin de row
              ), //fin de container

              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 1, bottom: 1),
                width: 500,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.greenAccent,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Log in",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    new Flexible(
                      child: RaisedButton(
                        color: Colors.greenAccent,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          ;
                        },
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "Sign up",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //fin de widget
                ), //fin de row
              ), //fin de container colores
            ], //fin de widget2[]
          ), //fin de column
        ), //child container
      ), //fin de body padding
    ); //Fin Scaffold
  } //Fin de Widget
} //Fin _InicioState
