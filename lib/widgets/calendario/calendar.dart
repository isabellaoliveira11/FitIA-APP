import 'package:flutter/material.dart';

class WeeklyCalendar extends StatelessWidget {
  final List<String> weekDays = ["D", "S", "T", "Q", "Q", "S", "S"];
  final List<bool> trained = [false, true, true, false, false, true, false]; 

  WeeklyCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now().weekday; // 1 = segunda, 7 = domingo

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(7, (index) {
            final isToday = (index + 1) == today;
            return Column(
              children: [
                CircleAvatar(
                  radius: isToday ? 20 : 18,
                  backgroundColor: trained[index]
                      ? Colors.indigo
                      : Colors.grey.shade300,
                  child: Text(
                    weekDays[index],
                    style: TextStyle(
                      color: trained[index] ? Colors.white : Colors.black87,
                      fontWeight:
                          isToday ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "${DateTime.now().subtract(Duration(days: DateTime.now().weekday - (index + 1))).day}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
