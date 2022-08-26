import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Rock.jpeg'),
                      radius: 30),
                ),
                Text(
                  'Dwane Johnson',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child:
                  Image(image: AssetImage('assets/images/dwane johnson.webp')),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/Danielredcliff.jpeg'),
                      radius: 30),
                ),
                Text(
                  'Daniel Redcliff',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(image: AssetImage('assets/images/post_dani.jpeg')),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 30, left: 15, bottom: 30),
                  child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/stathm_post.jpeg'),
                      radius: 30),
                ),
                Text(
                  'Jason Stathm',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image(image: AssetImage('assets/images/stathm_post.jpeg')),
            )
          ],
        ),
      ),
    );
  }

  signout(BuildContext context) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context1) => ScreenLogin(),
        ),
        (route) => false);
  }
}
