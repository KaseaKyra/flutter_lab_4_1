import 'package:flutter/material.dart';

/// 1. Animate a widget across screens
import 'ui/view/exercise1/main_view.dart';

/// 2. Navigate to a new screen and back
import 'ui/view/exercise2/first_route.dart';

/// 3. Navigate with named routes
import 'ui/view/exercise3/first_view.dart';
import 'ui/view/exercise3/second_view.dart';

/// 4 Pass arguments to a named route
import 'ui/view/exercise4/extract_arguments_view.dart';
import 'ui/view/exercise4/home_view.dart';
import 'ui/view/exercise4/pass_arguments_view.dart';
import 'ui/view/exercise4/screen_arguments_model.dart';

/// 5. Return data from a screen
import 'ui/view/exercise5/home_data_view.dart';

/// 6. Send data to a new screen
import 'ui/view/exercise6/to_do_model.dart';
import 'ui/view/exercise6/to_dos_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',

      /// 1. Animate a widget across screens
      // home: MainScreen(),

      /// 2. Navigate to a new screen and back
      // home: FirstRoute(),

      /// 3. Navigate with named routes (require restart app to run)
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/second': (context) => SecondScreen(),
      // },

      /// 4 Pass arguments to a named route (require restart app to run)
      // home: HomeScreen(),
      // onGenerateRoute: (settings) {
      //   if (settings.name == PassArgumentsScreen.routeName) {
      //     final ScreenArguments args = settings.arguments;
      //
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return PassArgumentsScreen(
      //           title: args.title,
      //           message: args.message,
      //         );
      //       },
      //     );
      //   }
      //   assert(false, 'Need to implement ${settings.name}');
      //   return null;
      // },
      // routes: {
      //   ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      // },

      /// 5. Return data from a screen (require restart app to run)
      home: HomeDataScreen(),

      /// 6. Send data to a new screen
      // home: TodosScreen(
      //   todos: List.generate(
      //     20,
      //     (i) => Todo(
      //       'Todo $i',
      //       'A description of what needs to be done for Todo $i',
      //     ),
      //   ),
      // ),
    );
  }
}
