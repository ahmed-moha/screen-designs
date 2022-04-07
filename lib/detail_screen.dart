import 'package:design_project/constants.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  List<Widget> chips = [
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('8:00 AM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('9:00 AM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('11:30 AM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('8:00 PM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('9:00 AM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('11:30 AM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    ),
    const SizedBox(
      width: 8.0,
    ),
    Chip(
      label: const Text('8:00 PM'),
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade200)),
    )
  ];

  List<Widget> days = [
    const SizedBox(
      width: 12,
    ),
    const DayCard(day: '09'),
    const SizedBox(
      width: 12,
    ),
    const DayCard(day: '08'),
    const SizedBox(
      width: 12,
    ),
    const DayCard(
      day: '14',
      isSelected: true,
    ),
    const SizedBox(
      width: 12,
    ),
    const DayCard(day: '22'),
    const SizedBox(
      width: 12,
    ),
    const DayCard(day: '03'),
    const SizedBox(
      width: 12,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
         iconTheme: const IconThemeData( color: Colors.black),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: const [
          Icon(
            CupertinoIcons.money_euro_circle,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorInfoCard(size: size, isPortrait: isPortrait),
            WorkInfoCard(isPortrait: isPortrait, size: size),
            Container(
              margin: const EdgeInsets.only(left: 12.0, top: 12.0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: const Text(
                'Biography',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0, top: 12.0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: const Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0, top: 12.0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: const Text(
                'Working Hours',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [...chips],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12.0, top: 12.0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: const Text(
                'October, 2022',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin:
                  const EdgeInsets.only(left: 12.0, top: 12.0, bottom: 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [...days],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text('Book Now'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  const DayCard({
    Key? key,
    this.day,
    this.isSelected = false,
  }) : super(key: key);
  final String? day;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : Colors.transparent,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.grey.shade200),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Text(
            'Mon',
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            day ?? "",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}

class WorkInfoCard extends StatelessWidget {
  const WorkInfoCard({
    Key? key,
    required this.isPortrait,
    required this.size,
  }) : super(key: key);

  final bool isPortrait;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isPortrait ? size.height * 0.1 - 10 : size.height * 0.2,
      margin: const EdgeInsets.all(12.0),
      decoration: DottedDecoration(
        color: kPrimaryColor,
        shape: Shape.box,
        //border: Border.all(color: kPrimaryColor, width: 0.85),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '122',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                'Patients',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: ' years',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ],
                  text: '6',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              const Text(
                'Patients',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '3+',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                'Certifications',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DoctorInfoCard extends StatelessWidget {
  const DoctorInfoCard({
    Key? key,
    required this.size,
    required this.isPortrait,
  }) : super(key: key);

  final Size size;
  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: size.width,
      height: isPortrait ? size.height * 0.2 : size.height * 0.4 + 10,
      decoration: const BoxDecoration(
          // color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'images/tiger.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      top: 16.0,
                    ),
                    child: const Text(
                      'DR. Ahmed Mohamed',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      top: 8.0,
                    ),
                    child: const Text(
                      'Cardiologist',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      top: 8.0,
                    ),
                    child: const Text(
                      'Ladnaan Hospital',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SocialMediaCard(
                          backgroundColor: kPrimaryColor,
                          icon: FontAwesomeIcons.facebookF,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        SocialMediaCard(
                          backgroundColor: Colors.red,
                          icon: FontAwesomeIcons.google,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        SocialMediaCard(
                          backgroundColor: kPrimaryColor,
                          icon: FontAwesomeIcons.instagram,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({
    Key? key,
    required this.backgroundColor,
    required this.icon,
    this.onTap,
  }) : super(key: key);
  final Color backgroundColor;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
