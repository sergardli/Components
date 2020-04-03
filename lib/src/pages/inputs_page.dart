import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs de texto"),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: <Widget>[
          _createInputs(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  _createInputs() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text("Letras ${_name.length}"),
        hintText: "Nombre de la persona",
        labelText: "Nombre",
        helperText: "Solo es el nombre",
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_balance ),
        

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 10.0 ),
        ),
      ),

      onChanged: (value) { 
        setState(() {
          _name = value;
        });

      } 




    );
  
}


  Widget _createPerson() {

    return ListTile(
      title: Text("Mi nombre es $_name"),
    );
  }
}