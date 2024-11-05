import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
const StackPage2({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Stack 2"),),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://blog.ebaconline.com.br/blog/wp-content/uploads/2023/11/image6-1.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            color: Colors.white38,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 12,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text('Dog Astronaut',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Astronauta é um profissional que trabalha na exploração do espaço, realizando missões, experimentos científicos e manutenções em naves e estações espaciais'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}