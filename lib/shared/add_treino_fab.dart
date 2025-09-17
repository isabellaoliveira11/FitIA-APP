import 'package:flutter/material.dart';

class AddTreinoFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const AddTreinoFAB({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
      tooltip: 'Adicionar Treino',
    );
  }
}
