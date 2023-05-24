
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
 
  final url = Uri.parse('https://reqres.in/api/users');
  int? counter;
  var personalResult;

  

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: counter ,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text( personalResult.data[index].firstName),
            subtitle: Text(personalResult.data[index].email),
            leading: CircleAvatar(
              backgroundImage: 
              NetworkImage(personalResult.data[index].avatar),
            ),

          );
        }),
      ),
    );
  }
}
