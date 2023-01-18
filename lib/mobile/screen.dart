import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_screen_pr1/globals.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "common",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(Icons.language),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Language",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.cloud_outlined),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Environment",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Production",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Account",
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Icon(Icons.call),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Phone number",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(Icons.email_outlined),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(Icons.logout),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Sign out",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Security",
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.phonelink_lock,
                  size: 30,
                ),
                const SizedBox(width: 20),
                const Text(
                  "Lock app in background",
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Switch(
                    activeColor: Colors.red,
                    value: lock,
                    onChanged: (val) {
                      setState(() {
                        lock = val;
                      });
                    }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.fingerprint),
                const SizedBox(width: 20),
                const Text(
                  "Use fingerprint",
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Switch(
                  activeColor: Colors.red,
                  value: finger,
                  onChanged: (val) {
                    setState(() {
                      finger = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.lock),
                const SizedBox(width: 20),
                const Text(
                  "Change password",
                  style: TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Switch(
                  activeColor: Colors.red,
                  value: screen_pass,
                  onChanged: (val) {
                    setState(() {
                      screen_pass = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Misc",
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.book),
                SizedBox(width: 20),
                Text(
                  "Terms of Service",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Icon(Icons.collections_bookmark),
                SizedBox(width: 20),
                Text(
                  "Open source licenses",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
