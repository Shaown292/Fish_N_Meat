import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({Key? key}) : super(key: key);

  Future<void> customBottomSheet(BuildContext context){
      return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('GeeksforGeeks'),
                ],
              ),
            ),
          );
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
    
    // RaisedButton is deprecated and should not be used
    // Use ElevatedButton instead.

    // child: RaisedButton(
    //	 child: const Text('showModalBottomSheet'),
    //	 onPressed: () {

    //	 // when raised button is pressed
    //	 // we display showModalBottomSheet
    //	 showModalBottomSheet<void>(

    //		 // context and builder are
    //		 // required properties in this widget
    //		 context: context,
    //		 builder: (BuildContext context) {

    //		 // we set up a container inside which
    //		 // we create center column and display text
    //		 return Container(
    //			 height: 200,
    //			 child: Center(
    //			 child: Column(
    //				 mainAxisAlignment: MainAxisAlignment.center,
    //				 children: <Widget>[
    //				 const Text('GeeksforGeeks'),
    //				 ],
    //			 ),
    //			 ),
    //		 );
    //		 },
    //	 );
    //	 },
    // ),
  }

