import 'package:flutter/material.dart';
import 'package:flutter_app2/app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter=0;
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),
            Container(height: 50),
            CustomSwitch(),

            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
        onChanged: (value) {
        AppController.instance.changeTheme();
        },);
  }
}
