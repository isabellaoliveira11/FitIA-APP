import 'package:flutter/material.dart';

// Imports dos seus widgets
import 'package:fitia_app/shared/header.dart';
import 'package:fitia_app/widgets/calendario/weekly_calendar.dart';
import 'package:fitia_app/widgets/treino/my_training_card.dart';
import 'package:fitia_app/widgets/treino/treino_card.dart';
import 'package:fitia_app/shared/section_title.dart'; // <-- novo import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color accentColor = Colors.indigo;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Header refinado: app name + notificações + saudação + avatar
          const Header(username: 'Isabela'),
          const SizedBox(height: 16),

          // Calendário semanal
          WeeklyCalendar(),
          const SizedBox(height: 24),

          // Card do treino do dia
          const MyTrainingCard(),
          const SizedBox(height: 24),

          // Seção "Seus treinos"
          const SectionTitle(title: 'Seus treinos'),
          const SizedBox(height: 16),

          // Lista de treinos
          TreinoCard(
            titulo: 'Treino A',
            grupoMuscular: 'Pernas e Glúteos',
            onTap: () {},
          ),
          TreinoCard(
            titulo: 'Treino B',
            grupoMuscular: 'Costas e Bíceps',
            onTap: () {},
          ),
          TreinoCard(
            titulo: 'Treino C',
            grupoMuscular: 'Peito e Tríceps',
            onTap: () {},
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO: Criar novo treino
        },
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'Adicionar treino',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: accentColor,
      ),
    );
  }
}
