import 'package:flutter/material.dart';

class FastDeliveryPage extends StatelessWidget {
  const FastDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.image.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // Top-left back button
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    color: Colors.black87,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),

              // Center Card
              Center(
                child: Container(
                  width: 320,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white, // solid white card
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.30),
                        blurRadius: 30,
                        offset: const Offset(0, 18),
                      ),
                    ],
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 8),

                      const Text(
                        "Fast Flower\nDelivery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Get flowers delivered quickly\nwithout any hassle.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Delivery scooter image
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.95, end: 1),
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeOutBack,
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: child,
                          );
                        },
                        child: Image.asset(
                          "assets/images/image5.jpg", // your delivery image
                          height: 170,
                        ),
                      ),

                      const SizedBox(height: 26),

                      // Get Started button
                      GestureDetector(
                        onTap: () {
                          // TODO: navigate to next or home
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFF4D94),
                                Color(0xFFFF6FB1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
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
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Page indicator — third dot active
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          _PageDot(isActive: false),
                          SizedBox(width: 6),
                          _PageDot(isActive: false),
                          SizedBox(width: 6),
                          _PageDot(isActive: true), 
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageDot extends StatelessWidget {
  final bool isActive;
  const _PageDot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 7,
      width: isActive ? 18 : 7,
      decoration: BoxDecoration(
        color:
            isActive ? Colors.pinkAccent : Colors.pinkAccent.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
