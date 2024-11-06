import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbar,
  forms,
  cidades,
  stack,
  stack2,
  bottom_navigator_bar,
  circle_avatar,
  colors,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              tooltip: 'Selecione um item do Menu',
              icon: const Icon(Icons.menu_rounded),
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopupMenuPages.layout_builder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.botoes_rotacao_texto:
                    Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                    break;
                  case PopupMenuPages.scrolls_single_child:
                    Navigator.of(context).pushNamed('/scrolls/single_child');
                    break;
                  case PopupMenuPages.scrolls_list_view:
                    Navigator.of(context).pushNamed('/scrolls/list_view');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogs');
                    break;
                  case PopupMenuPages.snackbar:
                    Navigator.of(context).pushNamed('/snackbar');
                    break;
                  case PopupMenuPages.forms:
                    Navigator.of(context).pushNamed('/forms');
                    break;
                  case PopupMenuPages.cidades:
                    Navigator.of(context).pushNamed('/cidades');
                    break;
                  case PopupMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopupMenuPages.stack2:
                    Navigator.of(context).pushNamed('/stack/page2');
                    break;
                  case PopupMenuPages.bottom_navigator_bar:
                    Navigator.of(context).pushNamed('bottom_navigator_bar');
                    break;
                  case PopupMenuPages.circle_avatar:
                    Navigator.of(context).pushNamed('/circle_avatar');
                    break;
                  case PopupMenuPages.colors:
                    Navigator.of(context).pushNamed('/colors');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return const <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                      value: PopupMenuPages.container,
                      child: Text('Container')),
                  PopupMenuItem<PopupMenuPages>(
                      value: PopupMenuPages.rows_columns,
                      child: Text('Rows e Columns')),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: Text('MediaQuery'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child: Text('LayoutBuilder'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao_texto,
                    child: Text('Botões de Rotação Texto'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.scrolls_single_child,
                    child: Text('SingleChildScrollView'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.scrolls_list_view,
                    child: Text('ListView'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar,
                    child: Text('Snackbar'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms,
                    child: Text('Forms'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades,
                    child: Text('Cidades'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack,
                    child: Text('Stack')
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack2,
                    child: Text('Stack Exemplo')
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottom_navigator_bar,
                    child: Text('Bottom Navigator Bar')
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.circle_avatar,
                    child: Text('Circle Avatar')
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.colors,
                    child: Text('Colors')
                  ),
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
