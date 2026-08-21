import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Importar los providers de contexto para mantener el contexto en toda la app (global)
    return MultiProvider( 
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()) // provider creado en /presentation/providers
      ],

      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(), // importar tema externo
        home: const PantallaChat()
        /*
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Center(
            child: FilledButton.tonal(
              onPressed: () { },
              child: Text('Click me')
              ),
          ),
        ),
        */
      ),
    );
  }
}