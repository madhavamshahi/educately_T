import 'package:flutter/material.dart';

class TeacherCard extends StatelessWidget {
  final String name;
  final String imgPath;
  final String subject;
  TeacherCard(
      {Key key,
      @required this.subject,
      @required this.name,
      @required this.imgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 175,
          height: 185,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imgPath,
                ),
                radius: 50,
              ),
              SizedBox(height: 10),
              Flexible(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Text(
                        name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        subject,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          letterSpacing: 1.5,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontFamily: "QuickSand",
                          fontSize: 13.5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
