class Post {
  String? profileImage;
  String? pName;
  String? pImage;
  String? pLikePerson;
  String? pHour;

  Post(
      {this.profileImage,
      this.pName,
      this.pImage,
      this.pLikePerson,
      this.pHour});
}

List<Post> listPost = [
  Post(
      profileImage:
          "https://cdn.wionews.com/sites/default/files/styles/story_page/public/2021/12/10/225880-kohli-afp-31.png",
      pName: "Gamdiyo",
      pImage:
          "https://pbs.twimg.com/profile_images/1479443900368519169/PgOyX1vt_400x400.jpg",
      pLikePerson: "dishant_7181",
      pHour: "2 hour ago"),
  Post(
      profileImage:
          "https://www.onmanorama.com/content/dam/mm/en/sports/vantage-point/images/2021/9/19/kohli.jpg",
      pName: "Rahul Gayakwad",
      pImage:
          "https://www.bollywoodhungama.com/wp-content/uploads/2021/10/jannat2.jpg",
      pLikePerson: "dishant_7181 and 100 others",
      pHour: "12 hour ago"),
  Post(
      profileImage:
          "https://img.indiaforums.com/article/900x900/16/4944-jannat-zubair-rahmani-we-are-not-celebrating-eid-this-year-none-of-us-are-wearing-new-clothes.jpg",
      pName: "Jenil Paladiya",
      pImage: "https://asianwiki.com/images/d/dc/RaMu_%281997%29-p1.jpg",
      pLikePerson: "dishant_7181 and 102 others",
      pHour: "22 hour ago")
];
