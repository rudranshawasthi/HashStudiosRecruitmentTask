import 'package:flutter/material.dart';
import 'package:RecruitmentTask/widget/imgbox.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _current = 0;
  List imgList = [
    'https://cdn.pixabay.com/photo/2016/11/08/05/18/hot-air-ballon-1807521__340.jpg',
    'https://cdn.pixabay.com/photo/2017/09/02/15/10/greece-2707528__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/12/18/00/kerala-4051412__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/29/07/35/water-3271579__340.jpg',
    'https://cdn.pixabay.com/photo/2015/06/24/13/31/beer-820011__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/07/11/20/succulent-1031033__340.jpg',
    'https://cdn.pixabay.com/photo/2016/02/19/11/00/palm-tree-1209536__340.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC4C4C4),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Wallpaper",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 280,
                    width: MediaQuery.of(context).size.width - 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(imgList[_current]),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                  ),
                ]),
                // SizedBox(
                //   height: 70,
                // ),
                Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final img = imgList[index];
                        print(img);
                        return ImgBox(
                          imglist: imgList,
                          index: index,
                          onclicCallback: () {
                            setState(() {
                              _current = index;
                            });
                          },
                        );
                      },
                      itemCount: imgList.length,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Color(0xff9F9F9F),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: FlatButton(
                        child: Text(
                          'Set on Lock Screen',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {}),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
