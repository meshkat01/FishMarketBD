import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar (
{
  String? title,
  List<Widget>? action,
  Widget? isLeding,
}
    ){
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: isLeding ?? IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
    title: title != null ? Text(title) : null,
    actions: action ,
  );
}