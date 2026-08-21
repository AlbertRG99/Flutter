import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/mensaje.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/mi_mensaje.dart';
import 'package:yes_no_app/presentation/widgets/chat/su_%20mensaje.dart';
import 'package:yes_no_app/presentation/widgets/shared/campo_caja_mensaje.dart';

class PantallaChat extends StatelessWidget {
  const PantallaChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://yt3.googleusercontent.com/RdpDO9NdTlOLFxvcBIF2VJrSmRgeGMccsjEi_wsRthQGwg0ho8BqYzy-12LHlrvVG0CYJwp-2Yc=s900-c-k-c0x00ffffff-no-rj',
            ),
          ),
        ),
        title: Text("Juan Mecánico"),
        centerTitle: false,
      ),
      body: _VistaChat(),
    );
  }
}

class _VistaChat extends StatelessWidget {
  const _VistaChat({super.key});

  @override
  Widget build(BuildContext context) {

    // Importar el provider de contexto desde el padre (escuchando)
    final chatProvider = context.watch<ChatProvider>();

    // Definir el body
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(  // por defecto, la lista es infinita
                controller: chatProvider.controlardorScroller, // control del scroll que tiene que ser notificado cuando hay un nuevo mensaje (se maneja en el provider)
                itemCount: chatProvider.listaMensajes.length, // lo que haya en la lista de mensajes del provider
                itemBuilder: (context, index) {
                  final mensaje = chatProvider.listaMensajes[index];

                  if (mensaje.deQuien == DeQuien.otro){
                    return SuMensaje();
                  } else {
                    return MiMensaje(mensaje: mensaje); // paso el mensaje de la lista del provider
                  }

                },
              ),
            ),

            // Caja de texto
            CajaTexto(
              onValue: chatProvider.enviarMensaje,
            ),
          ],
        ),
      ),
    );
  }
}