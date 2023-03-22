import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Widget tabCell(String text, bool selected, BuildContext context) {
    return selected
        ? Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45 - 5,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepOrangeAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(-10, 10),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: Offset(-10, 10),
                      blurRadius: 10,
                    ),
                  ]),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.45 - 10,
            height: 60,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "D-vault",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300, boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                offset: Offset(-10, 10),
                blurRadius: 10,
              ),
            ]),
            child: Row(
              children: [
                tabCell("Storage", true, context),
                tabCell("Files", false, context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}