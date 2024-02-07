import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Us',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mobile number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Student code',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
             SizedBox(height: 25.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Question',
                border: OutlineInputBorder(),
              ),
            ),
           ElevatedButton(
            child : const Text ( 'submmit') ,
              onPressed: () {
                Navigator . push (
context ,
MaterialPageRoute ( builder :
( context ) => const SecondRoute ()) ,
);
              }, 
            ),
           ],
      ),
        ),
    );
  }
}
class SecondRoute extends StatelessWidget {
const SecondRoute ({ Key ? key }) : super ( key : key );
@override
Widget build ( BuildContext context ) {
return Scaffold (
appBar : AppBar (
title : const Text ( 'Contact Us') ,
) ,
body : Center (
child : ElevatedButton (
onPressed : () {
Navigator . pop ( context );
// Navigate back to first route when tapped .
} ,
child : const Text ( 'Back Homepage!') ,
) ,
) ,
);
}
}