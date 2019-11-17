// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// my app imports
import 'package:whatsapp_ui/ui/components/circular_image.dart';
import 'package:whatsapp_ui/ui/holders/status_data.dart';
import 'package:whatsapp_ui/ui/values/colors.dart';

class StatusItem extends StatelessWidget {
  final StatusData statusData;

  StatusItem({@required this.statusData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, top: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            child: CircularImage(
              image: this.statusData.image,
              radius: 30,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: LIGHT_PRIMARY_COLOR),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        this.statusData.title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        this.statusData.time,
                        style: TextStyle(color: SECONDARY_TEXT_COLOR),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Divider(),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
