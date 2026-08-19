import 'package:flutter/material.dart';

class SuMensaje extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // alinear a la derecha (mis mensajes)
      children: [
        Container (
          decoration: BoxDecoration( // caja exterior (bubble)
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding( // padding interno (bubble)
            padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),

        // imagen
        _ImageBubble(),
        SizedBox(height: 10),
      ],
    );
  }
}



class _ImageBubble extends StatelessWidget {
  const new({super.key});
 
  @override
  Widget build(BuildContext context) {

    // MediaQuery da información del dispositivo
    final size = MediaQuery.of(context).size; // tamaño pantalla

    return ClipRRect(
      borderRadius: BorderRadius.circular(20 ),
      child: Image.network( // mantener siempre las proporciones
        'https://yesno.wtf/assets/yes/8-2f93962e2ab24427df8589131da01a4d.gif',
        width: size.width*0.7,
        height: 150,
        fit: BoxFit.cover,
      ));

  }
}