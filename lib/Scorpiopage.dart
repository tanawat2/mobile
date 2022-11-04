import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScorpioPage extends StatefulWidget {
  const ScorpioPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ScorpioPage();
}

class _ScorpioPage extends State<ScorpioPage> {
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
                'assets/images/Scorpio3.jpg',
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
              "  Scorpio	ราศีพิจิก ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 23 ตุลาคม - 21 พฤศจิกายน',
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
                  '        หนุ่มพิจิก : เป็นยอดนักสู้และนักอดทนตัวยง สู้ชีวิตมาตลอด  เป็นคนช่างพูดและมีวาทศิลป์ดี หน้าตาของหนุ่มราศีนี้ออกจะมีความหล่อมากหน่อย มีดวงตาซุกซนแสนหวาน  แต่มีความจริงใจผสมอยู่  ชอบพูดเรื่องเกี่ยวกับเพศ และผิวค่อนข้างดำแดง มีเสน่ห์ กระชากใจสาวมาครองได้สบาย ',
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
                  '        สาวราศีพิจิก : มีความสวยและเสน่ห์รัดรึงหนุ่มให้หลงใหลเมื่อได้สบตาเธอ สาวราศีนี้จะมีอารมณ์หลากหลายที่แน่ ๆ คือร้อนแรง แต่เธอชอบที่จะเก็บซ่อนไว้ในใจ ยามใดที่ระเบิดออกมาละก็ สาวราศีนี้ออกจะสวยอย่างธรรมชาติแม้จะไม่ได้แต่งเติมเลยก็ตาม มีความมั่นใจในตัวเองค่อนข้างสูงมาก แต่ก็อ่อนไหวได้ง่ายเหมือนกัน',
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

