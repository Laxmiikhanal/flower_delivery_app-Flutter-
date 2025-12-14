// lib/screens/loginpage_screen.dart
import 'package:flutter/material.dart';
import 'package:flower_delivery_app/screens/registerpage_screen.dart';
import 'package:flower_delivery_app/screens/homepage_screen.dart'; // 👈 ADD THIS

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // FULL-SCREEN BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              "assets/images/image6.png",
              fit: BoxFit.cover,
            ),
          ),

          // DARK OVERLAY
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.18),
            ),
          ),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Container(
                  width: 330,
                  height: 450,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22, vertical: 24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.72),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Explore your\nfavorite flowers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 28),

                      // EMAIL FIELD
                      const _FrostedInput(
                        hintText: "Enter your email",
                        icon: Icons.mail_outline,
                        obscure: false,
                      ),

                      const SizedBox(height: 16),

                      // PASSWORD FIELD
                      const _FrostedInput(
                        hintText: "Enter your password",
                        icon: Icons.visibility_off_outlined,
                        obscure: true,
                      ),

                      const SizedBox(height: 28),

                      // LOGIN BUTTON → HomePage
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HomePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          padding:
                              const EdgeInsets.symmetric(vertical: 13),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFF4D94),
                                Color(0xFFFF7AB5),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(26),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pinkAccent.withOpacity(0.45),
                                blurRadius: 18,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 22),

                      // REGISTER LINK
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Don’t have an account? ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 18,
                              color: Colors.pinkAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// --------------------------
/// CUSTOM TEXT FIELD WIDGET
/// --------------------------
class _FrostedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscure;

  const _FrostedInput({
    required this.hintText,
    required this.icon,
    required this.obscure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // full width
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(26),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 16,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                isDense: true,
              ),
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Icon(
            icon,
            size: 22,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
