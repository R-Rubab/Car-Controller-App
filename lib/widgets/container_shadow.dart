

import '../core/export_files/export_files.dart';

class ContainerShadow extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? angle;
  const ContainerShadow({
    super.key,
    this.top = 0,
    this.left = 0,
    this.right = 0,
    this.angle = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        top: top,
        // right: right,
        child: Transform.rotate(
          angle: angle!.toDouble(),
          child: Container(
            width: 100,
            height: 160,
            decoration: const BoxDecoration(
              // shape: BoxShape.circle,
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 14,
                  spreadRadius: 0,
                  color: Color.fromARGB(255, 112, 109, 109),
                ),
                BoxShadow(
                  offset: Offset(-2, -2),
                  blurRadius: 14,
                  spreadRadius: 0,
                  color: Color.fromARGB(255, 115, 112, 112),
                ),
              ],
            ),
          ),
        ));
  }
}
