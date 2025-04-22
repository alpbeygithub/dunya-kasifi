import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final void Function(String name, String seatLetter, String seatNumber) onSubmit;

  const LoginForm({super.key, required this.onSubmit});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();
  String? selectedSeatLetter;
  String? selectedSeatNumber;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> seatLetters = ['A', 'B', 'C', 'D', 'E', 'F'];
  final List<String> seatNumbers = List.generate(30, (index) => (index + 1).toString());

  void _submitForm() {
    if (_nameController.text.isEmpty || selectedSeatLetter == null || selectedSeatNumber == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Lütfen tüm alanları doldurun'),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }

    widget.onSubmit(
      _nameController.text,
      selectedSeatLetter!,
      selectedSeatNumber!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Kaşifin Adı Soyadı',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Koltuk Harfi", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: seatLetters.map((letter) {
              final isSelected = selectedSeatLetter == letter;
              return ChoiceChip(
                label: Text(letter),
                selected: isSelected,
                selectedColor: Colors.redAccent,
                onSelected: (_) {
                  setState(() {
                    selectedSeatLetter = letter;
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: "Kaşifin Koltuk Numarası",
              border: OutlineInputBorder(),
            ),
            value: selectedSeatNumber,
            items: seatNumbers
                .map((number) => DropdownMenuItem(value: number, child: Text(number)))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedSeatNumber = value;
              });
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _submitForm,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            child: const Text("Macera Başlat", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
