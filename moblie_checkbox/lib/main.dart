import 'package:flutter/material.dart';

void main() => runApp(MobileApp());
class MobileApp extends StatefulWidget {
  
  @override
  _MobileAppState createState() => _MobileAppState();
}
class _MobileAppState extends State<MobileApp> {
  Color _color;
  String _url = "";
  String _text = "";
  bool _isCheckbox = false;
  void change(bool value){
    setState(() {
      _isCheckbox = value;
      if(_isCheckbox){
        _text = "Checked";
        _color = Colors.pink;
        _url= "http://think360.in/iRestaurant/wp-content/uploads/2018/04/orange.jpg";
      }else{
        _text = "Unchecked";
        _color = Colors.orange;
        _url="https://i5.walmartimages.ca/images/Enlarge/094/514/6000200094514.jpg";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         backgroundColor: _color,
         title: Text("Check box"),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Container(
             child: CircleAvatar(
               backgroundImage: NetworkImage(_url),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                 Checkbox(
                     value: _isCheckbox,
                     onChanged: change,
                 ),
                Text("Are you Agree?", style: TextStyle(fontSize: 20),),
             ],
           ),
           Text(_text, style: TextStyle(fontSize: 20),),
         ],
       ),
      ),

    );
  }
}