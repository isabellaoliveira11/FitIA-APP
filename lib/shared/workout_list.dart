import 'package:flutter/material.dart';
import '../widgets/treino/treino_card.dart';

class WorkoutList extends StatelessWidget {
  final List<Map<String, dynamic>> treinos;
  final void Function(String id)? onTreinoTap;

  const WorkoutList({super.key, required this.treinos, this.onTreinoTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: treinos.length,
      itemBuilder: (context, index) {
        final treino = treinos[index];
        return TreinoCard(
          titulo: treino['titulo'],
          grupoMuscular: treino['grupo'],
          onTap: () => onTreinoTap?.call(treino['id']),
        );
      },
    );
  }
}
