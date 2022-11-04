import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeoPage extends StatefulWidget {
  const LeoPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _LeoPage();
}

class _LeoPage extends State<LeoPage> {
  bool _tab = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._tab,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/Leo3.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverFillRemaining(
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child: Text(
              " Leo ราศีสิงห์" ,
               style: GoogleFonts.athiti(
                fontSize: 34,
                 color: Color.fromARGB(255, 158, 156, 8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child:  Text(
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 สิงหาคม - 15 กันยายน ',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child:  Text(
                  '        หนุ่มราศีสิงห์ : มีลักษณะมาดแมนเต็มตัว มีความจริงใจ จะแสดงออกถึงความเป็นผู้นำ มีความแข็งแกร่ง แต่มีอารมณ์อ่อนไหวขี้สงสารคน บางครั้งมีทิฐิ เป็นคนที่ต่อสู้กับชีวิตและอุปสรรคของตัวเองได้โดยไม่เกรงกลัวกับความผิดหวังหรือกลัวอนาคตข้างหน้า หนุ่มราศีนี้จะมีลักษณะรูปร่างค่อนข้างสูง คิ้วดกดำเข้ม มีวงแขนกล้ามใหญ่จริง ๆ',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child:  Text(
                  '        สาวราศีสิงห์ : เมื่อช่วงวัยรุ่นจะมีรูปร่างอ้อนแอ้น แต่เมื่อสูงวัยขึ้นจะมีรูปร่างอวบค่อนข้างอ้วน เป็นสาวช่างฝัน เธอชอบงานที่ต้องใช้สมอง จะทำได้ดีและเก่งมาก สาวราศีนี้เหมาะกับเป็นดารา นักแสดง มีวาจาที่เด่น พูดจามีคารมเก่งจริง ๆ เธอเป็นสาวที่เจ้าชู้ไม่ใช่เล่นทีเดียวล่ะ',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
