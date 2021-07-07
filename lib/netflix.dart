import 'package:flutter/material.dart';

class Netflix extends StatefulWidget {
  const Netflix({Key key}) : super(key: key);

  @override
  _NetflixState createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1F1F1F),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF1F1F1F),
            centerTitle: true,
            floating: true,
            expandedHeight: size.height * 0.60,
            flexibleSpace: Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Image.asset(
                        "Assets/interstaller.jpg",
                        fit: BoxFit.cover,
                        width: size.width,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height / 9,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Color(0xFF0000000),
                              Color(0xFC0000000),
                              Color(0x001313130),
                            ])),
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "Assets/logo.png",
                          width: size.width * 0.25,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: size.width,
                          height: size.height / 9,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF1F1F1F),
                                Color(0xFF1F1F1F),
                                Color(0xE71F1F1F),
                                Color(0xAE1F1F1F),
                                Color(0x001F1F1F),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: size.width,
                    height: size.height / 11,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_outlined,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "My list",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                debugPrint("add");
                              }),
                          InkWell(
                              child: Container(
                                height: size.height / 23,
                                width: size.width * 0.215,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.play_arrow),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Play"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                debugPrint("play");
                              }),
                          InkWell(
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "info",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                debugPrint("info");
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0, left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Previews",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: size.width,
                  height: size.height / 8,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: size.width * 0.25,
                          height: size.height / 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              image: DecorationImage(
                                  image: AssetImage("Assets/$index.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.transparent,
                              shape: BoxShape.circle),
                        ),
                      );
                    },
                    padding: EdgeInsets.only(right: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Continue Watching",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    color: Colors.transparent,
                    width: size.width,
                    height: size.height / 4.4,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: size.width * 0.31,
                            height: size.height / 7.6,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "Assets/${6 - index}.jpg"),
                                          fit: BoxFit.cover),
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.black54,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "S1:E${6 - index}",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.info_outline,
                                              color: Colors.white54,
                                            ),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      padding: EdgeInsets.only(right: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 5.0, left: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Popular on Netflix",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    color: Colors.transparent,
                    width: size.width,
                    height: size.height / 4.4,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: size.width * 0.31,
                            height: size.height / 7.6,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("Assets/$index.jpg"),
                                          fit: BoxFit.cover),
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      padding: EdgeInsets.only(right: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
