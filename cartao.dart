import 'package:flutter/material.dart';
import 'main.dart';

class cartao extends StatelessWidget {
  const cartao({super.key});
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
              padding: EdgeInsets.only(top:60),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.elliptical(170, 25)),
                  color: Colors.red),
              child: const Column(
                children: [
                  Text(
                    'Nome da Pessoa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    ),
                  ),
                  Text(
                    'informacao necessaria',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  Text(
                    'RS 12.000,00',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 30
                    ),
                  )
                ],
              ),
            ),
            Image.network
            (
              'https://th.bing.com/th/id/OIP.0NDUgIN8K_1Zwpatjq87bQAAAA?rs=1&pid=ImgDetMain'
            ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ultimas Transacoes',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 238, 235, 235),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      size: 50,
                    ),
                    Column(
                      children: [
                        Text('Estabelecimento 1'),
                        Text('Qualquer coisa 1'),
                        Text('Valor 1')
                      ],
                    ),
                    Text('RS12.000,00')
                  ],
                ),                
              )
             ], 
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 238, 235, 235),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      size: 50,
                    ),
                    Column(
                      children: [
                        Text('Estabelecimento 2'),
                        Text('Qualquer coisa 2'),
                        Text('Valor 2')
                      ],
                    ),
                    Text('RS2.000,00')
                  ],
                ),                
              )
             ], 
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 238, 235, 235),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      size: 50,
                    ),
                    Column(
                      children: [
                        Text('Estabelecimento 3'),
                        Text('Qualquer coisa 3'),
                        Text('Valor 3')
                      ],
                    ),
                    Text('RS200,00')
                  ],
                ),
                
              )
             ], 
          ),          
          ],          
        ),        
      ),
      floatingActionButton:FloatingActionButton(onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyApp())
          );
      },
      backgroundColor: Colors.red,
      child: const  Icon(
        Icons.keyboard_return,
        color: Colors.white,
        size: 50,
      ),
      )
    );
  }
}