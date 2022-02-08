import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHBqsziWUqtTXPe3pU-qqrGJhUHrxFH7klw&usqp=CAU"),
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ),
        ),
        title: const Text(
          "Chat",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.black,
              child: Icon(Icons.camera_alt),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.black,
              child: Icon(Icons.edit),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Search")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 100.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 15.0,
                        ),
                    itemCount: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHBqsziWUqtTXPe3pU-qqrGJhUHrxFH7klw&usqp=CAU"),
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "Mohamed Hisham",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHBqsziWUqtTXPe3pU-qqrGJhUHrxFH7klw&usqp=CAU"),
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Mohamed Hisham Ibrahim Mahmoud MahmoudMahmoud",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "This is my your friend Ahmed?",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      );
}
