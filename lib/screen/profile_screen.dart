import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List image3 = [
    "https://www.shutterstock.com/image-vector/online-cinema-art-movie-watching-260nw-584655766.jpg",
    "https://i.pinimg.com/736x/c3/a1/05/c3a105435a7f016b34ec83820ffea930.jpg",
    "https://5.imimg.com/data5/MB/NQ/LH/SELLER-32174847/customized-god-wallpaper-1000x1000.jpg",
    "https://img.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg?w=2000",
    "https://i.pinimg.com/736x/28/69/20/286920efb20b11f53312c1e95145c4ab.jpg",
  ];
  List image2 = [
    "https://i.pinimg.com/236x/0a/9e/2e/0a9e2ec53a8c7fc1855ebde3ad8841a7.jpg",
    "https://i.pinimg.com/236x/a7/68/2a/a7682abaad4565fea554a05abdb32bbc.jpg",
    "https://i.pinimg.com/736x/33/e5/55/33e555d530118598af26fb05bd0ba201.jpg",
    "https://i.pinimg.com/736x/1b/5b/a0/1b5ba0942a5a8fc5d7192fc2ed5f74ee.jpg",
    "https://i.pinimg.com/564x/e2/18/ca/e218ca7cb2a3da1dd881b3966b8f3677.jpg",
  ];
  List image1 = [
    "https://i.pinimg.com/originals/0d/f4/5c/0df45c26339998f3c6728852c1c6149d.jpg",
    "https://i.pinimg.com/736x/60/77/fa/6077fa9f8cd1d9688e4e85451f977cb5.jpg",
    "https://blog.hubspot.com/hs-fs/hubfs/Selfie-Instagram-Captions.png?width=349&name=Selfie-Instagram-Captions.png",
    "https://i.pinimg.com/736x/a8/e4/98/a8e4983feb9e8a7c4228592a33899477.jpg",
    "https://i.tribune.com.pk/media/images/2216357-jumps_to_death-1588867164/2216357-jumps_to_death-1588867164.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "photo_point",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined,
                        size: 15, color: Colors.black),
                    Spacer(),
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://www.mykhel.com/thumb/247x100x233/cricket/players/8/3788.jpg"),
                    ),
                    Info("Posts", "200"),
                    Info("Followers", "1.2M"),
                    Info("Following", "500"),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Virat_Kohli",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "I_am_Indian_Cricketer",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    box(
                        Text(
                          "Edit profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              wordSpacing: 2),
                        ),
                        160),
                    box(
                        Text(
                          "Share profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              wordSpacing: 2),
                        ),
                        160),
                    box(Icon(Icons.person_add), 40),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.grid_on_sharp,size: 30),
                  Icon(Icons.perm_contact_calendar,size: 37)
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: image1.asMap().entries.map((e) => img(image1[e.key], image2[e.key], image3[e.key])).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Info(String type, String number) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$number",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        Text(
          "$type",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ],
    );
  }

  Widget box(Widget w, double width) {
    return Container(
      height: 35,
      width: width,
      alignment: Alignment.center,
      child: w,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget img(String img1, String img2, String img3) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.network("$img1", fit: BoxFit.fill),
          ),
          Container(
            height: 120,
            width: 120,
            child: Image.network("$img2", fit: BoxFit.fill),
          ),
          Container(
            height: 120,
            width: 120
            ,
            child: Image.network("$img3", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
