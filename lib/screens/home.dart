import 'package:flutter/material.dart';

import '../models/shirt_model.dart';
import '../widgets/shirt_grid.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=> _HomeState();
}
class _HomeState extends State<Home>{
  List<Shirt> shirts=[
    Shirt(id: 1,
      name: "Metallica T-Shirt",
      description: "A T-Shirt from the band Metallica.",
      image: "https://www.grindstore.com/cdn/shop/files/57100-front.jpg?v=1691408809&width=713",
        price: 25.00),
    Shirt(id: 2,
        name: "ACDC T-Shirt",
        description: "A T-Shirt from the band ACDC.",
        image: "https://shirtstore.eu/cdn/shop/files/PS-1-ACDC004-BK.jpg?v=1725611550&width=1125",
        price: 24.00),
    Shirt(id: 3,
        name: "Back To The Future T-Shirt",
        description: "A T-Shirt from the movie Back To The Future.",
        image: "https://shirtstore.eu/cdn/shop/files/UV-1-BTTF008-BK.jpg?v=1724766017&width=800",
        price: 20.00),
    Shirt(id: 4,
        name: "Terminator T-Shirt",
        description: "A T-Shirt from the movie Terminator 1984.",
        image: "https://shirtstore.eu/cdn/shop/files/CLC-1-TERM006-BK.jpg?v=1724776716&width=400",
        price: 21.00),
    Shirt(id: 5,
        name: "Space Cat T-Shirt",
        description: "A T-Shirt with a space cat.",
        image: "https://shirtstore.eu/cdn/shop/files/AB-1-19944_b.jpg?v=1724764686&width=400",
        price: 22.00),
    Shirt(id: 6,
        name: "Volbeat T-Shirt",
        description: "A T-Shirt from the band Volbeat.",
        image: "https://shirtstore.eu/cdn/shop/files/WMX-1-VB008-BK.jpg?v=1724782055&width=400",
        price: 25.00),
    Shirt(id: 7,
        name: "Ramones T-Shirt",
        description: "A T-Shirt from the band The Ramones.",
        image: "https://shirtstore.eu/cdn/shop/files/15135_az_17024.jpg?v=1724657894&width=800",
        price: 25.00),
    Shirt(id: 8,
        name: "D&D Beholder T-Shirt",
        description: "A T-Shirt for the roleplay game Dungeons & Dragons.",
        image: "https://shirtstore.eu/cdn/shop/files/HSB-1-DAD003-BK.jpg?v=1724778270&width=400",
        price: 23.00),
    Shirt(id: 9,
        name: "Dark Knight T-Shirt",
        description: "A T-Shirt about The character Batman.",
        image: "https://shirtstore.eu/cdn/shop/files/WB-1-BAT037-B.jpg?v=1724764877&width=1125",
        price: 21.00),
    Shirt(id: 10,
        name: "Thundercats T-Shirt",
        description: "A T-Shirt from the cartoon Thundercats.",
        image: "https://shirtstore.eu/cdn/shop/files/WB-1-TCTS002-HG.jpg?v=1724777150&width=400",
        price: 20.00),

  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        title: const Text("201158",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ShirtGrid(shirts: shirts),
    );
  }
}
