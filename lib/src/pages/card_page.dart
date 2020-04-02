import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),

      body: ListView(
        padding: EdgeInsets.all( 10.0 ),
        children: <Widget> [
          _getCard1(),
          SizedBox( height: 30.0 ),
          _getCard2(),
          SizedBox( height: 30.0 ),
          _getCard1(),
          SizedBox( height: 30.0 ),
          _getCard2(),
          SizedBox( height: 30.0 ),
          _getCard1(),
          SizedBox( height: 30.0 ),
          _getCard2(),
          SizedBox( height: 30.0 ),
          _getCard1(),
          SizedBox( height: 30.0 ),
          _getCard2(),
          SizedBox( height: 30.0 ),
          _getCard1(),
          SizedBox( height: 30.0 ),
          _getCard2(),
          SizedBox( height: 30.0 ),
        ]
      ),
    );
  }



  Widget _getCard1() {

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular( 10.0 )
      ),

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('Esto sería una descripción de la tarjeta, sería muy largo esto así que por eso escribo tanto'),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {}
              ),

              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {}
              ), 
            ],
          ),
        ],
      ),
    );

  }

  
  Widget _getCard2() {

    final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 400),
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Landscape'),
          )
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular( 20.0 ),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0
          )
        ]
      
      ),
      
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular( 20.0 ),
      ),
    );
  }

}