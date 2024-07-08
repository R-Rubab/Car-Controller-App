import '../core/export_files/export_files.dart';

class RPSideMiddleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 28, 28, 28)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 10.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

// ------
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
// ------

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0008250, size.height * 0.2851429);
    path_0.quadraticBezierTo(size.width * 0.3935000, size.height * 0.0676714,
        size.width * 0.4429917, size.height * 0.1220143);
    path_0.cubicTo(
        size.width * 0.4932167,
        size.height * 0.1690429,
        size.width * 0.4664417,
        size.height * 0.8457143,
        size.width * 0.4146667,
        size.height * 0.8614286);
    path_0.quadraticBezierTo(size.width * 0.3434417, size.height * 0.9017143,
        size.width * 0.0011083, size.height * 0.7182429);
    path_0.lineTo(size.width * 0.0008250, size.height * 0.2851429);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = CustomColors.iconBackgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

// ======
    canvas.drawShadow(
        path_0, const Color.fromARGB(255, 223, 222, 222), 10.0, true);
    canvas.drawPath(path_0, shadowPaint);
    canvas.drawPath(path_0, paintStroke0);
// ======
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
