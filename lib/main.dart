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
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Datos 2 App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  String wordone = '';
  String wordtwo = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //crossAxisAlignment:CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                  child: Center(
                    child: Text(wordone+''+wordtwo),
                  ),
                ),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Por favor ingresa una palabra',
                border:const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrange,
                    width: 2
                  )
                ),
                suffixIcon: IconButton(
                    onPressed: (){
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                ),
              ),
            ),
            TextField(
              controller: _textController2,
              decoration: InputDecoration(
                hintText: 'Por favor ingresa una segunda palabra',
                border:const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    _textController2.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            MaterialButton(
                onPressed: (){
                 setState(() {
                   wordone = _textController.text;
                   wordtwo = _textController2.text;
                 });
                },
                color: Colors.red,
                child: const Text('Concatenar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ) ,
    );
  }
}

