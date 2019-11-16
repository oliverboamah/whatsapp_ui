class ChatData {
  String image;
  String title;
  String detail;
  String time;
  int messageCount;
  bool isRead;
  bool isMuted;

  ChatData(
      {this.image,
      this.title,
      this.detail,
      this.time,
      this.messageCount = 0,
      this.isRead = true,
      this.isMuted = false});
}
