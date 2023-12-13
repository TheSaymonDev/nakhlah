class DailyModel{
  String iconUrl, title, progressText;
  double progress;
  DailyModel({required this.iconUrl, required this.title, required this.progressText, required this.progress});
  
  static List<DailyModel> dailyList = [
    DailyModel(iconUrl: 'assets/images/dates.svg', title: 'Earn 40 dates', progressText: '/10', progress: 0.4),
    DailyModel(iconUrl: 'assets/images/75.svg', title: 'Score 75% or higher in 4 lessons', progressText: '/4', progress: 0.5),
    DailyModel(iconUrl: 'assets/images/80.svg', title: 'Score 80% or higher in 6 lessons', progressText: '/6', progress: 0.6),
    DailyModel(iconUrl: 'assets/images/85.svg', title: 'Score 85% or higher in 8 lessons', progressText: '/8', progress: 0.7),
    DailyModel(iconUrl: 'assets/images/90.svg', title: 'Score 90% or higher in 10 lessons', progressText: '/10', progress: 0.8),
  ];
}