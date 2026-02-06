import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String authorName = 'Mike Katz';
  final String authorTitle = 'Smoothie Connoisseur';
  final String smoothies = 'Smoothies';
  final String recipe = 'Recipe';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/smoothie.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _buildAuthorCard(authorName, authorTitle),
            ),

            Positioned(
              bottom: 50,
              left: 0,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  smoothies,
                  style: FooderlichTheme.lightTextTheme.displayLarge,
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Text(
                recipe,
                style: FooderlichTheme.lightTextTheme.displayLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildAuthorCard(String authorName, String authorTitle) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),

          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/authorprofile.jpg'),
            radius: 24,
          ),
        ),

        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              authorName,
              style: FooderlichTheme.lightTextTheme.displayMedium,
            ),
            Text(authorTitle, style: FooderlichTheme.lightTextTheme.bodyLarge),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          style: IconButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 190, 190, 190),
            iconSize: 30,
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
