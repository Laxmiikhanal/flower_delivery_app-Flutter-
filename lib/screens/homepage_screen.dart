import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF5F9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TOP BAR
              Row(
                children: [
                  const Text(
                    "BLOSSOM",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: const Icon(Icons.notifications_none_rounded,
                        color: Colors.pinkAccent),
                  ),
                  const SizedBox(width: 12),

                  // PROFILE IMAGE
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        AssetImage("assets/images/image4.jpg"),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // SEARCH BAR
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 10,
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tulips",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF4D94),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                      child: const Text(
                        "Search",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // OFFERS
              const Text(
                "Offers",
                style:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _OfferCard(
                      title: "Special Offer",
                      subtitle: "Fresh flowers for you",
                      imagePath: "assets/images/flowers.jpg",
                    ),
                    SizedBox(width: 12),
                    _OfferCard(
                      title: "Sunflower Sale",
                      subtitle: "Brighten your day!",
                      imagePath: "assets/images/sunflowerrrr.jpg",
                    ),
                    SizedBox(width: 12),
                    _OfferCard(
                      title: "Exclusive",
                      subtitle: "Unique bouquets",
                      imagePath: "assets/images/imageflower.jpg",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // FLOWERS SECTION
              const Text(
                "Flowers",
                style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 12),

              Row(
                children: const [
                  Expanded(
                    child: _CategoryCard(
                      title: "Flowers",
                      imagePath: "assets/images/image8.jpg",
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _CategoryCard(
                      title: "Bouquet",
                      imagePath: "assets/images/imageflower.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

// OFFER CARD
class _OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const _OfferCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.45),
                    Colors.black.withOpacity(0.05),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style:
                      const TextStyle(color: Colors.white70, fontSize: 12),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      size: 18,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// CATEGORY CARD (lower section)
class _CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const _CategoryCard({
    required this.title,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// BOTTOM NAV BAR
class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _NavItem(
            icon: Icons.home_rounded,
            label: "Home",
            isActive: true,
          ),
          _NavItem(
              icon: Icons.shopping_bag_outlined,
              label: "Cart"),
          _NavItem(
            icon: Icons.local_offer_outlined,
            label: "Offer",
          ),
          _NavItem(
            icon: Icons.menu_rounded,
            label: "Menu",
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const _NavItem(
      {required this.icon, required this.label, this.isActive = false, super.key});

  @override
  Widget build(BuildContext context) {
    const Color pink = Color(0xFFFF4D94);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            size: 24, color: isActive ? pink : Colors.grey),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight:
                isActive ? FontWeight.w600 : FontWeight.w400,
            color: isActive ? pink : Colors.grey,
          ),
        ),
      ],
    );
  }
}
