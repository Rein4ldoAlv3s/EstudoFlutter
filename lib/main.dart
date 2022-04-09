import 'package:flutter/material.dart';

main(){
  runApp(AppWidget(
      title: 'Fluterando HU3',
  ));
}

// class AppWidget extends StatelessWidget{
//
//   final String title;
//
//   const AppWidget({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: Text(
//             title,
//             textDirection: TextDirection.ltr,
//             style: TextStyle(color: Colors.white, fontSize: 50.0),
//           ),
//       ),
//     );
//     throw UnimplementedError();
//   }
//
// }

class AppWidget extends StatelessWidget {

  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Container(
          child: Center(child: Text('Fluterando')),
      ),
    );
  }
}