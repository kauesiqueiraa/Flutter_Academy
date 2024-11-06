import 'package:flutter/material.dart';

class DesafioPage extends StatelessWidget {
const DesafioPage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Instagram", style: TextStyle (color: Colors.white),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            tooltip: 'Pesquisar',
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            tooltip: 'Pesquisar',
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            tooltip: 'Pesquisar',
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.black54,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings_applications_rounded),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.circle),
          ),
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Avatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
                  Avatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
                  Avatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
                  Avatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
                  Avatar(urlImage: 'https://w7.pngwing.com/pngs/217/467/png-transparent-computer-icons-avatar-deadpool-desktop-deadpool-pixel-art-television-comics-fictional-character.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.red,),
                      SizedBox(width: 10,),
                      Text('paulo.serra45', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Icon(Icons.more_horiz, color: Colors.white,)
                  ],
                ),
            ),
            const Image(image: NetworkImage('https://i0.wp.com/ovicio.com.br/wp-content/uploads/2024/10/20241026-dragon-ball-daima-goku-weak.webp?resize=555%2C555&ssl=1')),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite, color: Colors.white,),
                      SizedBox(width: 10,),
                      Icon(Icons.chat_bubble_outline_outlined, color: Colors.white,),
                      SizedBox(width: 10,),
                      Icon(Icons.call_made_rounded, color: Colors.white,),
                    ],
                  ),
                  Icon(Icons.favorite, color: Colors.white,),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('1.463 curtidas', style: TextStyle(color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'paulo.serra45 ',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: '🤰 GESTANTES, A 2° DOSE É ESSENCIAL PARA A SUA PROTEÇÃO... ',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: 'mais',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                maxLines: null, // Permite que o texto quebre em várias linhas
                overflow: TextOverflow.visible,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'ver todos os 73 comentarios', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w100),),
            ),
          ],
        ),
      )
      
    );
  }
}

class Avatar extends StatelessWidget {
  final String urlImage;
  const Avatar({super.key, required this.urlImage});

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