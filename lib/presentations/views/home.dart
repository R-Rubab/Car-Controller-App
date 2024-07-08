import '../../core/export_files/export_files.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/right_clipper.dart';
import '../../widgets/right_middle_clipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
  // bool select = false;
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      appBar: AppBars.appbar,
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: GoogleFonts.openSans(
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                            text: 'BMW ',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w900,
                            )),
                        const TextSpan(
                          text: 'Concept',
                        ),
                      ])),
              SizedBox(height: CustomSize.gh * .01),
              Transform.rotate(
                angle: pi * -.09,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform(
                      transform: Matrix4.identity()
                        ..rotateX(.6)
                        ..rotateY(3.843334)
                        ..scale(1.0),
                      alignment: FractionalOffset.center,
                      child: Container(
                        width: CustomSize.gw * .10,
                        height: CustomSize.gh * .07,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: CustomColors.darkGrey,
                              width: CustomSize.gw * .010,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            'i',
                            style: GoogleFonts.openSans(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: CustomColors.darkGrey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    // const SizedBox(height: 40),
                    Transform(
                      transform: Matrix4.identity()
                        ..rotateX(.80)
                        ..rotateY(.50880)
                        ..scale(2.8),
                      alignment: FractionalOffset.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Text(
                          '4',
                          style: GoogleFonts.odibeeSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: CustomColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 0),
              Image.asset(
                'assets/images/car1.png', // Replace with your car image asset path
                height: 170,
                width: 200,
              ),
              // const SizedBox(height: 0),
              const InfoText(label: 'Range', value: '280 km'),
              const SizedBox(height: 20),
              const InfoText(
                  label: 'Battery',
                  sizeValue: 47,
                  fontWeight: FontWeight.normal,
                  value: '64%',
                  valueColor: Colors.orange),
              const SizedBox(height: 10),
              const InfoText(label: 'Temperature', value: '26°C'),
              const SizedBox(height: 30),
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(
                  //   color: CustomColors.kDarkGrey,
                  //   width: 6.4,
                  // ),
                  color: CustomColors.iconBackgroundColor,
                  boxShadow: CustomStyle.shadow,
                ),
                child: const Icon(
                  Iconsax.search_favorite,
                  size: 30,
                  color: CustomColors.orange,
                ),
              ),

              const SizedBox(height: 20),

              Stack(
                children: [
                  const Text(
                    'Start Engine',
                    style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.orange,
                        fontWeight: FontWeight.w900,
                        overflow: TextOverflow.fade,
                        shadows: [
                          Shadow(
                              color: CustomColors.kDarkGrey,
                              offset: Offset(4, 4),
                              blurRadius: 4)
                        ]),
                  ),
                  Positioned(
                    top: 23,
                    child: Container(
                      width: 200,
                      height: 70,
                      decoration: const BoxDecoration(
                          // color: Color.fromARGB(235, 54, 54, 54),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(3, 3),
                              blurRadius: 10,
                              spreadRadius: 10,
                              color: CustomColors.backgroundColor,
                            ),
                          ]),
                    ),
                  )
                ],
              )
            ],
          ),
          const ContainerShadow(
            left: -30,
            top: 45,
            // right: 0,
          ),
          const LeftClipperWidget(
            left: -15,
            top: 40,
            child: Image(
              image: AssetImage('assets/images/fan.png'),
              width: 40,
              height: 50,
            ),
          ),
          // const ContainerShadow(
          //   left: -30,
          //   top: 75,
          //   // right: 0,
          // ),
          // ------------
          // ------------
          // ------------
          const LeftMiddleSideClipperShape(
            left: -30,
            top: 220,
            child: Image(
              image: AssetImage('assets/images/seat.png'),
              width: 40,
              height: 45,
            ),
          ),
          const ContainerShadow(
            left: -30,
            top: 410,
            // right: 0,
          ),
          const LeftClipperWidget(
            left: -15,
            top: 400,
            child: Icon(
              Iconsax.lock4,
              size: 30,
              color: CustomColors.orange,
            ),
          ),
          const ContainerShadow(
            left: 320,
            top: 50,
            angle: pi * 1,
          ),
          const RightClipperWidget(
              // onTap: () {
              //   setState(() {
              //     select = !select;
              //   });
              // },
              top: 40,
              right: -15,
              icon: Icons.stacked_line_chart_outlined),

          const RightMiddleClipperWidget(),

          const ContainerShadow(
            left: 320,
            top: 410,
            angle: pi * 1,
          ),
          const RightClipperWidget(
            // onTap: () {
            //   setState(() {
            //     select = !select;
            //   });
            // },
            right: -15,
            top: 400,
            icon: Iconsax.car,
          ),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 15.0),
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 130,
      //         width: 150,
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle,
      //           // border: Border.all(
      //           //   color: CustomColors.kDarkGrey,
      //           //   width: 6.4,
      //           // ),
      //           color: CustomColors.iconBackgroundColor,
      //           boxShadow: [
      //             BoxShadow(
      //               offset: Offset(3, 3),
      //               blurRadius: 17,
      //               spreadRadius: 1,
      //               color: CustomColors.kDarkGrey,
      //             ),
      //             BoxShadow(
      //               offset: Offset(-3, -4),
      //               blurRadius: 14,
      //               spreadRadius: 1,
      //               color: CustomColors.kLightGrey,
      //             ),
      //           ],
      //         ),
      //         child: const Icon(
      //           Iconsax.search_favorite,
      //           size: 35,
      //           color: Colors.green,
      //         ),
      //       ),
      //       const InfoText(label: 'Temperature', value: '26°C'),
      //     ],
      //   ),
      // ),
    );
  }
}
