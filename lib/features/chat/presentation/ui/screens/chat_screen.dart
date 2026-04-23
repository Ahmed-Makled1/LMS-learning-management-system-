import 'package:flutter/material.dart';
import 'package:learning_management_system/features/chat/presentation/ui/widgets/course_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedCourseId = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCourseId = index;
                    });
                  },
                  child: CourseBubble(
                    courseName: "course name $index",
                    unreadMessagesCount: index,
                    courseId: index,
                    selectedCourseId: selectedCourseId,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
