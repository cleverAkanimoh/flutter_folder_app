import 'package:flutter/material.dart';

class getChatPage extends StatefulWidget {
  const getChatPage({super.key});

  @override
  State<getChatPage> createState() => _getChatPageState();
}

class _getChatPageState extends State<getChatPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          alignment: Alignment.bottomCenter,
          height: 170,
          decoration: const BoxDecoration(
              // color: Colors.transparent,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chatbox",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Project",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
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
                      color: Colors.blue,
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
                      icon: const Icon(Icons.share),
                      onPressed: () {},
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 150,
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                userColumn("Mike"),
                userColumn("Mia"),
                userColumn("Clever"),
                userColumn("Grace"),
                userColumn("Monday"),
                userColumn("Victor"),
              ],
            ),
          ),
        ),
        Expanded(
            child: ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
                tileMode: TileMode.mirror,
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                stops: [
                  0.6,
                  1
                ],
                colors: [
                  Colors.transparent,
                  Colors.grey.shade100,
                ]).createShader(bounds);
          },
          blendMode: BlendMode.dstOut,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: ListView(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Files",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Create Folder",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                filesContainer("Assets"),
                filesContainer("Brandbook"),
                filesContainer("Design"),
                filesContainer("Moodboard"),
                filesContainer("Wireframes"),
              ],
            ),
          ),
        ))
      ],
    );
  }

  Container filesContainer(String fileName) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      height: 67,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder,
                color: Colors.blue,
              ),
              const SizedBox(width: 20),
              Text(
                fileName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Column userColumn(String userName) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8, bottom: 3),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
        ),
        Text(
          userName,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
