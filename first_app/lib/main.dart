// Flutter code sample for material.RaisedButton.1

// This sample shows how to render a disabled RaisedButton, an enabled RaisedButton
// and lastly a RaisedButton with gradient background.
//
// ![Three raised buttons, one enabled, another disabled, and the last one
// styled with a blue gradient background](https://flutter.github.io/assets-for-api-docs/assets/material/raised_button.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

      Ink(
      decoration: ShapeDecoration(
        color: Colors.lightBlue,
        shape: CircleBorder(),
      ),

            child :IconButton(
            icon: Icon(Icons.android),
            color: Colors.white,
            iconSize: 40.0,
            highlightColor: Colors.red,
            alignment: Alignment.center,

            onPressed: () {
              print("Icon Button!");
            },
          ),
        ),
          const SizedBox(height: 30),

          RaisedButton(
            onPressed: ({hoverElevation : 100.0,}) {},

            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height : 50.0,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
              const Text('Raised Button', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}