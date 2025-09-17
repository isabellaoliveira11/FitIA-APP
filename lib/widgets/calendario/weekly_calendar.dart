import 'package:flutter/material.dart';

class WeeklyCalendar extends StatelessWidget {
  final List<String> weekDays = ["D", "S", "T", "Q", "Q", "S", "S"];
  final List<bool> trained = [false, true, true, false, false, true, false];

  WeeklyCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now().weekday; // 1 = segunda ... 7 = domingo

    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(7, (index) {
            final isToday = (index + 1) == today;
            final wasTrained = trained[index];

            return Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: isToday ? 22 : 20,
                      backgroundColor: isToday
                          ? Colors.indigo
                          : (wasTrained
                              ? Colors.green
                              : Colors.grey.shade300),
                      child: Text(
                        weekDays[index],
                        style: TextStyle(
                          color: isToday || wasTrained
                              ? Colors.white
                              : Colors.black87,
                          fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    if (wasTrained && !isToday)
                      const Positioned(
                        bottom: -2,
                        right: -2,
                        child: Icon(Icons.check_circle,
                            size: 16, color: Colors.white),
                      ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  "${DateTime.now().subtract(
                    Duration(days: DateTime.now().weekday - (index + 1)),
                  ).day}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                    color: isToday ? Colors.indigo : Colors.black87,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
