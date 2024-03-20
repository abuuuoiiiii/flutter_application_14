import 'package:flutter/material.dart';
import 'package:flutter_application_14/1.dart';

class cnc extends StatefulWidget {
  @override
  State<cnc> createState() => _cncState();
}

class _cncState extends State<cnc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text("Create new contact"),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => se()));
                },
                child: InkWell(
                  onTap: () {
                    if (Firstname.text.isNotEmpty &&
                        Lastname.text.isNotEmpty &&
                        Phone.text.isNotEmpty &&
                        Mobile.text.isNotEmpty &&
                        Email.text.isNotEmpty &&
                        Home.text.isNotEmpty) {
                      Navigator.pop(context);
                    } else
                      (Firstname.text.isEmpty &&
                          Lastname.text.isEmpty &&
                          Phone.text.isEmpty &&
                          Mobile.text.isEmpty &&
                          Email.text.isEmpty &&
                          Home.text.isEmpty);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => se()),
                    // );
                  },
                  child: Text(
                    "save",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )),
          )
        ],
      )),
      body: SingleChildScrollView(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Image.asset(
              "asset/download.png",
              width: 200,
            ),
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 175),
              child: Container(
                height: 70,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          color: Colors.grey)
                    ],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Icon(
                    Icons.save,
                    size: 40,
                    color: Colors.blue[800],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 185, left: 120),
              child: Text(
                "saving to",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 212, left: 125),
              child: Text(
                "MTN GH",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 290),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 55,
                color: Colors.blue[800],
              ),
            )
          ]),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 315),
              child: Container(
                height: 310,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          color: Colors.grey)
                    ],
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 220, bottom: 240),
                  child: Icon(
                    Icons.person_outline,
                    size: 35,
                    color: Colors.blue[800],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 430),
              child: Icon(
                Icons.call,
                size: 35,
                color: Colors.blue[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 520),
              child: Icon(
                Icons.mail_outline,
                size: 35,
                color: Colors.blue[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 310),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 55,
                color: Colors.blue[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 400),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 55,
                color: Colors.blue[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 500),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                size: 55,
                color: Colors.blue[800],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 310, right: 100),
              child: TextField(
                controller: Firstname,
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration: InputDecoration(labelText: "First name"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 130, top: 355, right: 100),
                child: TextField(
                  controller: Lastname,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Last name"),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 410, right: 100),
              child: TextField(
                controller: Phone,
                obscureText: true,
                decoration: InputDecoration(labelText: "Phone"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 455, right: 100),
              child: TextField(
                controller: Mobile,
                obscureText: true,
                decoration: InputDecoration(labelText: "Mobile"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 505, right: 100),
              child: TextField(
                controller: Email,
                obscureText: true,
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 550, right: 100),
              child: TextField(
                controller: Home,
                obscureText: true,
                decoration: InputDecoration(labelText: "Home"),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 625, left: 125),
            child: Text(
              "MORE FIELDS",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
          )
        ]),
      ),
    );
  }
}

final Firstname = TextEditingController();
final Lastname = TextEditingController();
final Phone = TextEditingController();
final Mobile = TextEditingController();
final Email = TextEditingController();
final Home = TextEditingController();
