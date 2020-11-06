import 'package:flutter/material.dart';

class ImgBox extends StatelessWidget {
  final imglist;
  final index;
  final onclicCallback;

  ImgBox({this.imglist, this.index, this.onclicCallback});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onclicCallback,
      child: Container(
        width: 60,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imglist[index]),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
      ),
    );
  }
}
