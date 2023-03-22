import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class UploadOptions extends StatelessWidget {
  Widget colouredContainer(
      Color bgcolor, Icon icon, String option, String title) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: bgcolor),
      child: Center(
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        colouredContainer(Colors.lightBlue.withOpacity(0.2), Icon(FontAwesomeIcons.image,color: Colors.cyan,size: 30,),
            "image", "images"),
        colouredContainer(Colors.pink.withOpacity(0.3), Icon(Icons.play_arrow_outlined,color: Colors.pink.withOpacity(0.5),size: 42,),
            "video", "videos"),
        colouredContainer(Colors.blue.withOpacity(0.4), Icon(FontAwesomeIcons.fileText,color: Colors.indigoAccent.withOpacity(0.5),size: 30),
            "application", "documentation"),
        colouredContainer(Colors.purple.withOpacity(0.2), Icon(FontAwesomeIcons.music,color: Colors.pink.withOpacity(0.3),size: 25),
            "image", "images"),
      ],
    );
  }
}
