import 'package:flutter/material.dart';

class DiscoverFlowersPage extends StatelessWidget {
  const DiscoverFlowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // Use ONLY the background image (no gradient)
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.image.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // Top bar (back + skip)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                        color: Colors.pinkAccent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Main card
              Center(
                child: Container(
                  width: 320,
                  padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 28),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.30),
                        blurRadius: 30,
                        offset: const Offset(0, 20),
                      ),
                    ],
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Small label
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEBF5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "DISCOVER",
                          style: TextStyle(
                            fontSize: 11,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.w600,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "Discover\nBeautiful Flowers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const SizedBox(height: 22),

                      // Flower illustration image4.jpg
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
                          "assets/images/image4.jpg",  // YOUR new image
                          height: 170,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Button
                      GestureDetector(
                        onTap: () {
                          // TODO: Go to next page
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
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Find flowers by color, style and occasion.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 11,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Page indicator — second dot active
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          _PageDot(isActive: false),
                          SizedBox(width: 6),
                          _PageDot(isActive: true),
                          SizedBox(width: 6),
                          _PageDot(isActive: false),
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
        color: isActive
            ? Colors.pinkAccent
            : Colors.pinkAccent.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
