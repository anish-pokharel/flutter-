import 'package:flutter/material.dart';
import 'package:my_first_project/models/catalog.dart';
import 'package:meta/meta.dart';


class ItemWidget extends StatelessWidget {
  final Item item;
  // const ItemWidget ({Key key, this.item}):({super.key});
  // const ItemWidget({Key key, this.item}):super(key:key);
const ItemWidget({Key ?key, required this.item})
    : assert(item != null),
      super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        
        onTap: (){
          print("${item.name} pressed");
        },
        // leading: Image.network(item.image),
        // title: Text(item.desc),
        leading: item.image != null
            ? Image.network(item.image!)
            : Image.asset('placeholder_image.png'), // Replace with your placeholder image asset
        title: Text(item.name ?? "No description"),
        subtitle: Text(item.desc ?? "Nodescription" ),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}