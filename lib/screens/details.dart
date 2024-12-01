import 'package:flutter/material.dart';
import 'package:untitled1/models/shirt_model.dart';

import 'package:untitled1/widgets/detail_data.dart';
import 'package:untitled1/widgets/detail_image.dart';
import 'package:untitled1/widgets/detail_title.dart';
import 'package:untitled1/widgets/details_back_button.dart';

class Details extends StatelessWidget{
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments= ModalRoute.of(context)!.settings.arguments as Shirt;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(name: arguments.name),
            DetailData(id: arguments.id,description: arguments.description, name:arguments.name, price: arguments.price,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}