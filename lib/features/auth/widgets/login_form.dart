import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController nameController = TextEditingController();
  String selectedSeatLetter = 'A';
  int selectedSeatNumber = 1;

  final List<String> seatLetters = ['A', 'B', 'C', 'D', 'E', 'F'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Maceracıyı Tanıyalım',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: nameController,
          decoration: const InputDecoration(
            labelText: 'Kaşifin Adı Soyadı',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Koltuk Harfi',
            style: TextStyle(color: Colors.blue.shade900),
          ),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: seatLetters.map((letter) {
              final isSelected = selectedSeatLetter == letter;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(letter),
                  selected: isSelected,
                  onSelected: (_) {
                    setState(() {
                      selectedSeatLetter = letter;
                    });
                  },
                  selectedColor: Colors.redAccent,
                  backgroundColor: Colors.white,
                  labelStyle: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 24),
        DropdownButtonFormField<int>(
          value: selectedSeatNumber,
          decoration: const InputDecoration(
            labelText: 'Kaşifin Koltuk Numarası',
            border: OutlineInputBorder(),
          ),
          items: List.generate(40, (index) {
            final seat = index + 1;
            return DropdownMenuItem(
              value: seat,
              child: Text(seat.toString()),
            );
          }),
          onChanged: (value) {
            if (value != null) {
              setState(() {
                selectedSeatNumber = value;
              });
            }
          },
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/select-explorer');
          },

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Macera Başlat',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
