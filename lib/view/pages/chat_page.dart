import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerWidget {
  static const routePath = '/chat_page';
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            "https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png",
          ),
        ),
        title: Text('name'),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Expanded(
          // child: ListView.builder(
          //   itemCount: messages.length,
          //   itemBuilder: (context, index) {
          //     final message = messages[index];

          //     return Column(
          //       crossAxisAlignment: isSentByMe
          //           ? CrossAxisAlignment.end
          //           : CrossAxisAlignment.start,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 5.0, horizontal: 10.0),
          //           child: Row(
          //             mainAxisAlignment: isSentByMe
          //                 ? MainAxisAlignment.end
          //                 : MainAxisAlignment.start,
          //             children: [
          //               if (!isSentByMe)
          //                 CircleAvatar(
          //                   backgroundImage: NetworkImage(
          //                     'https://upload.wikimedia.org/wikipedia/commons/e/e0/Userimage.png',
          //                   ),
          //                   radius: 20.0,
          //                 ),
          //               SizedBox(width: 10.0),
          //               if (isImage)
          //                 Image.network(
          //                   message['imageUrl'] as String,
          //                   width: 200.0,
          //                   height: 100.0,
          //                 ),
          //               Container(
          //                 constraints: BoxConstraints(maxWidth: 250),
          //                 padding: EdgeInsets.all(10.0),
          //                 decoration: BoxDecoration(
          //                   color: isSentByMe
          //                       ? Colors.green[100]
          //                       : Colors.grey[300],
          //                   borderRadius: BorderRadius.circular(10.0),
          //                 ),
          //                 child: Text(
          //                   message['text'] as String,
          //                   style: TextStyle(
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //               vertical: 2.0, horizontal: 15.0),
          //           child: Text(
          //             '${message['time']} ${isSentByMe && message['isRead'] == true ? "• Read" : ""}',
          //             style: TextStyle(
          //               color: Colors.grey,
          //               fontSize: 12.0,
          //             ),
          //           ),
          //         ),
          //       ],
          //     );
          //   },
          // ),
          // ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Wait, I am goi...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.green),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
