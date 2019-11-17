// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/circular_image.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class AddStatus extends StatelessWidget {
  final image = 'assets/images/oliver.png';
  final String title = 'My status';
  final String subTitle = 'Tap to add status update';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16),
      child: Row(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                CircularImage(
                  image: this.image,
                  radius: 30,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ACCENT_COLOR),
                  ),
                  width: 62,
                  height: 62,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    this.title,
                    style:
                        TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: Colors.black,
                          fontSize: 16
                        ),
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: SECONDARY_TEXT_COLOR),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
