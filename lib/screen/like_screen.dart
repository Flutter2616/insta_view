import 'package:flutter/material.dart';

class Likescreen extends StatefulWidget {
  const Likescreen({Key? key}) : super(key: key);

  @override
  State<Likescreen> createState() => _LikescreenState();
}

class _LikescreenState extends State<Likescreen> {
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
    "kaushik",
    "sonal",
    "jugal",
    "koushal",
    "sahil",
    "aniket",
    "sarvaiya",
    "ketan",
    "rusatam",
    "sneh"
  ];
  List img = [
    "https://www.shutterstock.com/image-vector/online-cinema-art-movie-watching-260nw-584655766.jpg",
    "https://i.pinimg.com/736x/c3/a1/05/c3a105435a7f016b34ec83820ffea930.jpg",
    "https://5.imimg.com/data5/MB/NQ/LH/SELLER-32174847/customized-god-wallpaper-1000x1000.jpg",
    "https://img.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg?w=2000",
    "https://i.pinimg.com/736x/28/69/20/286920efb20b11f53312c1e95145c4ab.jpg",
    "https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg",
    "https://www.jainuniversity.ac.in/uploads/blog/dfe045f572236783fa3468427b87e204.jpg",
    "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2022/09/qwdd1234565sw-1-1663069530.jpg",
    "https://www.shutterstock.com/image-vector/online-cinema-art-movie-watching-260nw-584655766.jpg",
    "https://i.pinimg.com/736x/c3/a1/05/c3a105435a7f016b34ec83820ffea930.jpg",
    "https://5.imimg.com/data5/MB/NQ/LH/SELLER-32174847/customized-god-wallpaper-1000x1000.jpg",
    "https://img.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg?w=2000",
    "https://i.pinimg.com/736x/28/69/20/286920efb20b11f53312c1e95145c4ab.jpg",
    "https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg",
    "https://www.jainuniversity.ac.in/uploads/blog/dfe045f572236783fa3468427b87e204.jpg",
    "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2022/09/qwdd1234565sw-1-1663069530.jpg",
  ];
  List image2 = [
    "https://i.pinimg.com/236x/0a/9e/2e/0a9e2ec53a8c7fc1855ebde3ad8841a7.jpg",
    "https://i.pinimg.com/236x/a7/68/2a/a7682abaad4565fea554a05abdb32bbc.jpg",
    "https://i.pinimg.com/736x/33/e5/55/33e555d530118598af26fb05bd0ba201.jpg",
    "https://i.pinimg.com/736x/1b/5b/a0/1b5ba0942a5a8fc5d7192fc2ed5f74ee.jpg",
    "https://i.pinimg.com/564x/e2/18/ca/e218ca7cb2a3da1dd881b3966b8f3677.jpg",
    "https://i.pinimg.com/736x/58/bd/4f/58bd4fc9ebfccc1f2de419529bbf1a12.jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://www.shutterstock.com/image-vector/world-mapcountries-260nw-231504040.jpg",
    "https://thumbs.dreamstime.com/b/different-countries-united-their-flags-raised-44823555.jpg",
    "https://images.indianexpress.com/2021/08/GettyImages-kids-playing-sports-1200.jpg",
    "https://i.pinimg.com/236x/0a/9e/2e/0a9e2ec53a8c7fc1855ebde3ad8841a7.jpg",
    "https://i.pinimg.com/236x/a7/68/2a/a7682abaad4565fea554a05abdb32bbc.jpg",
    "https://i.pinimg.com/736x/33/e5/55/33e555d530118598af26fb05bd0ba201.jpg",
    "https://i.pinimg.com/736x/1b/5b/a0/1b5ba0942a5a8fc5d7192fc2ed5f74ee.jpg",
    "https://i.pinimg.com/564x/e2/18/ca/e218ca7cb2a3da1dd881b3966b8f3677.jpg",
    "https://i.pinimg.com/736x/58/bd/4f/58bd4fc9ebfccc1f2de419529bbf1a12.jpg",
    "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://www.shutterstock.com/image-vector/world-mapcountries-260nw-231504040.jpg",
    "https://thumbs.dreamstime.com/b/different-countries-united-their-flags-raised-44823555.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Column(
                  children: img
                      .asMap()
                      .entries
                      .map((e) => Like(image2[e.key], name[e.key], img[e.key]))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Like(String profile, String name, String img2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 25, backgroundImage: NetworkImage("$profile")),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hii I am $name",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
              Text(
                "$name Like your post",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                    letterSpacing: 2),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 40,
            width: 20,
            child: Image.network("$img2", fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
