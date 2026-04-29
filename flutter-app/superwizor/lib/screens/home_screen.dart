import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/euphire_header.dart';
import '../theme/euphire_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    
    // Stub data na Fazę 1
    final stubFiles = [
      {'alias': 'Pacjent Jan K.', 'process': 'Indywidualny'},
      {'alias': 'Terapia Par: A & B', 'process': 'Para'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Twoje kartoteki.'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: EuphireColors.mist),
            onPressed: () => FirebaseAuth.instance.signOut(),
            tooltip: 'Wyloguj się.',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EuphireHeader(
              title: 'Cześć.',
              subtitle: 'Twój email to ${user?.email ?? "Nieznany"}.',
            ),
            const SizedBox(height: 32),
            Text(
              'Ostatnie kartoteki.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: stubFiles.length,
                itemBuilder: (context, index) {
                  final file = stubFiles[index];
                  return Card(
                    color: EuphireColors.nocturne,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      title: Text(
                        file['alias']!,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: EuphireColors.frostWhite,
                        ),
                      ),
                      subtitle: Text(
                        file['process']!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: EuphireColors.mist,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, color: EuphireColors.ember, size: 16),
                      onTap: () {
                        // TODO: Nawigacja do detali (Faza 2)
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Dodaj kartotekę (Faza 2)
        },
        backgroundColor: EuphireColors.ember,
        foregroundColor: EuphireColors.obsidianBlack,
        child: const Icon(Icons.add),
      ),
    );
  }
}
