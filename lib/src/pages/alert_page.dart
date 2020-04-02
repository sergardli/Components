import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.keyboard_backspace ),
        onPressed: () => Navigator.pop(context)
      ),
    
      body: Center(
        child: RaisedButton(
          child: Text( 'Mostrar alerta' ),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        
          onPressed: () => _showAlert(context),
        ),
      ),
    );
  }



  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular( 10.0 )
            ),
            
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la alerta'),
              SizedBox( height: 25.0 ),
              FlutterLogo( size: 100 ),
            ],
          ),

          actions: <Widget>[
            FlatButton(child: Text('Cancelar'), onPressed: () => Navigator.of(context).pop()),
            FlatButton(child: Text('Ok'), onPressed: () => Navigator.of(context).pop()),            
          ],
        );
      },
    );
  }
}