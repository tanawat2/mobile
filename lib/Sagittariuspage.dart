import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SagittariusPage extends StatefulWidget {
  const SagittariusPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SagittariusPage();
}

class _SagittariusPage extends State<SagittariusPage> {
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
                'assets/images/Sagittarius3.jpg',
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
              "  Sagittarius	ราศีธนู" ,
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 ธันวาคม - 15 มกราคม',
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
                  '        หนุ่มราศีธนู : เป็นคนที่ชอบวางมาดแก่เกินวัย และวางอนาคตไกลเกินเอื้อมมือถึง เป็นคนเครียดง่ายแต่ก็หายเร็ว พูดจาหวานหู ไม่ชอบคุยโม้โอ้อวดใคร รูปร่างจะไปในทางสูง มักมีงานที่มีความมั่นคงแน่นอน เป็นคนทำงานเก่ง เป็นนักวางแผนที่ดี สาว ๆ ใดที่ได้หนุ่มราศีนี้เป็นคู่ครอง ครอบครัวจะมั่นคง มั่นใจในหนุ่มราศีนี้ได้',
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
                 '        สาวราศีธนู : จะมีอารมณ์ที่สดชื่น ร่าเริงสดใสอยู่ตลอดเวลา มักชอบทำอะไรแบบหลุดโลก บทดีก็ดีใจหาย จะทำงานเนี้ยบมาก เธอสามารถแบ่งเวลาจัดสรรสำหรับเรื่องงานและความสนุกได้ดี เธอมีความสวยที่ผสมกันหลายยุคสมัย เรียกว่าเก่าก็ดูดี ใหม่ก็ดูเฉียบจริง ๆ',
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
