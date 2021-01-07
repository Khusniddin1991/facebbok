import 'package:flutter/material.dart';

import 'forlist.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Lists> _listings=[
    Lists(
        username: 'User One',
        userimage: 'asset/images/user_1.jpeg',
        feedtime: '1 hr ago',
        feedtext: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
        feedimage: 'asset/images/story_1.jpeg' ),
    Lists(
        username: 'User Two',
        userimage: 'asset/images/user_2.jpeg',
        feedtime: '1 hr ago',
        feedtext: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
        feedimage: 'asset/images/story_2.jpeg' ),
    Lists(
        username: 'User Three',
        userimage: 'asset/images/user_3.jpeg',
        feedtime: '1 hr ago',
        feedtext: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
        feedimage: 'asset/images/story_3.jpeg' ),
    Lists(
        username: 'User Two',
        userimage: 'asset/images/user_4.jpeg',
        feedtime: '1 hr ago',
        feedtext: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
        feedimage: 'asset/images/story_4.jpeg' )

  ];
  // boshqa page qib kurdim
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:_listings.length,itemBuilder:(ctx,index){
      Lists listsl=_listings[index];
      return Column(children: [

        Container(
          padding: EdgeInsets.only(left: 10,right: 10),

          child: Column(children: [
            Row(children: [
              Container(
                height:50 ,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(listsl.userimage)
                    )
                ),
              )


            ],)
          ],),)


      ], );

    });
  }
}
