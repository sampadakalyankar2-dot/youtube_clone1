import 'package:flutter/material.dart';

Widget buildActionButton(IconData icon, String label) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        const CircleAvatar(radius:20, child: Icon(Icons.person)),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}

Widget suggestedVideo(Color color, String title, IconData Icon_Data) {
  return Padding(
    padding: EdgeInsets.only(bottom:12),
    child: Column(
      children: [
        Container(
          height:220,
          width: double.infinity,


          
          color: color,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            image: DecorationImage(
              image: NetworkImage('https://img.etimg.com/photo/msid-128778294,imgsize-88596/CanHumansReallySurviveonMars%3F6Science-BackedAnswers.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children:[
            CircleAvatar(radius: 20, child: Icon(Icon_Data)),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Icon(Icons.more_vert,),
          ],),
      ],
    ),
  );
}