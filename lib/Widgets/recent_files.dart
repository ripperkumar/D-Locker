import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Recent Files",style: TextStyle(
            fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold
          ),),
        ),
        SizedBox(height: 15,),
        Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.only(left:2,right: 13.0),
                  child: Container(
                    height: 65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            width: 65,
                            height: 60,
                            child: Image.asset("assets/scenery.jpg",fit: BoxFit.cover,),
                          ),
                        ),
                        SizedBox(height: 6,),
                        Text("Babil Bhai",overflow: TextOverflow.ellipsis,style: TextStyle(
                          fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w500,
                        ),)
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
