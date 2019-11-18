// flutter imports
import 'package:flutter/widgets.dart';

class CircularImage extends StatelessWidget {
  final String image;
  final double radius;
  CircularImage({@required this.image, @required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.fill, image: AssetImage(this.image))),
    );
  }
}
