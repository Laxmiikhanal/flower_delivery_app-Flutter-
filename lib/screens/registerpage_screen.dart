// lib/screens/registerpage_screen.dart
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              "assets/images/image6.png",
              fit: BoxFit.cover,
            ),
          ),

          // OVERLAY (FIXED: NOT full black)
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.18), // FIXED HERE
            ),
          ),

          SafeArea(
            child: Center(
              child: Container(
                width: 320,
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 24,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.72),
                  borderRadius: BorderRadius.circular(28),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Create your\nBlossom account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const _FrostedInput(
                      hintText: "Full name",
                      icon: Icons.person_outline,
                      obscure: false,
                    ),
                    const SizedBox(height: 12),

                    const _FrostedInput(
                      hintText: "Email address",
                      icon: Icons.mail_outline,
                      obscure: false,
                    ),
                    const SizedBox(height: 12),

                    const _FrostedInput(
                      hintText: "Password",
                      icon: Icons.visibility_off_outlined,
                      obscure: true,
                    ),

                    const SizedBox(height: 18),

                    // REGISTER BUTTON
                    GestureDetector(
                      onTap: () {
                        // TODO: handle registration logic
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                          horizontal: 24,
                        ),
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
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // BACK TO LOGIN
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_back_rounded,
                            size: 18,
                            color: Colors.pinkAccent,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Back to login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------
// CUSTOM INPUT FIELD WIDGET
// -----------------------------
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
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
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Icon(
            icon,
            size: 18,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
