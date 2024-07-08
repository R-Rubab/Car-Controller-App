
import '../core/export_files/export_files.dart';

class RightClipperWidget extends StatelessWidget {
  final double top;
  final double right;
  final IconData icon;
  // final bool select;
  // final VoidCallback onTap;
  const RightClipperWidget({
    super.key,
    required this.top,
    required this.right,
    required this.icon,
    // this.select = false,
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: InkWell(
        // onTap: onTap,
        child: Stack(
          children: [
            Transform.rotate(
              angle: pi * 1,
              child: CustomPaint(
                  size: Size(
                      200,
                      (303 * 0.5833333333333334)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter:
                      // select ?
                      RPSideCustomPainters()
                  //  : RPSideCustomPainter()
                  ),
            ),
            Positioned(
                top: 75,
                right: 33,
                child: Icon(
                  icon,
                  size: 30,
                  color: CustomColors.orange,
                ))
          ],
        ),
      ),
    );
  }
}
