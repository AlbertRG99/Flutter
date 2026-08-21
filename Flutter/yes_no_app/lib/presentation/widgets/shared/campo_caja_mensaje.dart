import 'package:flutter/material.dart';

class CajaTexto extends StatelessWidget {

  final ValueChanged<String> onValue; 

  const CajaTexto({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    // Controlador de la caja de input de texto (handler)
    final controladorTexto = TextEditingController();
    final focusNode = FocusNode(); // cuando elemento necesita un foco

    final colors = Theme.of(context).colorScheme;

    // Borde del campo de texto (leído por el decorador)
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    // Decorador genral del campo de entrada de texto
    final inputDecoration = InputDecoration(
      hintText: 'Acaba tu mensaje con un "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = controladorTexto.value.text;

          // 
          onValue(textValue);

          controladorTexto.clear();
        },
      ),
    );

    // ---> Campo de texto <---
    return TextFormField(

      onTapOutside: (event) { // cuando se hace click fuera, se cierra el teclado
        focusNode.unfocus();
      },

      focusNode: focusNode, // eviar cerra el teclado al enviar

      controller: controladorTexto, // limpiar texto tras enviar

      // Modificar la apariencia
      decoration: inputDecoration,

      // Valor enviado al presionar ENTER
      onFieldSubmitted: (value) { 
        print('Enviado el valor $value');
        controladorTexto.clear(); // limpiar al enviar (ENTER)
        focusNode.requestFocus(); // evitar que el teclado de minimice al enviar  
        onValue(value);
      },

      // Teclas que se van pulsado en ese momento
      //onChanged: (value) { 
      //  print('cambiado: $value');
      //},

    );
  }
}