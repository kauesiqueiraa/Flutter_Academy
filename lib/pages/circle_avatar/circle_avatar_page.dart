import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
const CircleAvatarPage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Circle Avatar"),),
      body: const Column(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: Colors.amber,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //       'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
          //   ),
          // ),
          //  Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     // backgroundImage: NetworkImage('https://img.favpng.com/21/4/8/deadpool-football-manager-2017-spider-man-football-manager-2018-youtube-png-favpng-vhvY9sR1nVLcP0BASYeQf3wD3.jpg'),
          //   ),
          // )
          ImageAvatar(
            urlImage: 'https://img.favpng.com/21/4/8/deadpool-football-manager-2017-spider-man-football-manager-2018-youtube-png-favpng-vhvY9sR1nVLcP0BASYeQf3wD3.jpg',
          ),
          SizedBox(height: 20,),
          ImageAvatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png')
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.black], 
              begin: Alignment.topCenter, 
              end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.circular(100),
            color: Colors.red,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: const Text('AO VIVO', style: TextStyle(fontSize: 8),),
            ),
          ),
        ),
      ],
    );
  }
}