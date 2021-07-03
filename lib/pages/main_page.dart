import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_batik/models/populer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                menu(),
                profileDetail(),
                search(),
                headerPopuler(),
                carouselPopuler(),
                headerRecommend(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: popularList
                        .map(
                          (batik) => Container(
                            width: 315,
                            height: 100,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            margin: EdgeInsets.only(
                                bottom: (batik == popularList.last) ? 30 : 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(3, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(batik.imageUrl),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      batik.title,
                                    ),
                                    Text(batik.ingredients),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_outlined,
                                          color: Colors.amber,
                                          size: 12,
                                        ),
                                        Icon(
                                          Icons.star_outlined,
                                          color: Colors.amber,
                                          size: 12,
                                        ),
                                        Icon(
                                          Icons.star_outlined,
                                          color: Colors.amber,
                                          size: 12,
                                        ),
                                        Icon(
                                          Icons.star_outlined,
                                          color: Colors.amber,
                                          size: 12,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.amber,
                                          size: 12,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Container(
                                      width: 60,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Diskon 35% OFF",
                                          style: GoogleFonts.poppins(
                                            fontSize: 6,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container headerRecommend() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Text(
        "Rekomendasi Batik Untuk Kamu",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Container carouselPopuler() {
    return Container(
      width: double.infinity,
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: popularList
            .map(
              (batik) => Container(
                width: 139,
                height: 220,
                margin: EdgeInsets.only(
                    left: (batik == popularList.first) ? 30 : 0,
                    right: (batik == popularList.last) ? 30 : 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: Offset(3, 3),
                      )
                    ]),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(batik.imageUrl),
                    ),
                    Align(
                      alignment: Alignment(0, 0.9),
                      child: Container(
                        width: double.infinity,
                        height: 90,
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              batik.title,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 108,
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(batik.subtitle,
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 65,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      batik.price,
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.blue,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Container headerPopuler() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Batik Populer",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Container search() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        border: Border.all(
          color: Color(
            0xffe5e5e5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          style: GoogleFonts.poppins(fontSize: 14),
          decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Image.asset("assets/search.png"),
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              hintText: "Temukan batik impian anda"),
        ),
      ),
    );
  }

  Container profileDetail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai, Rakha",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Cari Batik Anda",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/user.png"),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container menu() {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 30, bottom: 10, right: 30),
      child: Icon(Icons.menu),
    );
  }
}
