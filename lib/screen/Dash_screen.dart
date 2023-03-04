import 'package:flutter/material.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  List img = [
    "assets/images/person/img1.jpg",
    "assets/images/person/img2.jpg",
    "assets/images/person/img3.jpg",
    "assets/images/person/img4.jpg",
    "assets/images/person/img5.jpg",
    "assets/images/person/img6.jpg",
    "assets/images/person/img7.jpeg",
    "assets/images/person/img8.jpg",
    "assets/images/person/img9.jpg",
    "assets/images/person/img10.jpg",
  ];
  List name = [
    "prince",
    "sakshi",
    "harsh",
    "mayank",
    "joyan",
    "pavan",
    "parth",
    "jay",
    "vivek",
    "kaushik"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("=== ${img[3]}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Stories",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                  Spacer(),
                  Icon(Icons.play_arrow, color: Colors.black, size: 15),
                  SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text("Watch all",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: name
                        .asMap()
                        .entries
                        .map((e) => Story(name[e.key], img[e.key]))
                        .toList()),
              ),
              SizedBox(height: 10),
              Column(
                children: name
                    .asMap()
                    .entries
                    .map((e) => Post(name[e.key], img[e.key]))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Story(String name, String img) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 55,
            width: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.pink.shade700, width: 2)),
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage("$img"),
            ),
          ),
        ),
        Text(
          "$name",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget Post(String name, String img) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.grey.shade500, width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink.shade700),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                      radius: 17, backgroundImage: AssetImage("$img")),
                ),
                Text(
                  " $name",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                Spacer(),
                Icon(Icons.more_horiz, color: Colors.black, size: 20),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                // borderRadius: BorderRadius.all(
                //   Radius.circular(20),
                // ),
              ),
              child: Image.asset("$img", fit: BoxFit.fill),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite_border, size: 25),
                Icon(Icons.circle_outlined, size: 25),
                Icon(Icons.send, size: 25),
                Spacer(),
                Icon(Icons.bookmark, size: 25),
              ],
            ),
            Text(
              "2,875 Likes",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hello Friend hii!!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "#$name",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
