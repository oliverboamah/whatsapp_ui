// my app imports
import 'package:whatsapp_ui/ui/holders/call_status.dart';
import 'package:whatsapp_ui/ui/holders/call_type.dart';

class CallData {
  final String image;
  final String name;
  final String time;
  final CallStatus callStatus;
  final CallType callType;

  CallData({this.image, this.name, this.time, this.callStatus, this.callType});
}
