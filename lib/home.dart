// ignore_for_file: file_names
import 'package:check_in_app/animation/fade_animation.dart';
import 'package:check_in_app/pages_combination.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Combination.brightness
            ? Colors.white
            : Colors.black.withOpacity(.9),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Chào Thuận!',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color:
                          Combination.brightness ? Colors.black : Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  '21DTHE1 - 2180601234',
                  style: TextStyle(
                      fontSize: 16,
                      color: Combination.brightness
                          ? Colors.grey.shade700
                          : Colors.white.withOpacity(.6)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  2.5,
                  Combination.check,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      makeColumn(icon: Icons.calendar_month, text: 'Khoá học'),
                      makeColumn(
                          icon: FontAwesomeIcons.medal, text: 'Điểm danh'),
                      makeColumn(icon: Icons.school_outlined, text: 'Bài tập'),
                      makeColumn(icon: Icons.bar_chart, text: 'Xếp hạng'),
                    ],
                  )),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Stack(children: [
              //     Container(
              //       height: 160,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           gradient: const LinearGradient(
              //               colors: [Colors.lightGreen, Colors.green])),
              //       child: Stack(children: [
              //         Padding(
              //           padding: const EdgeInsets.all(20.0),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               const Text(
              //                 'Điểm danh nhận thưởng',
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 19,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(height: 5),
              //               const Text(
              //                 'Điểm danh 5 lần để nhận quà',
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(
              //                 height: 45,
              //               ),
              //               Row(
              //                 children: [
              //                   const Text(
              //                     '2/5',
              //                     style: TextStyle(
              //                         color: Colors.white,
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   const SizedBox(width: 10),
              //                   Container(
              //                     width: 150,
              //                     height: 13,
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         gradient: const LinearGradient(stops: [
              //                           0.4,
              //                           0.4
              //                         ], colors: [
              //                           Colors.green,
              //                           Colors.white
              //                         ])),
              //                   ),
              //                 ],
              //               )
              //             ],
              //           ),
              //         ),
              //         Positioned(
              //             right: 10,
              //             child: Container(
              //               height: 160,
              //               width: 140,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(20),
              //                 image: const DecorationImage(
              //                     image: AssetImage(
              //                         'assets/images/southeast.png')),
              //               ),
              //             ))
              //       ]),
              //     ),
              //   ]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0),
              //   child: Text(
              //     'Dành cho bạn',
              //     style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color:
              //             Combination.brightness ? Colors.black : Colors.white),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 240,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Cuộc thi ươm mầm tài năng',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              Container(
                                width: 375,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/images/1.png'))),
                              ),
                            ]),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '🚀Bạn là Tân binh mới của khoa Công nghệ Thông tin? Bạn muốn thể hiện khả năng và tiềm năng của mình? Hãy đăng ký tham gia ngay cuộc thi "Ươm mầm tài năng Công nghệ Thông tin 2023" - một sân chơi đặc biệt dành riêng cho các bạn sinh viên khoá 2023!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ))
            ],
          ),
        ));
  }
}

@override
Widget gameTitle({title, subtitle}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Combination.brightness ? Colors.black : Colors.white),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        subtitle,
        style: TextStyle(
            color: Combination.brightness
                ? Colors.grey.shade700
                : Colors.white.withOpacity(.6)),
      ),
    ],
  );
}

Widget gameImage({image}) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
    ),
  );
}

Widget makeColumn({IconData? icon, text}) {
  return Column(
    children: [
      Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 8,
                  color: Combination.brightness
                      ? Colors.grey.withOpacity(.2)
                      : Colors.black.withOpacity(.3)),
              color:
                  Combination.brightness ? Colors.white : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(22)),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.green,
              size: 30,
            ),
          )),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(
            color: Combination.brightness
                ? Colors.grey.shade700
                : Colors.white.withOpacity(.6)),
      )
    ],
  );
}

Widget promoCard(image) {
  return AspectRatio(
      // aspectRatio: 2.9 / 3,
      aspectRatio: 2.18 / 1,
      child: Container(
        // height: 100,
        // width: 100,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ));
}
