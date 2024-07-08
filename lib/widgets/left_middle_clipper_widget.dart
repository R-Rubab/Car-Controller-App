import '../core/export_files/export_files.dart';

class LeftMiddleSideClipperShape extends StatelessWidget {
  final double left;
  final double top;
  final Widget child;
  // final IconData icon;
  const LeftMiddleSideClipperShape({
    super.key,
    required this.left,
    required this.top,
    required this.child,
    //  required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Stack(
        children: [
          CustomPaint(
              size: Size(
                  200,
                  (303 * 0.5833333333333334)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSideMiddleCustomPainter()),
          Positioned(top: 70, left: 40, child: child)
        ],
      ),
    );
  }
}
