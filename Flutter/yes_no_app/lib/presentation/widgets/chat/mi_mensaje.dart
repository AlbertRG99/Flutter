import 'package:flutter/material.dart';

class MiMensaje extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, // alinear a la derecha (mis mensajes)
      children: [
        Container (
          decoration: BoxDecoration( // caja exterior (bubble)
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding( // padding interno (bubble)
            padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
            child: Text('Laboris duis dolore', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}