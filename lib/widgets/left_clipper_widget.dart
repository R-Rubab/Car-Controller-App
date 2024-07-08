import '../core/export_files/export_files.dart';

class LeftClipperWidget extends StatelessWidget {
  final double left;
  final double top;
  // final IconData icon;
  final Widget child;
  const LeftClipperWidget({
    super.key,
    required this.left,
    required this.top,
    //  required this.icon,
    required this.child,
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
              painter: RPSideCustomPainters()),
          Positioned(top: 70, left: 30, child: child)
        ],
      ),
    );
  }
}
