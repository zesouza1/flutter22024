import 'package:flutter/material.dart';
import 'main.dart';

class login extends StatelessWidget {
  const login({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
              width: 1000,
              height: 200,
              padding: const EdgeInsets.only(top:60),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(170, 25)),
                  color: Colors.red),
              child:const Center(
                child: Text(
                  'WELCOME TO THE BANK',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  )
                ),
              ),
              ),
            const SizedBox(height: 50,),
            const Text(
              'Usuario',
              style: TextStyle(
                fontSize: 20
              )
              ),
              const SizedBox(height: 50,),
              TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Digite seu usuario',
              ),
            ),
            const SizedBox(height: 50,),
            const Text(
              'Senha',
              style: TextStyle(
                fontSize: 20
              )
              ),
              const SizedBox(height: 50,),
              TextFormField(
              decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Digite sua senha',
              ),
            ),
            const SizedBox(height: 70,),
            TextButton(
              onPressed: (){ 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp())
                );                
              },              
            child: Text(
              'Entrar',
              style: TextStyle(
                fontSize: 40
              ),
            ),
            )
          ],
        ),        
      )
    );
  }
}