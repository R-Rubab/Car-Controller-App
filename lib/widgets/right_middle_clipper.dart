
import '../core/export_files/export_files.dart';

class RightMiddleClipperWidget extends StatelessWidget {
  const RightMiddleClipperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -30,
      top: 220,
      child: Stack(
        children: [
          Transform.rotate(
            angle: pi * 1,
            child: CustomPaint(
                size: Size(
                    200,
                    (303 * 0.5833333333333334)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSideMiddleCustomPainter()),
          ),
          const Positioned(
              top: 75,
              right: 40,
              child: Icon(
                Iconsax.location,
                size: 30,
                color: CustomColors.orange,
              ))
        ],
      ),
    );
  }
}
