class Shirt{
  int id;
  String image;
  String description;
  double price;
  String name;

  Shirt({required this.id,required this.name, required this.description,required this.image,required this.price});

  Shirt.fromJson(Map<String,dynamic> data):
      id=data['id'],
      description=data['description'],
      image=data['image'],
      price=data['price'],
      name=data['name'];
  Map<String,dynamic> toJson()=>{'id':id,'description':description,'image':image,'price':price,'name':name};
}