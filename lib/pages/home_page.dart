import 'package:flutter/material.dart';
import 'package:my_first_project/models/catalog.dart';
import '../widgets/item_widget.dart';
import 'package:my_first_project/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList =List.generate(50, (index) => CatalogModel.items[0]);
    final int days =30 ;
    final String name ="anish ";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",),
      ),
      body:ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context ,index){
          return ItemWidget(item: dummyList[index],);
        }
      ),
      drawer: MyDrawer(),
    );
  }
}
