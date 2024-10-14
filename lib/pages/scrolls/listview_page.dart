import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
const ListviewPage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.orange,
            thickness: 3,
          );
        },
        itemCount: 50,
        itemBuilder: (context, index){
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Item $index'),
            subtitle: const Text('Flutter é TOP, junto do listView'),
            leading: const CircleAvatar(),
            trailing: const Icon(Icons.arrow_forward),
          );
        }
      )
    );
  }
}