import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/mensaje.dart';


class MiMensaje extends StatelessWidget {
  //const new({super.key});

  final Mensaje mensaje; // Mensaje (clase Mensaje) de entrada

  const MiMensaje({
    super.key,
    required this.mensaje,
  });

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
            child: Text(mensaje.text, style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}