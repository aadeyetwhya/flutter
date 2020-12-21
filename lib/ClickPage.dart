import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment1/data.dart';
class ClickPage extends StatelessWidget {
  Model models = Model();

  ClickPage(this.models);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: models.background_color,
        appBar: AppBar(brightness: Brightness.light,
            elevation: 5.0,
            backgroundColor: Colors.blue.shade900,
            title: Center(child:
            Text("Social Media Page", style: TextStyle(letterSpacing: 4.0)))),
        body: _body());
  }

  Widget _body() {
    return ListView(children: [_cover(), _description()]);
  }

  Widget _cover() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Stack(
          overflow: Overflow.visible,
          children: [
            Image(image:models.img,),


            Positioned(left: 13.0,
                top: 145.0,
                child: Image(image: models.icon_img,
                    height: 90.0)),
          ],),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "${models.title}", style: TextStyle(fontWeight: FontWeight.w700,

              fontSize: 40.0,
              letterSpacing: 1.5,
              color: Colors.white,
              fontStyle: FontStyle.italic,),),
          )
        ]);
  }

  Widget _description() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              models.Description1,
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 18.0)),
          SizedBox(height:10.0),
          Row(children:[
            SizedBox(width:40.0),


            Column(
                crossAxisAlignment:CrossAxisAlignment.start,children:[
            Row(children:[
              Icon(Icons.arrow_right),
              Text("Founded:  ${models.founded}",style:TextStyle(fontSize:18.0,color:Colors.white))]),
              Row(children:[
                Icon(Icons.arrow_right),
                Text("HeadQuarters:   ${models.headquarter}",style:TextStyle(fontSize:18.0,color:Colors.white))]),
              Row(children:[
                Icon(Icons.arrow_right),
                Text("Active Users:  ${models.users}",style:TextStyle(fontSize:18.0,color:Colors.white))]),
              ]),
           ]),
          SizedBox(height:20.0),
          Text(
              "Latest Features",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 22.0,fontWeight: FontWeight.w500)),

             Column(crossAxisAlignment:CrossAxisAlignment.start,
                 children:Features()),
          SizedBox(height:20.0)
          
        ],
      ),

    );
  }
  List<Widget> Features(){
    List<Widget> features=[];
    int len=models.features.length;
    for(int i=0;i<len;i++){
      print(i);
      Widget text=Text("  ${i+1}   ${models.features[i]}",style:TextStyle(fontSize:18.0,color:Colors.white));
      features.add(text);
    }
    return features;
  }
}
