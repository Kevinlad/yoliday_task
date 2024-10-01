import 'package:flutter/material.dart';
import 'package:yoliday_task/project_item.dart';

import 'portfloia_screen.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List<String> _projects = [
    'Kemampuan Merangkum Tulisan',
    'Kemampuan Menulis Esai',
    'Kemampuan Membaca Cepat',
    'Kemampuan Membaca Cepat',
    'Kemampuan Membaca Cepat',
  ];

  List<String> _projectImages = [
    'assets/image/image.jpg',
    'assets/image/image2.jpg',
    'assets/image/image3.jpg',
    'assets/image/image4.jpg',
    'assets/image/image5.jpg',
  ];

  List<String> _filteredProjects = [];
  List<String> _filteredImages = [];

  @override
  void initState() {
    super.initState();
    _filteredProjects = _projects;
    _filteredImages = _projectImages; // Initially show all images
  }

  void _filterProjects(String query) {
    setState(() {
      _filteredProjects = _projects
          .where(
              (project) => project.toLowerCase().contains(query.toLowerCase()))
          .toList();

      _filteredImages = _filteredProjects.map((project) {
        int index = _projects.indexOf(project);
        return _projectImages[index];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search a project',
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onChanged: _filterProjects,
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: _filteredProjects.length,
            itemBuilder: (context, index) {
              return ProjectItem(
                title: _filteredProjects[index],
                imagePath: _filteredImages[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
