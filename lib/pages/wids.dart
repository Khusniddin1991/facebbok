import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook/pages/forlist.dart';
class Posts extends StatefulWidget {
   List<Lists> items;
   Posts({this.items});
  @override
  _PostsState createState() => _PostsState();
}
class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.items.length,
        itemBuilder: (ctx,index){
          return Container(
            margin: EdgeInsets.only(top: 10),
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child:Column(
              children:[
                // Row(
                //   children:[
                //     Container(
                //       height: 50,
                //       width: 50,
                //       decoration:BoxDecoration(
                //         shape:BoxShape.circle,
                //         image:DecorationImage(
                //           image:AssetImage(widget.items[index].userimage),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // title
               Container(
                 width: double.infinity,
                 child: ListTile(
                   leading: Container(
                     height: 50,
                     width: 50,
                     decoration:BoxDecoration(
                               shape:BoxShape.circle,
                               image:DecorationImage(
                                 image:AssetImage(widget.items[index].userimage),
                                 fit: BoxFit.cover,
                               ),
                   ),
                 ),
                   title:Text(widget.items[index].username,style: TextStyle(color: Colors.grey),),
                   subtitle: Text(widget.items[index].feedtime,style: TextStyle(color: Colors.grey)),
                   trailing: Icon(Icons.more_horiz,size: 30,color:Colors.grey ,),
               ),
               ),
                SizedBox(height: 15,),
                Text(widget.items[index].feedtext,style: TextStyle(color: Colors.grey)),
                SizedBox(height: 15,),
                // photo
                Row(children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.items[index].feedimage),
                              fit: BoxFit.cover
                          )
                      ),

                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.items[index].userimage),
                              fit: BoxFit.cover
                          )
                      ),

                    ),
                  ),
                ],),
                SizedBox(height: 15,),
                // like and  anothers
                Container(
                  padding:EdgeInsets.only(left: 10,bottom: 10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        makeLove(),
                        Transform.translate(offset:Offset(-5,0),child:makeLike() ,),
                        Text('2.5 K',style: TextStyle(color: Theme.of(context).accentColor),),
                      ],
                    ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                          child: Text('400 Comment',style: TextStyle(color: Theme.of(context).accentColor),)),




                  ],),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                 Row(children: [
                   Padding(padding: EdgeInsets.only(bottom: 9),child: makeLikeButton(true)),
                   SizedBox(width: 5,),
                   Text('Like',style: TextStyle(fontSize: 14,color: Colors.blue),),
                 ],),
                    Row(children: [
                      Padding(padding: EdgeInsets.only(bottom: 7),child: makeCommentButton()),
                      Text('Comment',style: TextStyle(color: Colors.grey),),
                    ],),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(children: [
                        Padding(padding: EdgeInsets.only(bottom: 7),child: makeShareButton()),
                        Text('Share',style: TextStyle(color: Colors.grey),)
                      ],),
                    )
                ],)


              ],

            )
          );
        },

      ),
    );
  }
  Widget makeLove(){
    return Container(
      padding: EdgeInsets.only(bottom: 10,right: 10),
      height: 30,width:30,
      decoration: BoxDecoration(
          color: Colors.blue,
      // borderRadius: BorderRadius.circular(30)
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)
    ),child:IconButton(icon:Icon(Icons.thumb_up,color: Colors.white,size: 15,), onPressed: (){}),
      
    );
  }
  Widget makeLike(){
    return Container(
      // padding: EdgeInsets.only(bottom: 10,right: 10),
      height: 30,width:30,
      decoration: BoxDecoration(
          color: Colors.red,
          // borderRadius: BorderRadius.circular(30)
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),child:Center(child: IconButton(icon:Icon(Icons.favorite,color: Colors.white,size: 15,), onPressed: (){})),

    );
  }

  Widget makeLikeButton(bool isActive){
    return Container(

      height: 30,width:30,
      decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(30)
          shape: BoxShape.circle,

      ),child:Center(child: IconButton(icon:Icon(Icons.thumb_up,color:isActive? Colors.blue:Colors.grey,size: 20,), onPressed: (){})),

    );
  }
  Widget makeCommentButton(){
    return Container(

      height: 30,width:30,
      decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(30)
          shape: BoxShape.circle,

      ),child:Center(child: IconButton(icon:Icon(Icons.comment,color:Colors.grey,size: 20,), onPressed: (){})),

    );
  }
  Widget makeShareButton(){
    return Container(
      height: 30,width:30,
      decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(30)
          shape: BoxShape.circle,

      ),child:Center(child: IconButton(icon:Icon(Icons.share,color:Colors.grey,size: 20,), onPressed: (){})),

    );
  }



}
