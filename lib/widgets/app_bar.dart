import '../core/export_files/export_files.dart';

class AppBars {
  static AppBar appbar = AppBar(
    backgroundColor: CustomColors.backgroundColor,
    toolbarHeight: CustomSize.gh * .100,
    actions: [
      SizedBox(
        height: CustomSize.gh * .20,
      ),
      Container(
        width: CustomSize.gw * .160,
        height: CustomSize.gh * .070,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: CustomColors.iconBackgroundColor,
          gradient: CustomStyle.gradient,
          boxShadow: CustomStyle.shadow,
          border: Border.symmetric(
            horizontal: BorderSide(
              color: CustomColors.border,
              width: 1.4,
            ),
          ),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.setting_2,
              color: CustomColors.lightGrey,
            ),
          ),
        ),
      ),
      const SizedBox(width: 30),
    ],
  );
}
