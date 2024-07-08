import '../core/export_files/export_files.dart';

class RPSideCustomPainters extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paintFill0 = Paint()
      // ..color = CustomColors.iconBackgroundColor
      ..color = const Color.fromARGB(255, 28, 28, 28)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0050583, size.height * 0.9905714);
    path_0.lineTo(size.width * 0.0041833, size.height * 0.0082143);
    path_0.quadraticBezierTo(size.width * 0.6257750, size.height * 0.1296714,
        size.width * 0.5135583, size.height * 0.2538571);
    path_0.cubicTo(
        size.width * 0.2708000,
        size.height * 0.5308000,
        size.width * 0.5936167,
        size.height * 0.5448429,
        size.width * 0.4996833,
        size.height * 0.7129714);
    path_0.quadraticBezierTo(size.width * 0.3615167, size.height * 0.9013429,
        size.width * 0.0050583, size.height * 0.9905714);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1 Copy

    Paint paintStroke0 = Paint()
      ..color = CustomColors.iconBackgroundColor

      // ..color = const Color.fromARGB(255, 35, 35, 35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    canvas.drawShadow(
        path_0, const Color.fromARGB(255, 223, 222, 222), 10.0, true);
    canvas.drawPath(path_0, shadowPaint);
    canvas.drawPath(path_0, paintStroke0);
    // canvas.drawPath(path_0, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSideCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paintFill0 = Paint()
      ..color = CustomColors.iconBackgroundColor
      // ..color = const Color.fromARGB(255, 28, 28, 28)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    // Paint shadowPaint = Paint()
    //   ..color = Colors.black.withOpacity(0.5)
    //   ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0050583, size.height * 0.9905714);
    path_0.lineTo(size.width * 0.0041833, size.height * 0.0082143);
    path_0.quadraticBezierTo(size.width * 0.6257750, size.height * 0.1296714,
        size.width * 0.5135583, size.height * 0.2538571);
    path_0.cubicTo(
        size.width * 0.2708000,
        size.height * 0.5308000,
        size.width * 0.5936167,
        size.height * 0.5448429,
        size.width * 0.4996833,
        size.height * 0.7129714);
    path_0.quadraticBezierTo(size.width * 0.3615167, size.height * 0.9013429,
        size.width * 0.0050583, size.height * 0.9905714);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1 Copy

    Paint paintStroke0 = Paint()
      ..color = CustomColors.iconBackgroundColor

      // ..color = const Color.fromARGB(255, 35, 35, 35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // canvas.drawShadow(
    //     path_0, const Color.fromARGB(255, 223, 222, 222), 10.0, true);
    // canvas.drawPath(path_0, shadowPaint);
    // canvas.drawPath(path_0, paintStroke0);
    // canvas.drawPath(path_0, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
