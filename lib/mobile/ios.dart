import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_screen_pr1/globals.dart';

class IOS extends StatefulWidget {
  const IOS({Key? key}) : super(key: key);

  @override
  State<IOS> createState() => _IOSState();
}

class _IOSState extends State<IOS> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Common",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.language,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Language",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "English",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.cloud,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Environment",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "Production",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black45,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Text(
                            "Account",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.phone,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 17),
                            const Text(
                              "Phone number",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.mail_solid,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.login_outlined,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Sign out",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Text(
                            "Security",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phonelink_lock_outlined,
                              size: 30,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 17),
                            const Text(
                              "Lock app in background",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              activeColor: Colors.redAccent,
                              value: lock,
                              onChanged: (val) {
                                setState(() {
                                  lock = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.fingerprint,
                              size: 30,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 17),
                            const Text(
                              "Use fingerprint",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              activeColor: Colors.redAccent,
                              value: finger,
                              onChanged: (val) {
                                setState(() {
                                  finger = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.lock_fill,
                              size: 30,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 17),
                            const Text(
                              "Change password",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              activeColor: Colors.redAccent,
                              value: screen_pass,
                              onChanged: (val) {
                                setState(() {
                                  screen_pass = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Text(
                            "Misc",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.app_badge_fill,
                              size: 25,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Terms of Service",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.arrow_up_doc_fill,
                              size: 25,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Open source licenses",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
