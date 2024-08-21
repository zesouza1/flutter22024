import 'package:flutter/material.dart';
import 'cartao.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              height: 200,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(170, 25)),
                  color: Colors.red),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(55.0),
                      child: Column(
                        children: [
                          Text(
                            'Welcome, YOYOYO',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text('Information Necessary',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )),
                        ],
                      ),
                    ),
                    IconButton(
                      icon:const Icon(
                        Icons.keyboard_return,
                      size: 40,
                      color: Colors.white,
                      ),
                      onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const login())
          );
                      }, 
                    )
                  ]),
            ),
            //parte do meio do app
            Container(
              padding: EdgeInsets.only(top:70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: Colors.red, width: 2)),
                                    padding: EdgeInsets.all(10),
                            child: const Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 100,
                            ),
                          ),
                          const Text(
                            'Inicio',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red, width: 2)),
                                padding: EdgeInsets.all(10),
                            child: const Icon(Icons.attach_money,
                                color: Colors.red, size: 100),
                          ),
                          const Text(
                                'Money',
                                style: TextStyle(fontSize: 20),
                              ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red, width: 2)),
                                padding: EdgeInsets.all(10),
                            child: const Icon(
                              Icons.currency_exchange,
                              color: Colors.red,
                              size: 100,
                            ),
                          ),
                          const Text(
                                'Transacões',
                                style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red, width: 2)),
                                padding: EdgeInsets.all(10),
                            child: const Icon(Icons.replay,
                                color: Colors.red, size: 100),
                          ),                          
                          const Text(
                                'Circulacao',
                                style: TextStyle(fontSize: 20),
                              ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red, width: 2)),
                                padding: EdgeInsets.all(10),
                            child: const Icon(
                              Icons.emoji_objects,
                              color: Colors.red,
                              size: 100,
                            ),
                          ),
                          const Text(
                                'Luz',
                                style: TextStyle(fontSize: 20),
                              ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.red, width: 2)),
                                padding: EdgeInsets.all(10),
                            child: const Icon(Icons.build,
                                color: Colors.red, size: 100),
                          ),
                          const Text(
                                'Configuracao',
                                style: TextStyle(fontSize: 20),
                              ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const cartao())
          );
      },
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 50,
      ),
      )
    );
  }
}
