import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
const MaterialBannerPage({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Material Banner"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: const Text('Este é um banner'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                        },
                        child: const Text('Fechar'),
                      )
                    ],
                  ),
                );
              }, 
              child: const Text('Mostrar Banner'),
            ),
            ElevatedButton(
                onPressed: () {
                  final materialBanner = MaterialBanner(
                    forceActionsBelow: true,
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                        },
                        child: const Text('Fechar'),
                      )
                    ],
                    content: const Text('Usuário salvo com sucesso', style: TextStyle(fontSize: 20, color: Colors.white),),
                    backgroundColor: Colors.green,
                  );
                  ScaffoldMessenger.of(context).showMaterialBanner(materialBanner);

                  Future.delayed(const Duration(seconds: 2), () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  });
                },
                child: const Text('Simple Material Banner')
            ),
            
          ],
        )
      ),
    );
  }
}