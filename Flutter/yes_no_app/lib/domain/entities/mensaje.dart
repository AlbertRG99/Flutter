// El dominio solo puede tener lógina de Dart (nada de Widgets)
// Esta es una simple clase en Dart para etiquetar el mensaje.

enum DeQuien { mio, otro }

class Mensaje {
  final String text;
  final String? imageUrl;
  final DeQuien deQuien;

  Mensaje({
    required this.text,
    this.imageUrl,
    required this.deQuien
  });
}