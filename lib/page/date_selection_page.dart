import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateTimeSelectionPage extends StatefulWidget {
  final String selectedProfessional;

  const DateTimeSelectionPage({super.key, required this.selectedProfessional});

  @override
  DateTimeSelectionPageState createState() => DateTimeSelectionPageState();
}

class DateTimeSelectionPageState extends State<DateTimeSelectionPage> {
  Map<DateTime, List<String>> availableTimes = {
    DateTime.now(): ["10:00", "11:00", "14:00"],
    DateTime.now().add(const Duration(days: 1)): ["10:00", "12:00"],
    DateTime.now().add(const Duration(days: 2)): ["11:00", "13:00", "15:00"],
    DateTime.now().add(const Duration(days: 3)): ["09:00", "10:00"],
    DateTime.now().add(const Duration(days: 4)): ["11:00", "12:00", "15:00"],
    DateTime.now().add(const Duration(days: 5)): ["13:00", "16:00"],
  };

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selecionar Data e Hora"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime.now().add(const Duration(days: 30)),
            focusedDay: selectedDate,
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                selectedDate = selectedDay;
              });
            },
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Horários disponíveis para ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}:",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              children: availableTimes[selectedDate] != null
                  ? availableTimes[selectedDate]!.map((time) {
                      return ListTile(
                        title: Text(time),
                        onTap: () {},
                      );
                    }).toList()
                  : [const ListTile(title: Text("Nenhum horário disponível"))],
            ),
          ),
        ],
      ),
    );
  }
}
