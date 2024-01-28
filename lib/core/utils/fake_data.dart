class FakeData {
  static List<String> projectList =
      List.generate(10, (index) => 'Project $index').toList();

  static List<String> taskList =
      List.generate(10, (index) => 'Task $index').toList();
}
