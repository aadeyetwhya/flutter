import 'package:flutter/material.dart';

class Model {
  String title;
  String Description1;
  int like_count;
  int comment_count;
  int share_count;
  Color background_color;
  AssetImage img;
  AssetImage icon_img;
  String Description2;
  List features;
  String headquarter, users;
  int founded;
  Model(
      {this.title,
      this.Description1,
      this.like_count,
      this.comment_count,
      this.img,
      this.icon_img,
      this.share_count,
      this.background_color,
      this.Description2,
      this.features,
      this.founded,
      this.headquarter,
      this.users});
}
