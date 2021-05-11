import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {

  final String title;
  final String text;
  final String image;

  const CustomWidget({
    this.title,
    this.text,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final heightQuery = MediaQuery.of(context).size.height;
    //final width =  MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'janna',
                    color: Colors.grey[600]),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30),
              margin: EdgeInsets.only(top: 90),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                 //   fontFamily: 'janna',
                    color: Colors.grey[600]),
              ),
            ),
            SizedBox(
              height: heightQuery * .02,
            ),
            Center(
              child: Container(
                height: heightQuery * .350,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: heightQuery * .16,
            )
          ],
        ),
      ),

    );
  }
}
