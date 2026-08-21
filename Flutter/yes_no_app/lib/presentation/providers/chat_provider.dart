// Gestor de estado (provider) para el chat
// La clase provider solo la heredan los hijos widgets que dependan de eso.

import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/mensaje.dart';
import 'package:provider/provider.dart';


class ChatProvider extends ChangeNotifier { // Notifica cuando hay cambios

  // almacenamiento del estado de mensajes
  List<Mensaje> listaMensajes = [
    Mensaje(text: "Hola amor!", deQuien: DeQuien.mio),
    Mensaje(text: "Ya regresaste del trabajo?", deQuien: DeQuien.mio),
  ];

  // almacenamiento de estado del scroll
  final ScrollController controlardorScroller = ScrollController();

  // instancia respuesta del otro (petición a gif)
  final ObtenerRespuestaSiNo obtenerRespuestaSiNo = ObtenerRespuestaSiNo();

  // Este es el evento que se va a disparar cuandos se pulse el botón de enviar
  // y se va a agregar a la lista de mensajes. 

  Future<void> enviarMensaje( String text ) async {

    if (text.isNotEmpty){ // solo si el mensaje contiene texto
      // Crear nuevo mensaje (el enviado por el usuario desde el teclado) y agregarlo a la lista del provider
      final nuevoMensaje = Mensaje(text: text, deQuien: DeQuien.mio);
      listaMensajes.add(nuevoMensaje);

      // si es pregunta, hacer que responda el otro conel gif
      if (text.endsWith('?')) {
        suRespuesta();
      }

      // Re-renderizar el widget (notificar)
      notifyListeners();

      // bajar el scroll
      moverScrollAbajo();
    }
  }

  Future<void> suRespuesta() async {
    final suMensaje = await obtenerRespuestaSiNo.getRespuesta();
    listaMensajes.add(suMensaje);
    
    notifyListeners();
     
    moverScrollAbajo();
  }

  Future<void> moverScrollAbajo() async {

    await Future.delayed(const Duration(milliseconds: 100));
    
    controlardorScroller.animateTo(
      controlardorScroller.position.maxScrollExtent, // scroll al final
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }

}