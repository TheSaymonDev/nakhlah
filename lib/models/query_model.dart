class QueryTopic {
  final String title;
  final List<QueryOptions> options;
  String? selectedOption;

  QueryTopic({required this.title, required this.options});

  static List<QueryTopic> queryTopics = [
    QueryTopic(
      title: 'What is your language?',
      options: [
        QueryOptions(title: 'English', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: 'বাংলা', imagePath: 'assets/images/bangladesh.png'),
      ],
    ),
    QueryTopic(
      title: 'How is your current capacity?',
      options: [
        QueryOptions(title: 'No knowledge', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: 'Know the basic', imagePath: 'assets/images/bangladesh.png'),
        QueryOptions(title: 'Intermediate', imagePath: 'assets/images/usa.png'),
      ],
    ),
    QueryTopic(
      title: 'What is your learning object?',
      options: [
        QueryOptions(title: 'Travel', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: 'Worker', imagePath: 'assets/images/bangladesh.png'),
        QueryOptions(title: 'Business', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: 'Culture', imagePath: 'assets/images/bangladesh.png'),
      ],
    ),
    QueryTopic(
      title: 'What is your daily learning goal?',
      options: [
        QueryOptions(title: '10 Minutes', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: '20 Minutes', imagePath: 'assets/images/bangladesh.png'),
        QueryOptions(title: '30 Minutes', imagePath: 'assets/images/usa.png'),
        QueryOptions(title: '45 Minutes', imagePath: 'assets/images/bangladesh.png'),
      ],
    ),
  ];
}

class QueryOptions {
  final String title, imagePath;
  QueryOptions({required this.title, required this.imagePath});
}
