import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Anggota Kelompok',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 9.0,
                runSpacing: 9.0,
                alignment: WrapAlignment.center,
                children: const [
                  _MemberCard(
                    name: 'Amanda Puspa Negara',
                    nim: '312210129',
                    phone: '085773335691',
                  ),
                  _MemberCard(
                    name: 'Abdul Aziz',
                    nim: '312210022',
                    phone: '087727933013',
                  ),
                  _MemberCard(
                    name: 'Sinta Hardianti Wijaya',
                    nim: '312210342',
                    phone: '082114241446',
                  ),
                  _MemberCard(
                    name: 'Muhammad Syahdan Junus',
                    nim: '312210285',
                    phone: '082119647979',
                  ),
                  _MemberCard(
                    name: 'Siti Yasmin Nurcholifah',
                    nim: '312210057',
                    phone: '085717721984',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MemberCard extends StatelessWidget {
  final String name;
  final String nim;
  final String phone;

  const _MemberCard({
    Key? key,
    required this.name,
    required this.nim,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(Icons.person, size: 20, color: Colors.teal),
              const SizedBox(height: 10),
              Text(
                name,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                nim,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                phone,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
