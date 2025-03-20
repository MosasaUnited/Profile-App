class FacebookPostModel {
  final String profileName;
  final String profileImage;
  final String date;
  final String content;
  final String? image;
  final int? likes;
  final int comments;
  final int shares;
  final String url;

  const FacebookPostModel({
    required this.profileName,
    required this.profileImage,
    required this.date,
    required this.content,
    this.image,
    this.likes,
    required this.comments,
    required this.shares,
    required this.url,
  });
}
