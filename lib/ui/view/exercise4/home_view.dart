import 'package:flutter/material.dart';
import 'extract_arguments_view.dart';
import 'pass_arguments_view.dart';
import 'screen_arguments_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: _generateNavigateButton(
                context,
                ExtractArgumentsScreen.routeName,
                'Go extracts screen',
                'Extract Screen',
                'This message is extracted in the build method.',
                Colors.green,
              ),
            ),
            _generateNavigateButton(
              context,
              PassArgumentsScreen.routeName,
              'Go pass screen',
              'Pass Screen',
              'This message is extracted in the onGenerateRoute function.',
              Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _generateNavigateButton(BuildContext context, String route,
      String btnName, String appBarName, String message, Color color) {
    return ElevatedButton(
      child: Text(btnName),
      onPressed: () {
        Navigator.pushNamed(
          context,
          route,
          arguments: ScreenArguments(
            appBarName,
            message,
          ),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
    );
  }
}
