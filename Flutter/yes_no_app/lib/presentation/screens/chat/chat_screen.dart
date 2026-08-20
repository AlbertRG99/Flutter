import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(  // por defecto, la lista es infinita
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0) // alternar entra mis mensajes y los del otro (pruebas)
                    ? const SuMensaje()
                    : const MiMensaje();
                },
              ),
            ),

            // Caja de texto
            const CajaTexto(),
          ],
        ),
      ),
    );
  }
}