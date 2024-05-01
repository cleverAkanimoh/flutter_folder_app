// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({super.key});

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            alignment: Alignment.bottomCenter,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Riotters",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Team folder",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: const Icon(Icons.notifications_outlined),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Storage ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: "9.1/10GB",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          )),
                    ],
                  ),
                ),
                const Text(
                  "Upgrade",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                buildFileSizeChart("SOURCES", .3, Colors.blue),
                const SizedBox(width: 2),
                buildFileSizeChart("DOCS", .25, Colors.pink),
                const SizedBox(width: 2),
                buildFileSizeChart("IMAGES", .20, Colors.yellow),
                const SizedBox(width: 2),
                buildFileSizeChart("", .23, Colors.grey),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 20,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const Text(
                  "Recently updated",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    buildFileColumn("assets/images/icon-facebook.svg",
                        "desktop ", "sketch"),
                    SizedBox(width: availableScreenWidth * .03),
                    buildFileColumn("assets/images/icon-instagram.svg",
                        "mobile ", "sketch"),
                    SizedBox(width: availableScreenWidth * .03),
                    buildFileColumn(
                        "assets/images/icon-hamburger.svg", "", "sketch"),
                  ],
                ),
                const Divider(height: 60),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Create new",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                buildFileRow("Chatbox"),
                buildFileRow("TimeNote"),
                buildFileRow("Something"),
                buildFileRow("Other"),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 7,
              blurRadius: 1,
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: "clock",
            activeIcon: Icon(
              Icons.access_alarms_outlined,
            ),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "box"),
        ],
      ),
    );
  }

  Container buildFileRow(String fileName) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(25),
      // height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder,
                color: Colors.blue,
              ),
              const SizedBox(width: 10),
              Text(
                fileName,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Icon(
            Icons.more_vert_rounded,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Column buildFileColumn(String src, String text, String smallText) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          width: availableScreenWidth * .31,
          height: 110,
          // child: Image.asset(src),
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
              text: text,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              children: [
                TextSpan(
                    text: smallText,
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300))
              ]),
        ),
      ],
    );
  }

  Column buildFileSizeChart(String title, double widthPercentage, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: availableScreenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
