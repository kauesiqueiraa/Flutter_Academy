import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
const MediaQueryPage({ super.key });

  @override
  Widget build(BuildContext context){
    final mediaQuery = MediaQuery.of(context);
    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight; 

    print('Largura: ${mediaQuery.size.width}');
    print('Altura: ${mediaQuery.size.height}');
    print('Orientação: ${mediaQuery.orientation}');
    print('Padding Top: ${mediaQuery.padding.top}');
    print('Tamanho AppBar Default: ${kToolbarHeight}');

    return Scaffold(
      appBar: AppBar(title: const Text("Media Query", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * .5,
              height: heightBody * .5,
            ),
            Container(
              color: Colors.amber,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            )
          ],
        ),
      )
    );
  }
}