import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'globals.dart';
import 'mobile/ios.dart';
import 'mobile/screen.dart';

void main() {
  runApp(
    const android(),
  );
}

class android extends StatefulWidget {
  const android({Key? key}) : super(key: key);

  @override
  State<android> createState() => _androidState();
}

class _androidState extends State<android> {
  @override
  Widget build(BuildContext context) {
    return (ios)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  "Setting UI",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: CupertinoSwitch(
                  activeColor: Colors.green,
                  value: ios,
                  onChanged: (val) {
                    setState(() {
                      ios = val;
                    });
                  },
                ),
                backgroundColor: Colors.redAccent,
              ),
              child: IOS(),
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Setting UI"),
                    Switch(
                      value: ios,
                      onChanged: (val) {
                        setState(() {
                          ios = val;
                        });
                      },
                    ),
                  ],
                ),
                backgroundColor: Colors.redAccent,
              ),
              body: Screen(),
            ),
          );
  }
}
