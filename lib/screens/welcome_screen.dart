import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // ONLY background image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.image.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: SafeArea(
          child: Stack(
            children: [
              // top-left arrow
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    color: Colors.black87,
                    onPressed: () {
                      // later: Navigator.pop(context);
                    },
                  ),
                ),
              ),

              // center card
              Center(
                child: Container(
                  width: 320,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.96),
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

                      // title
                      const Text(
                        "Welcome to\nFlower Delivery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                          height: 1.2,
                        ),
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        "Send fresh flowers to your loved ones\nanytime, anywhere.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 22),

                      // bike illustration
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
                          "assets/images/flowerbike.image3.jpg",
                          height: 170,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Get Started button
                      GestureDetector(
                        onTap: () {
                          // TODO: go to DiscoverBeautifulFlowers page
                          // Navigator.push(...);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 24),
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
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      // page indicator dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          _PageDot(isActive: true),  // first screen
                          SizedBox(width: 6),
                          _PageDot(isActive: false),
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
        color:
            isActive ? Colors.pinkAccent : Colors.pinkAccent.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
