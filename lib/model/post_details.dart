class PostDetail {
  late int likes;
  late String username;
  late String imageUrl;
  late String caption;
  late String location;
  late DateTime uploadDate;
  late bool isLiked;
  late bool isSaved;

  PostDetail(
      this.likes,
      this.username,
      this.imageUrl,
      this.caption,
      this.location,
      this.uploadDate,
      this.isLiked,
      this.isSaved);
}
