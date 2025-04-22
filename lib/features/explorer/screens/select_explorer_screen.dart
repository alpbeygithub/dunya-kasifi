import 'package:flutter/material.dart';
import 'package:login_app/features/explorer/widgets/explorer_card.dart';

class SelectExplorerScreen extends StatelessWidget {
  const SelectExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0ECF8), // Gökyüzü teması
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Kaşifini Seç!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Devam etmek için bir kaşif seçin',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ExplorerCard(
                      name: 'Kaşif 1',
                      onTap: () => Navigator.pushNamed(context, '/select-game'),
                    ),
                    ExplorerCard(
                      name: 'Kaşif 2',
                      onTap: () => Navigator.pushNamed(context, '/select-game'),
                    ),
                    ExplorerCard(
                      name: 'Kaşif 3',
                      onTap: () => Navigator.pushNamed(context, '/select-game'),
                    ),
                    ExplorerCard(
                      name: 'Kaşif 4',
                      onTap: () => Navigator.pushNamed(context, '/select-game'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
