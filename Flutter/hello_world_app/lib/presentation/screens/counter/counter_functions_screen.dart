import 'package:flutter/material.dart';

// pantalla 1

class PantallaContadorFunciones extends StatefulWidget {

  const PantallaContadorFunciones({super.key});

  // creación del estado
  @override
  State<PantallaContadorFunciones> createState() => _PantallaContadorFunciones();
}



class _PantallaContadorFunciones extends State<PantallaContadorFunciones> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Pantalla actual (scaffold)
        // Barra superior
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton( // botón de refrescar
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              })
          ]
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
        
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Botón flotante 1
            BotonPersonalizado(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() { // actualizar estado
                  clickCounter = 0;
                });
              },
            ),
            
            // separación entre botones
            const SizedBox(height: 10), 

            BotonPersonalizado(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() { // actualizar estado
                  clickCounter -= 1;
                });
              },
            ),

            // separación entre botones
            const SizedBox(height: 10), 

            // Botón flotante 2
            BotonPersonalizado(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() { // actualizar estado
                  clickCounter += 1;
                });
            }),
          ],
        ),
      ),
    );
  }
}


// CLASE PARA BOTÓN PERSONALIZADO
class BotonPersonalizado extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;  // función acción botón como parámetro

  const BotonPersonalizado({
    super.key,
    required this.icon, // tipo icono por parámetro
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
} 