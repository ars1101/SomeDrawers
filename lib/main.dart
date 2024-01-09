import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: NavigationDrawer(children: [Text("Обзор файловой системы", style: TextStyle(fontSize: 22),),
      Card(
      child: ListTile( leading: Icon(Icons.download) ,
      title: Text('загрузки'),
      trailing: PopupMenuButton(itemBuilder: (BuildContext context){
        return [
          const PopupMenuItem(child: Text("Удалить")),
          const PopupMenuItem(child: Text("Изменить")),
          const PopupMenuItem(child: Text("Открыть"))

        ];
      },),
    )
      ),
        Card(
            child: ListTile( leading: Icon(Icons.photo) ,
              title: Text('изображения'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),Card(
            child: ListTile( leading: Icon(Icons.file_copy) ,
              title: Text('файлы'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        Card(
            child: ListTile( leading: Icon(Icons.save) ,
              title: Text('документы'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        Card(
            child: ListTile( leading: Icon(Icons.table_restaurant) ,
              title: Text('рабочий стол'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        Card(
            child: ListTile( leading: Icon(Icons.gamepad) ,
              title: Text('игры'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),Card(
            child: ListTile( leading: Icon(Icons.open_in_browser) ,
              title: Text('файлы ОС'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        Card(
            child: ListTile( leading: Icon(Icons.person) ,
              title: Text('пользователи'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        Card(
            child: ListTile( leading: Icon(Icons.code) ,
              title: Text('программы'),
              trailing: PopupMenuButton(itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(child: Text("Удалить")),
                  const PopupMenuItem(child: Text("Изменить")),
                  const PopupMenuItem(child: Text("Открыть"))

                ];
              },),
            )
        ),
        ]),

      body: Center(child: OutlinedButton(onPressed: (){key.currentState?.openDrawer();}, child: Text("Open Drawer")))

    );
  }
}
