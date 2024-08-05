import 'package:flutter/material.dart';

class CertificatesPage extends StatelessWidget {
  const CertificatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Certificates',
          style: TextStyle(
            color: Colors.white, // Set the color of the AppBar title to white
          ),
        ),
        backgroundColor: Colors.grey[850], // Adjust AppBar color if needed
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color of the back arrow to white
        ),
      ),
      body: Container(
        color: Colors.black, // Set background color to black
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildCertificateSection(
                title: 'Problem Solving Through Programming in c',
                imagePath: 'assets/cert1.jpg',
              ),
              const SizedBox(height: 16.0),
              _buildCertificateSection(
                title: 'SalesForce Certificate',
                imagePath: 'assets/cert2.jpg',
              ),
              const SizedBox(height: 16.0),
              _buildCertificateSection(
                title: 'RPA Developer Foundation',
                imagePath: 'assets/cert3.jpg',
              ),
              const SizedBox(height: 16.0),
              _buildCertificateSection(
                title: 'Basic Programming and Data Structure',
                imagePath: 'assets/cert4.png',
              ),
              const SizedBox(height: 16.0),
              _buildCertificateSection(
                title: 'Advanced Java Programming',
                imagePath: 'assets/cert5.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCertificateSection({required String title, required String imagePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Colors.yellow, // Text color for the certificate title
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
