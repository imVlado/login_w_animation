import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Variable para controlar la visibilidad de la contraseña
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // Para obtener el tamaño del dispositivo
    final Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: 200,
              child: RiveAnimation.asset('assets/animated_login_character.riv'),
            ),
            // espacio entre el oso y el email
            const SizedBox(height: 10),
            // campo de texto de email
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Email',
                hintText: 'Ingresa tu email',
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: _obscureText, // Usamos la variable para controlar la visibilidad
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Cambiamos el estado al presionar
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Contraseña',
                hintText: 'Ingresa tu contraseña',
              ),
            ),
          ],
        ),
      ),
    );
  }
}