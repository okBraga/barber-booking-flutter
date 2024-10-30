import 'package:firebase_login/core/constants/routes.dart';
import 'package:firebase_login/presentation/widgets/professional_card.dart';
import 'package:flutter/material.dart';

class ProfessionalSelectionPage extends StatefulWidget {
  const ProfessionalSelectionPage({super.key});

  @override
  ProfessionalSelectionPageState createState() => ProfessionalSelectionPageState();
}

class ProfessionalSelectionPageState extends State<ProfessionalSelectionPage> {
  final List<String> professionals = [
    "Profissional A",
    "Profissional B",
    "Profissional C",
    "Profissional D",
  ];

  String? selectedProfessional;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Escolha o Profissional",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildNoPreferenceCard(context),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: professionals.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProfessional = professionals[index];
                    });
                  },
                  child: ProfessionalCard(
                    professional: professionals[index],
                    isSelected: selectedProfessional == professionals[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.dateSelectionPage);
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(12),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Confirmar Profissional",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNoPreferenceCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedProfessional = null;
        });
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: const Text("Sem Preferência"),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300,
            child: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 30,
            ),
          ),
          tileColor: selectedProfessional == null ? Colors.grey.shade200 : Colors.transparent,
        ),
      ),
    );
  }
}
