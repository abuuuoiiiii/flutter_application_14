import 'package:flutter/material.dart';
import 'package:flutter_application_14/cnc.dart';

class se extends StatefulWidget {
  const se({super.key});

  @override
  State<se> createState() => _seState();
}

class _seState extends State<se> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: SizedBox(
          height: 40,
          width: 350,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                suffix: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: "Search"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 50,
              width: 400,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "My Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Divider(
                height: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 1500,
                width: 400,
                child: ListView.builder(
                  itemCount: con.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(conp[index]),
                      ),
                      title: Text(
                        con[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300, top: 600),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cnc()));
                  },
                  icon: Icon(
                    Icons.person_add,
                    size: 40,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

List con = [
  "Aflah",
  "Ahmed",
  "Aneeta",
  "Anshif",
  "Eshan",
  "Fadhil",
  "Hasan",
  "Kripa",
  "Mohammed",
  "Mallu",
  "nasriya",
  "nikhil",
  "Sana"
];
List conp = [
  "asset/aflah.jpg",
  "asset/download.png",
  "asset/download.png",
  "asset/anshu.jpg",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
  "asset/download.png",
];
