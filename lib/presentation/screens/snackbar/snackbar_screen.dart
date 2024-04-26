import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  void showCustomSnackBar( BuildContext context) {

    // Limpia el snackbar
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
          content: const Text('Hola mundos'),
          action: SnackBarAction(label: 'Ok!', onPressed: () {},),
          duration: const Duration( milliseconds: 200),
        
        )
      );

  }

  void openDialog( BuildContext context ) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) =>   AlertDialog(
        title:  const Text('¿Estás seguro?'),
        content:  const Text('Occaecat velit tempor deserunt incididunt nostrud.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(), 
            child: const Text('Cancelar')
            ),
          FilledButton(onPressed: () => context.pop(), 
          child: const Text('Aceptar')
          )
        ],
      )
      );

  }
  
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  
                  context: context,
                  children: [
                    
                    const Text('Voluptate aliqua cillum consectetur sunt do enim esse quis quis anim magna.')
                  ]
                );
              }, 
            child: const Text('Licencias usadas'),
            ),

            FilledButton(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackBar(context),
          
      ),
    );
  }
}