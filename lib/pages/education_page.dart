import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education',
          style: TextStyle(
            color: Colors.white, // Set the color of the AppBar title to white
          ),
        ),
        backgroundColor: Colors.grey[850],
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color of the back arrow to white
        ),
      ),
      body: Container(
        color: Colors.black, // Set the background color to black
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const EducationCard(
                title: 'Bachelor of Engineering (BE)',
                degree: 'in Computer Science and Engineering',
                institute: 'Alvas Institute of Engineering and Technology',
                location: 'Moodabidre',
                cgpa: '8.84',
                year: '2021-2025',
                percentage: '80.9%',
              ),
              const EducationCard(
                title: 'College (12th)',
                institute: 'JNV Panchavati, Malagi, Uttara Kannada',
                location: 'Malagi, Uttara Kannada, Karnataka',
                board: 'CBSE',
                percentage: '95% (PCMB)',
                year: '2021',
              ),
              const EducationCard(
                title: 'Secondary School (10th)',
                institute: 'JNV Panchavati, Malagi, Uttara Kannada',
                board: 'CBSE',
                percentage: '91.6%',
                year: '2019',
                location: 'Malagi, Uttara Kannada, Karnataka',
              ),
              const SizedBox(height: 16), // Add space before the footer
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[900], // Footer background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Content',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'This is my educational details',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String title;
  final String? degree;
  final String institute;
  final String location;
  final String? cgpa;
  final String? board;
  final String percentage;
  final String year;

  const EducationCard({
    super.key,
    required this.title,
    this.degree,
    required this.institute,
    required this.location,
    this.cgpa,
    this.board,
    required this.percentage,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // Set card background color
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 0, // Remove card shadow
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.yellow, // Set text color to yellow
              ),
            ),
            if (degree != null)
              Text(
                degree!,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white, // Set text color to white
                ),
              ),
            Text(
              institute,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white, // Set text color to white
              ),
            ),
            Text(
              location,
              style: const TextStyle(color: Colors.white), // Set text color to white
            ),
            if (cgpa != null)
              Text(
                'CGPA: $cgpa',
                style: const TextStyle(color: Colors.white), // Set text color to white
              ),
            if (board != null)
              Text(
                'Board: $board',
                style: const TextStyle(color: Colors.white), // Set text color to white
              ),
            Text(
              'Percentage: $percentage',
              style: const TextStyle(color: Colors.white), // Set text color to white
            ),
            Text(
              'Year: $year',
              style: const TextStyle(color: Colors.white), // Set text color to white
            ),
          ],
        ),
      ),
    );
  }
}
