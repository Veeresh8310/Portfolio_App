import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Projects',
          style: TextStyle(
            color: Colors.white, // Set the color of the AppBar title to white
          ),
        ),
        backgroundColor: Colors.grey[850], // AppBar background color
        iconTheme: const IconThemeData(
          color: Colors.white, // Set the color of the back arrow to white
        ),
      ),
      backgroundColor: Colors.black, // Background color of the page
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ProjectCard(
            title: 'Courier Management System',
            description: 'A Courier Management System is a comprehensive software solution that automates the management of Courier Packages, including parcel,and sales tracking, to improve efficiency and accuracy.',
            date: '2024-04-13',
            url: 'https://github.com/Veeresh8310/courier_management',
            icons: [
              // Icon(Icons.code, color: Colors.white),
              // Icon(Icons.book, color: Colors.white),
              // Icon(Icons.extension, color: Colors.white),
            ],
          ),
          SizedBox(height: 16.0), // Space between cards
          ProjectCard(
            title: 'Online Course Management',
            description: 'Online Course Management is a digital platform that streamlines the creation, administration, and delivery of educational courses, enabling efficient course enrollment, content distribution, and progress tracking.',
            date: '2023-03-13',
            url: 'https://github.com/Veeresh8310/Online_Course_Management',
            icons: [
              // Icon(Icons.code, color: Colors.white),
              // Icon(Icons.book, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String url;
  final List<Widget> icons;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.date,
    required this.url,
    required this.icons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Card(
        color: Colors.grey[900], // Set card background color
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow, // Set text color to yellow
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(color: Colors.white), // Set text color to white
              ),
              const SizedBox(height: 8),
              Text(
                'Created on $date',
                style: const TextStyle(color: Colors.white60), // Set text color to white60
              ),
              const SizedBox(height: 8),
              Row(
                children: icons,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
