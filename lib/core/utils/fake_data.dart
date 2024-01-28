class FakeData {
  static List<String> projectList =
      List.generate(10, (index) => 'Project ${index + 1}').toList();

  static List<String> taskList =
      List.generate(10, (index) => 'Task ${index + 1}').toList();
}
