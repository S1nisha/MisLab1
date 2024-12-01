import 'package:flutter/material.dart';
import 'package:untitled1/models/shirt_model.dart';
import 'package:untitled1/widgets/shirt_card_data.dart';

class ShirtCard extends StatelessWidget{
  final int id;
  final String image;
  final double price;
  final String description;
  final String name;

  const ShirtCard({super.key, required this.id,required this.description,required this.image, required this.price,required this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[10],
        onTap: ()=>{
          Navigator.pushNamed(context, "/details",arguments: Shirt(id: id, description: description, image: image, price: price,name: name))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ShirtCardData(image: image, name: name,description: description,),
        ),
      ),
    );
  }
}