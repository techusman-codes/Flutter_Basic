import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Welcome to Flutter Bootcamp!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          

          child: Center(
            child: Text(
              'this is a long text that might overflow the available spacce in your UI layout',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              /*
              overflow : this means long text that need to be handdled properly.
              .ellipe: adds "........",
              .clip: "cuts off";
              .fade: fades out;
               */
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5, fontFamily: 'Roboto'),
            ),
          ),
          
        ),
        
      ),
    );
  }
}
