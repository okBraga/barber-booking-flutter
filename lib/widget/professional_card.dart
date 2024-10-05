import 'package:flutter/material.dart';

class ProfessionalCard extends StatelessWidget {
  final String professional;
  final bool isSelected;

  const ProfessionalCard({super.key, required this.professional, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(professional),
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://via.placeholder.com/150"),
        ),
        tileColor: isSelected ? Colors.grey.shade200 : Colors.transparent,
      ),
    );
  }
}
