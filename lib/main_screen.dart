import 'package:flutter/widgets.dart';
import 'package:my_design/new_screen.dart';
import 'custom_button.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        texto: "Ir a nueva pantalla",
        onPressed: () {
          // Navegar a la pantalla nueva
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const NewScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // Animación de transición (deslizamiento simple)
                final tween =
                    Tween(begin: const Offset(1, 0), end: Offset.zero);
                final curvedAnimation =
                    CurvedAnimation(parent: animation, curve: Curves.easeInOut);

                return SlideTransition(
                  position: tween.animate(curvedAnimation),
                  child: child,
                );
              },
            ),
          );
        },
      ),
    );
  }
}