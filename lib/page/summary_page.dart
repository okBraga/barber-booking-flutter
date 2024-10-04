import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final List<Map<String, dynamic>> selectedServices = [
    {"name": "Corte de Cabelo", "price": 50.0},
    {"name": "Barba", "price": 30.0},
    {"name": "Tratamento Capilar", "price": 70.0},
  ];

  final String selectedProfessional = "Profissional A";

  @override
  Widget build(BuildContext context) {
    double totalPrice = selectedServices.fold(0, (sum, service) => sum + service["price"]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resumo do Agendamento",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Serviços Selecionados:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ...selectedServices
                .map((service) => Text(
                      "${service['name']} - R\$ ${service['price'].toStringAsFixed(2)}",
                    ))
                .toList(),
            SizedBox(height: 20),
            Text(
              "Profissional Selecionado:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(selectedProfessional ?? "Sem Preferência"),
            SizedBox(height: 20),
            Text(
              "Valor Total: R\$ ${totalPrice.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Agendamento Confirmado!')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Confirmar Agendamento",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Editar Seleções"),
            ),
          ],
        ),
      ),
    );
  }
}
