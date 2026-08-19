import 'package:flutter/material.dart';

// pantalla 1

class PantallaContador extends StatefulWidget {

  const PantallaContador({super.key});

  // creación del estado
  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}



class _PantallaContadorState extends State<PantallaContador> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( // Pantalla actual (scaffold)
        // Barra superior
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // flexbox
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              if (clickCounter >1)
                const Text('Clicks', style: TextStyle(fontSize: 25))
              else
                const Text('Click', style: TextStyle(fontSize: 25))
            ],
          ),
        ),
        // Botón flotante
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Acción del botón
            clickCounter+=1;
            setState((){}); // RE-renderizar
          },
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}