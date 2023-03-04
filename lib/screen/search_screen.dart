import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  List image1 = [
    "https://i.pinimg.com/originals/0d/f4/5c/0df45c26339998f3c6728852c1c6149d.jpg",
    "https://i.pinimg.com/736x/60/77/fa/6077fa9f8cd1d9688e4e85451f977cb5.jpg",
    "https://blog.hubspot.com/hs-fs/hubfs/Selfie-Instagram-Captions.png?width=349&name=Selfie-Instagram-Captions.png",
    "https://i.pinimg.com/736x/a8/e4/98/a8e4983feb9e8a7c4228592a33899477.jpg",
    "https://i.tribune.com.pk/media/images/2216357-jumps_to_death-1588867164/2216357-jumps_to_death-1588867164.jpg",
    "https://i.pinimg.com/564x/26/55/c0/2655c0e062a9feb4e15cd2d80fe7bc7b.jpg",
    "https://i.pinimg.com/1200x/76/02/ca/7602caa1a91789b51596fc0b9b423a37.jpg",
    "https://i.pinimg.com/originals/43/62/cc/4362cc15ed8628e3a47987a5d3a751e7.jpg",
    "https://i.pinimg.com/736x/9a/95/a3/9a95a3fff0f1b014592af5e9d5f4b73b.jpg",
    "https://i.pinimg.com/736x/46/f6/a6/46f6a69139d73b3d25494e5da13b5650.jpg",
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
  ];
  List image3 = [
    "https://www.shutterstock.com/image-vector/online-cinema-art-movie-watching-260nw-584655766.jpg",
    "https://i.pinimg.com/736x/c3/a1/05/c3a105435a7f016b34ec83820ffea930.jpg",
    "https://5.imimg.com/data5/MB/NQ/LH/SELLER-32174847/customized-god-wallpaper-1000x1000.jpg",
    "https://img.freepik.com/free-vector/sport-equipment-concept_1284-13034.jpg?w=2000",
    "https://i.pinimg.com/736x/28/69/20/286920efb20b11f53312c1e95145c4ab.jpg",
    "https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg",
    "https://www.jainuniversity.ac.in/uploads/blog/dfe045f572236783fa3468427b87e204.jpg",
    "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2022/09/qwdd1234565sw-1-1663069530.jpg",
    "https://www.pinkvilla.com/imageresize/gettyimages-1160969654.jpg?width=752&t=pvorg",
    "https://image.cnbcfm.com/api/v1/image/105636869-GettyImages-842098118.jpg?v=1545228258"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.black, size: 20),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: image1
                    .asMap()
                    .entries
                    .map((e) => img(image1[e.key],image2[e.key],image3[e.key]))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget img(String img1,String img2,String img3) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 130,
            width: 130,
            child: Image.network("$img1", fit: BoxFit.fill),
          ),
          Container(
            height: 130,
            width: 130,
            child: Image.network("$img2", fit: BoxFit.fill),
          ),
          Container(
            height: 130,
            width: 130,
            child: Image.network("$img3", fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
