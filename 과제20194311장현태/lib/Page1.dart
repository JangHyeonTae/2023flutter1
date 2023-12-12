import 'package:flutter/material.dart';
import 'package:projectjang/prediction.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Soccer.dart';
import 'baseball.dart';
import 'basketball.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(context),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  //메뉴
  Widget _buildTop(context){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Soccer(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.sports_soccer,
                    color: Colors.black,
                    size: 40,
                  ),
                  Text('축구'),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => baseball(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.sports_baseball,
                    color: Colors.red,
                    size: 40,
                  ),
                  Text('야구'),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => prediction(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.sports,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Text('예측'),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => basketball(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.sports_basketball,
                    color: Colors.brown,
                    size: 40,
                  ),
                  Text('농구'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),

      ],
    );
  }


  Widget _buildMiddle(){
    final imageItems = [
      'assets/img.png'
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0,
      ),
      items: imageItems.map((path)
      {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRect(
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }
      ).toList(),
    );
  }

  Widget _buildBottom(){
    final items = List.generate(
        1, (i){
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('SPORTS NEWS'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Korea Soccer'),
          ),
          ListTile(
            leading: Icon(Icons.video_call),
            title: Text('Korea baseball'),
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Korea basketball'),
          ),
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text('SPORTS VEDIO'),
          ),
        ],
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
