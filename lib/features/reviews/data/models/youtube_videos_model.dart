class YoutubeVideos {
  final String id;
  final String title;
  final String channelName;
  final String views;
  final String thumbnail;
  final String url;

  YoutubeVideos({
    required this.id,
    required this.title,
    required this.channelName,
    required this.views,
    required this.thumbnail,
    required this.url,
  });

  // Extract video ID from Youtube URL
  static String getVideoIdFromUrl(String url) {
    if (url.contains('youtu.be/')) {
      return url.split('youtu.be/')[1].split('?')[0];
    } else if (url.contains('youtube.com/watch')) {
      final Uri uri = Uri.parse(url);
      return uri.queryParameters['v'] ?? '';
    } else if (url.contains('youtube.com/embed/')) {
      return url.split('youtube.com/embed/')[1].split('?')[0];
    }
    return '';
  }
}
