import 'package:flutter/material.dart';
import 'package:untitled1/models/shirt_model.dart';
import 'package:untitled1/widgets/shirt_card.dart';
import 'package:untitled1/widgets/shirt_card_data.dart';

class ShirtGrid extends StatefulWidget{
  final List<Shirt> shirts;
  const ShirtGrid({super.key, required this.shirts});

  @override
  _ShirtGridState createState() => _ShirtGridState();
}

class _ShirtGridState extends State<ShirtGrid>{
  Widget build(BuildContext context){
    final width=MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200/244,
      physics: const BouncingScrollPhysics(),
      children: widget.shirts.map((shirts)=>
      ShirtCard(id: shirts.id, description: shirts.description, image: shirts.image, price: shirts.price, name: shirts.name),
      ).toList(),
    );
  }
}