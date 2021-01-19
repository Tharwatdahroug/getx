import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'second.dart';

class Home extends StatelessWidget {
  goToNext() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
    navigator.push(MaterialPageRoute(builder: (context) => Second()));
    // Get.to(Second());
  }

  _showSnackBar() {
    Get.snackbar(
      "Getx is Awesome",
      'Youe Should try it',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  _showDialog() {
    Get.defaultDialog(
      title: "Easy Dialog",
      content: Text("This is too easy"),
    );
  }

  _showBottomSheet() {
    Get.bottomSheet(Container(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Text("Look How Easy"),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Package | Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Go To Second"),
              onPressed: () => goToNext(),
            ),
            RaisedButton(
              child: Text("Snackbar"),
              onPressed: () => _showSnackBar(),
            ),
            RaisedButton(
              child: Text("Dialog"),
              onPressed: () => _showDialog(),
            ),
            RaisedButton(
              child: Text("Bottom Sheet"),
              onPressed: () => _showBottomSheet(),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                child: Text("Name Route: /second"),
                onPressed: () {
                  Get.toNamed('second');
                })
          ],
        ),
      ),
    );
  }
}
