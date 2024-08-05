import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Skills',
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
        child: Center(
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      SkillCard(skill: 'Java', level: 'Core Java'),
                      SkillCard(skill: 'C Programming', level: 'Intermediate'),
                      SkillCard(skill: 'HTML & CSS', level: 'Intermediate'),
                      SkillCard(skill: 'MySQL', level: 'Intermediate'),
                      SkillCard(skill: 'Django', level: 'Intermediate'),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Add some spacing between the columns
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Tools',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      ToolCard(tool: 'Android Studio'),
                      ToolCard(tool: 'VS Code'),
                      ToolCard(tool: 'Eclipse'),
                      ToolCard(tool: 'XAMPP'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;
  final String level;

  const SkillCard({
    super.key,
    required this.skill,
    required this.level,
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
              skill,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.yellow, // Set text color to yellow
              ),
            ),
            Text(
              level,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white, // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolCard extends StatelessWidget {
  final String tool;

  const ToolCard({
    super.key,
    required this.tool,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // Set card background color
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 0, // Remove card shadow
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          tool,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.yellow, // Set text color to yellow
          ),
        ),
      ),
    );
  }
}
