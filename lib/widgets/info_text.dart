import '../core/export_files/export_files.dart';

class InfoText extends StatelessWidget {
  final String label;
  final String? value;
  final Color? valueColor;
  final double? sizeValue;
  final double? sizeLabel;
  final FontWeight? fontWeight;

  const InfoText({
    super.key,
    required this.label,
    this.value,
    this.valueColor,
    this.sizeLabel = 16,
    this.sizeValue = 24,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
            fontSize: sizeLabel,
          ),
        ),
        Text(
          value!,
          style: TextStyle(
            color: valueColor ?? Colors.white,
            fontSize: sizeValue,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
