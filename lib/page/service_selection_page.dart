import 'package:firebase_login/constants/routes.dart';
import 'package:flutter/material.dart';

class ServiceSelectionPage extends StatelessWidget {
  const ServiceSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        title: const Text(
          "Selecione os Serviços",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Cortes",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ServiceCard(title: "Corte na Tesoura", price: "R\$ 40,00"),
            ServiceCard(title: "Corte Máquina", price: "R\$ 30,00"),
            ServiceCard(title: "Corte Disfarçado", price: "R\$ 45,00"),
            const SizedBox(height: 20),
            const Text(
              "Barba",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ServiceCard(title: "Barba Simples", price: "R\$ 15,00"),
            ServiceCard(title: "Barba Completa", price: "R\$ 30,00"),
            const SizedBox(height: 20),
            const Text(
              "Tratamentos",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ServiceCard(title: "Máscara Black", price: "R\$ 45,00"),
            ServiceCard(title: "Selagem", price: "R\$ 80,00"),
            ServiceCard(title: "Platinado", price: "R\$ 300,00"),
            const SizedBox(height: 20),
            const Text(
              "Sobrancelha",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ServiceCard(title: "Sobrancelha", price: "R\$ 20,00"),
            ServiceCard(title: "Apenas risquinho", price: "R\$ 10,00"),
            const SizedBox(height: 20),
            const Text(
              "Combos",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ServiceCard(title: "Corte Disfarçado + Barba", price: "R\$ 30,00"),
            ServiceCard(title: "Corte Disfarçado + Máscara Black", price: "R\$ 45,00"),
            ServiceCard(title: "Corte Disfarçado + Pigmentação Cabelo", price: "R\$ 60,00"),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.professionalSelectionPage);
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
              "Confirmar Serviços",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final String title;
  final String price;

  ServiceCard({required this.title, required this.price});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(widget.title),
        subtitle: Text(widget.price),
        trailing: Checkbox(
          value: isSelected,
          onChanged: (bool? value) {
            setState(() {
              isSelected = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
