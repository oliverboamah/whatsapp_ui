class ChatData {
  String image;
  String title;
  String detail;
  String time;
  int messageCount;
  bool isMuted;

  ChatData(
      {this.image,
      this.title,
      this.detail,
      this.messageCount = 0,
      this.isMuted = false});
}
