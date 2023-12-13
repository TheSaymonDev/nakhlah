class LeaderBoard {
  String iconUrl, imgUrl, name, score;
  LeaderBoard(
      {required this.iconUrl,
      required this.imgUrl,
      required this.name,
      required this.score});

  static List<LeaderBoard> leaderBoardList = [
    LeaderBoard(
        iconUrl: 'assets/images/first-award.png',
        imgUrl: 'assets/images/profile-img.svg',
        name: 'Rony',
        score: '1000'),
    LeaderBoard(
        iconUrl: 'assets/images/second-award.png',
        imgUrl: 'assets/images/profile-img.svg',
        name: 'Saymon',
        score: '800'),
    LeaderBoard(
        iconUrl: 'assets/images/third-award.png',
        imgUrl: 'assets/images/profile-img.svg',
        name: 'Shuvo',
        score: '500'),
  ];
}
