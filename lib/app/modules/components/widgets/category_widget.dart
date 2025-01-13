import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../data/category_model.dart' ;

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(child: 
        Image.asset(category.thumbnail,fit:BoxFit.cover)
        ),
        Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(
          sigmaY: 0.2,sigmaX:0.2
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0.5, 0.5),
              )
            ]
          ),
        ),),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Text(category.title, style:TextStyle(
            color:Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}
