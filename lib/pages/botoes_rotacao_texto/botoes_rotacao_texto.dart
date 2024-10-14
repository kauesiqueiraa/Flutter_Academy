import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {
const BotoesRotacaoTexto({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Botões de Rotação Texto")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text('Botão 1'),
                  ),
                ),
                const Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {}, 
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(50, 10),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.exit_to_app),
              color: Colors.yellow,
            ),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.blue,
                shadowColor: Colors.green,
                minimumSize: const Size(120, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )
              ),
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 10,),
             ElevatedButton(
              onPressed: () {}, 
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.resolveWith((states){
                  if(states.contains(WidgetState.pressed)) {
                    return const Size(150, 150);
                  } else if (states.contains(WidgetState.hovered)) {
                    return const Size(180, 180);
                  }
                    return const Size(120, 50);
                }),
                backgroundColor: WidgetStateProperty.resolveWith((states){
                  if(states.contains(WidgetState.pressed)) {
                    return Colors.black;
                  } else if (states.contains(WidgetState.hovered)) {
                    return Colors.green;
                  }
                  return Colors.red;
                })
              ),
              child: const Text('ElevatedButton 1'),
            ),
            const SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarms), 
              label: const Text('ElevatedButton Icon')
            ),
            InkWell(
              child: const Text('InkWell'),
              onTap: (){},
            ),
            GestureDetector(
              child: const Text('GestureDetector'),
              onTap: (){},
              onVerticalDragStart: (_) => print('Movimentado'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [ BoxShadow(color: Colors.black, blurRadius: 10, offset: Offset(0,5))],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: (){},
                child: const Center(child: Text('gradiente', style: TextStyle(color: Colors.white),))),
            )
          ],
        ),
      ),
    );
  }
}