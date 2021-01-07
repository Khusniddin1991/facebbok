import 'package:facebook/pages/forlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:facebook/pages/wids.dart';
class MyHomePage extends StatefulWidget {
  static final String id='home_page';
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyHomePage> {

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


  List<MakeList> _listing=[
    MakeList(storyimage:'asset/images/story_1.jpeg',userimage:'asset/images/user_1.jpeg',username: 'User One'),
    MakeList(storyimage:'asset/images/story_2.jpeg',userimage:'asset/images/user_2.jpeg',username: 'User Two '),
    MakeList(storyimage:'asset/images/story_3.jpeg',userimage:'asset/images/user_3.jpeg',username: 'User Three'),
    MakeList(storyimage:'asset/images/story_4.jpeg',userimage:'asset/images/user_4.jpeg',username: 'User Four'),
  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Theme.of(context).primaryColor,
        title: Text('facebook',style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: Icon(Icons.search,color:Theme.of(context).accentColor,), onPressed:(){}),
          IconButton(icon: Icon(Icons.camera_alt_rounded,color: Theme.of(context).accentColor,), onPressed:(){})
        ],
      ),
      backgroundColor:Colors.grey[700],
      body: ListView(children: [
        // post
        Container(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          height: 120,color:Theme.of(context).primaryColor,
          child: Column(children: [
            Expanded(child: Row(children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('asset/images/feed_1.jpeg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(width: 7,),
              Expanded(child:Container(
                height: 47,
                padding: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  border:Border.all(
                    width: 1,
                    color: Colors.grey
                  )
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What is on your mind ?',
                    hintStyle: TextStyle(color: Colors.grey[700]),
                    border: InputBorder.none
                  ),
                ),
              ))


            ],)),

            Expanded(
                child: Row(children: [
              Expanded(child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                IconButton(icon: Icon(Icons.video_call,color: Colors.red,), onPressed:(){}),SizedBox(width: 5,),
                Text('Live ')
              ],)),
                  Container(margin: EdgeInsets.only(top: 14,bottom: 14),width: 1,color: Colors.grey[300],),
                  Expanded(child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                    IconButton(icon: Icon(Icons.photo,color: Colors.green,), onPressed:(){}),SizedBox(width: 5,),
                    Text('Photo ')
                  ],)), Container(margin: EdgeInsets.only(top: 14,bottom: 14),width: 1,color: Colors.grey[300],),
                  Expanded(child:Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                    IconButton(icon: Icon(Icons.location_on,color: Colors.red,), onPressed:(){}),SizedBox(width: 5,),
                    Text('Check in ')
                  ],)),




            ],))

          ],)


          ,),
        //Post stories
        Container(
          margin: EdgeInsets.only(top: 10),
          padding:EdgeInsets.only(top: 10,bottom: 10) ,
          color: Theme.of(context).primaryColor,
          height: 200,
          child:ListView.builder(scrollDirection:Axis.horizontal,itemCount:_listing.length,itemBuilder:(ctx,int index){

           return  AspectRatio(
             aspectRatio: 1.3/2,
             child:Container(
               margin: EdgeInsets.only(right: 10),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 image: DecorationImage(
                   image: AssetImage(_listing[index].storyimage),
                   fit: BoxFit.cover
                 )
               ),
               child:Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   gradient:LinearGradient(
                     begin: Alignment.bottomRight,
                     colors: [
                       Colors.black.withOpacity(0.9),
                       Colors.black.withOpacity(0.1)
                     ]

                   )
                 ),
                 child:Padding(
                   padding: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: 35,width: 35,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage(_listing[index].userimage)),
                         shape: BoxShape.circle,
                         border: Border.all(color: Colors.blueAccent,width: 2)
                       ),
                     ),
                     Text(_listing[index].username,style: TextStyle(color: Colors.white),)
                   ],
                 ),
                 )
               ) ,
             ) ,
           );
          }),
        ),
          // post feed
           // # post side

        Posts(items:_listings,),

      ],
      ),
    );

  }
// Widget _posts(){
//     return  Container(
//       width: double.infinity,
//       child:ListView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: _listings.length,
//         itemBuilder: (ctx,index){
//           return Container(
//             child:Image.asset(_listings[index].userimage),
//           );
//         },
//
//       ),
//     );
// }




 // avvalgi
 // Widget _createPost({Lists lt}){
 //    return ListView.builder(
 //      scrollDirection: Axis.vertical,
 //      shrinkWrap: true,
 //      physics: NeverScrollableScrollPhysics(),
 //      itemBuilder:(ctx,index){
 //        return _postWidget(_listings[index]);
 //      },
 //      itemCount: _listings.length,
 //    );
 //
 // }
 //
 // Widget _postWidget(Lists item){
 //    return Container(
 //      margin:EdgeInsets.only(top:15),
 //      width: double.infinity,
 //      color: Colors.red,
 //      child:Image.asset(item.userimage),
 //    );
 // }
}

