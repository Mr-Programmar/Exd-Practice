import 'package:flutter/material.dart';

class VisiblePractice extends StatefulWidget {
  const VisiblePractice({super.key});

  @override
  State<VisiblePractice> createState() => _VisiblePracticeState();
}

class _VisiblePracticeState extends State<VisiblePractice> {
  bool isObsecure = true;
  bool shopOwner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visivle And Unvisible Password"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    shopOwner = false;
                  });
                },
                child: Text(
                  "User",
                  style: TextStyle(
                    color: shopOwner == false ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    shopOwner = true;
                  });
                },
                child: Text(
                  "Shop Owner",
                  style: TextStyle(
                    color: shopOwner == true ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text("Email"),
            ),
          ),
          TextField(
            obscureText: isObsecure,
            decoration: InputDecoration(
              label: const Text("Password"),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    // if (isObsecure == true) {
                    //   isObsecure = false;
                    // } else {
                    //   isObsecure = true;
                    // }

                    isObsecure = !isObsecure;
                  });
                },
                icon: isObsecure == true
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
          ),
          shopOwner == false
              ? const SizedBox()
              : const TextField(
                  decoration: InputDecoration(
                    label: Text(
                      "Shop Name",
                    ),
                  ),
                ),
          shopOwner == false
              ? const SizedBox()
              : const TextField(
                  decoration: InputDecoration(
                    label: Text("Shop Address"),
                  ),
                ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
        ],
      ),
    );
  }
}
