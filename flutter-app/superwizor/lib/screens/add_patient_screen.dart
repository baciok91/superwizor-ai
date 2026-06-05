import 'package:flutter/material.dart';

class AddPatientScreen extends StatefulWidget {
  const AddPatientScreen({super.key});

  @override
  State<AddPatientScreen> createState() => _AddPatientScreenState();
}

class _AddPatientScreenState extends State<AddPatientScreen> {
  int _currentStep = 1;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _aliasController = TextEditingController();
  Color _avatarColor = Colors.grey;
  bool _dpaConsent = false;

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_updateAlias);
    _lastNameController.addListener(_updateAlias);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _aliasController.dispose();
    super.dispose();
  }

  void _updateAlias() {
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();

    if (firstName.isNotEmpty) {
      if (lastName.isNotEmpty) {
        _aliasController.text = '$firstName ${lastName[0]}.';
      } else {
        _aliasController.text = firstName;
      }
    } else {
      _aliasController.text = '';
    }
    setState(() {}); // Trigger rebuild to update Next button state
  }

  void _nextStep() {
    setState(() {
      _currentStep = 2;
    });
  }

  void _previousStep() {
    setState(() {
      _currentStep = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Patient')),
      body: _currentStep == 1 ? _buildStep1() : _buildStep2(),
    );
  }

  Widget _buildStep1() {
    final isNextEnabled = _firstNameController.text.trim().isNotEmpty;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Krok 1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          TextField(
            key: const Key('firstNameField'),
            controller: _firstNameController,
            decoration: const InputDecoration(labelText: 'Imię'),
          ),
          const SizedBox(height: 16),
          TextField(
            key: const Key('lastNameField'),
            controller: _lastNameController,
            decoration: const InputDecoration(labelText: 'Nazwisko'),
          ),
          const SizedBox(height: 16),
          TextField(
            key: const Key('aliasField'),
            controller: _aliasController,
            decoration: const InputDecoration(labelText: 'Alias'),
            readOnly: true,
          ),
          const SizedBox(height: 24),
          const Text('Kolor awatara:'),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildColorOption(Colors.red),
              _buildColorOption(Colors.green),
              _buildColorOption(Colors.blue),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            key: const Key('avatarPreview'),
            width: 100,
            height: 100,
            color: _avatarColor,
            child: const Center(child: Text('Awatar')),
          ),
          const Spacer(),
          ElevatedButton(
            key: const Key('nextButton'),
            onPressed: isNextEnabled ? _nextStep : null,
            child: const Text('Dalej'),
          ),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _avatarColor = color;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: _avatarColor == color ? Colors.black : Colors.transparent,
            width: 2,
          ),
        ),
      ),
    );
  }

  Widget _buildStep2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Krok 2', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                key: const Key('dpaCheckbox'),
                value: _dpaConsent,
                onChanged: (value) {
                  setState(() {
                    _dpaConsent = value ?? false;
                  });
                },
              ),
              const Text('Zgoda DPA'),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _previousStep,
                child: const Text('Wstecz'),
              ),
              ElevatedButton(
                key: const Key('saveButton'),
                onPressed: _dpaConsent ? () {
                  // Save logic
                } : null,
                child: const Text('Zapisz'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
