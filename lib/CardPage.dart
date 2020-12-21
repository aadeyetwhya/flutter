import 'package:flutter/material.dart';

import 'package:assignment1/data.dart';
import 'package:assignment1/main.dart';
import 'package:assignment1/ClickPage.dart';

class CardPage extends StatelessWidget {
  Model models = Model();
  Model facebook = Model(
      title: "Facebook",
      like_count: 545,
      comment_count: 66,
      img: AssetImage("images/OIP.jpg"),
      icon_img: AssetImage("images/facebook_icon.jpg",),
      background_color: Colors.blueGrey.shade400,
      share_count: 25,
      headquarter: "Menlo Park, CA",
      users: "2.45 billion",
      founded: 2004,
      Description1:"Facebook, American company offering online social networking services. Facebook was founded in 2004 by Mark Zuckerberg, Eduardo Saverin, Dustin Moskovitz, and Chris Hughes, all of whom were students at Harvard University. Facebook became the largest social network in the world, with more than one billion users as of 2012, and about half that number were using Facebook every day.",
      features: ["Go Live from Messenger Rooms","New Messenger App Lock","Sponsored Posts for Groups"]);

  Model instagram = Model(
      title: "Instagram",
      headquarter: "Menlo Park, CA",
      users: " 1 billion",
      founded: 2010,
      like_count: 333,
      comment_count: 225,
      img: AssetImage("images/instagram.jpg"),
      icon_img: AssetImage("images/instagram_icon.jpg"),
      background_color: Colors.blueGrey.shade400,
      features: ["Instagram lite for android","Combine messanger with facebook"],
      Description1:"Instagram is the largest-growing social-media platform. It was a success right from the beginning with over a million users only two months after it was launched.Instagram was developed in San Francisco by Kevin Systrom and Mike Krieger. Systrom was working in marketing and started doing engineering at night to help him learn.",

      share_count: 30);
  Model twitter = Model(
      title: "Twitter",
      headquarter: "San Francisco, CA",
      users: "330 million",
      founded: 2006,
      like_count: 250,
      comment_count: 360,
      img: AssetImage("images/twitter.png"),
      icon_img: AssetImage("images/twitter_icon.jpg"),
      background_color:Colors.blueGrey.shade400,
      features: ["Conversation Insights","Temporary tweets","Audio Spaces"],
      Description1: "Twitter began as an idea that Twitter co-founder Jack Dorsey (@Jack) had in 2006.Jack sent the first message on Twitter on March 21, 2006, 9:50 p.m. It read, 'just setting up my twttr.'.There are 330 million monthly active users and 145 million daily active users on Twitter. 63 percent of all Twitter users worldwide are between 35 and 65. The ratio of female to male Twitter users is roughly one to two: 34 percent female and 66 percent male.",
      share_count: 22);

  Model snapchat = Model(
      title: "SnapChat",
      headquarter: "Los Angeles, CA",
      founded:2011,
      users: "360  million",
      like_count: 250,
      comment_count: 360,
      img: AssetImage("images/snapchat.jpg"),
      icon_img: AssetImage("images/snapchat_icon.jpg"),
      background_color:Colors.blueGrey.shade400,
      features: ["Conversation Insights","Temporary tweets","Audio Spaces"],
      Description1: "Twitter began as an idea that Twitter co-founder Jack Dorsey (@Jack) had in 2006.Jack sent the first message on Twitter on March 21, 2006, 9:50 p.m. It read, 'just setting up my twttr.'.There are 330 million monthly active users and 145 million daily active users on Twitter. 63 percent of all Twitter users worldwide are between 35 and 65. The ratio of female to male Twitter users is roughly one to two: 34 percent female and 66 percent male.",

      share_count: 22);
  Model linkedin = Model(
      title: "LinkedIn",
      headquarter: "Mountain View, CA",
      founded: 2003,
      users: "310 million",
      like_count: 250,
      comment_count: 360,
      background_color:Colors.blueGrey.shade400,
      img: AssetImage("images/linkedin.jpg"),
      icon_img: AssetImage("images/linkedin_icon.png"),
      features: ["Employee Notifications","Kudos and Team Moments","Page Completion Meter"],
      Description1: "LinkedIn is a social network for professionals to connect, share, and learn. It's like Facebook for your career. LinkedIn is for anybody and everybody who's interested in taking their professional life more seriously by looking for new opportunities to grow their careers and to connect with other professionals.You can think of LinkedIn as the high-tech equivalent of going to a traditional networking event where you go and meet other professionals in person, talk a little bit about what you do, and exchange business cards.",
      share_count: 22);
  BuildContext Context;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return ListView(children: [
      _eachCard(height, width, facebook, context),
      _eachCard(height, width, instagram, context),
      _eachCard(height, width, twitter, context),
      _eachCard(height, width, linkedin, context),
      _eachCard(height, width, snapchat, context),
    ]);
  }

//eachcarddesign
  Widget _eachCard(double height, double width, Model models,
      BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ClickPage(models),));
      },
      child: Card(
        elevation: 5.0,
        child: Container(
          color: Colors.white,
          width: double.infinity,

          child: Column(children: [
            _title(models),
            SizedBox(height: 10.0),
            _body(models),
            SizedBox(height: 10.0),
            _count(models)
          ]),
        ),
      ),
    );
  }

  Widget _title(Model models) {
    return Row(children: [
      Image(
        height: 60.0,
        width: 50.0,
        image: models.icon_img,
      ),
      SizedBox(width: 5.0),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                "${models.title}",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
              Text(
                " updated their status",
                style: TextStyle(fontSize: 20.0),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                "Aug 16",
                style: TextStyle(fontSize: 15.0, color: Colors.black87),
              ),
            )
          ])
    ]);
  }

  Widget _body(Model models) {
    return Container(
      child: Column(
        children: [
          _discription(models),
          SizedBox(height: 15.0),
          _photo(models)
        ],
      ),
    );
  }




  Widget _discription(Model models) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Text("${models.Description1}        See more...",
        style: TextStyle(color: Colors.black, fontSize: 18.0,),
        textAlign: TextAlign.justify,),
    );
  }

  Widget _photo(Model models) {
    return Container(child: Image(image: models.img));
  }

  Widget _count(Model models) {
    return Container(
        height: 83.0,
        child: Column(children: [
          _likeShow(models),
          Divider(color: Colors.grey.shade300, thickness: 1.5),
          _likeButtom()
        ]));
  }

  Widget _likeShow(Model models) {
    return Row(
        mainAxisSize: MainAxisSize.max, children: [
      Stack(overflow: Overflow.visible, children: [
        Positioned(
          left: 27.0,
          child: Container(
            padding: EdgeInsets.all(4.8),
            decoration: BoxDecoration(
                color: Colors.red.shade500, shape: BoxShape.circle),
            child: Icon(Icons.favorite, color: Colors.white, size: 15.0),
          ),
        ),
        Positioned(
          child: Container(
            margin: EdgeInsets.only(left: 5.0),
            padding: EdgeInsets.all(4.8),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 2.5)],
                color: Colors.blue.shade700,
                shape: BoxShape.circle),
            child: Icon(Icons.thumb_up, color: Colors.white, size: 15.0),
          ),
        ),

      ]),
      SizedBox(width: 28.0),
      Text("${models.like_count}"),
      SizedBox(width: 145.0),
      Center(child: Text(
          "${models.comment_count} comments. ${models.share_count} Share",
          textAlign: TextAlign.right))
    ]);
  }

  Widget _likeButtom() {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0, left: 0.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        EachButton(iconData: Icons.thumb_up_outlined, data: "Like"),
        EachButton(iconData: Icons.mode_comment_outlined, data: "Comment"),
        EachButton(iconData: Icons.screen_share_outlined, data: "Share"),
      ]),
    );
  }


  Widget EachButton({iconData, data, align}) {
    return Container(
      //like
      child: Row(children: [
        Icon(iconData, size: 25.0),
        SizedBox(width: 8.0),
        Text(
          data,
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
/*
class EachButton extends StatelessWidget {
  IconData iconData;
  String data;
  String align;

  EachButton({this.iconData, this.data, this.align});

  @override
  Widget build(BuildContext context) {
    return Container(
      //like
      child: Row(children: [
        Icon(iconData, size: 25.0),
        SizedBox(width: 8.0),
        Text(
          data,
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
        ),
      ]),
    );

  }
}
*/