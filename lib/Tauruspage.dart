import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaurusPage extends StatefulWidget {
  const TaurusPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _TaurusPage();
}

class _TaurusPage extends State<TaurusPage> {
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
                'assets/images/Taurus3.jpg',
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
              "  Taurus	ราศีพฤษภ ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่่ 20 เมษายน - 20 พฤษภาคม',
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
                  '        หนุ่มพฤษภ : หากคิดจะทำงานอะไรจะต้องมีการวางแผนการไว้ล่วงหน้า เมื่อทำจะทำอย่างมั่นใจ เป็นคนไม่ค่อยพูดแต่จะทำอย่างจริงจัง มีทิฐิสูง ขี้งอน ใจอ่อน และชอบช่วยเหลือคน อ่อนหวานและอ่อนไหวในเรื่องความรักมาก ลักษณะของหนุ่มราศีนี้จะมีรูปร่างกำยำบึกบึนแบบ มีเสน่ห์ที่รอยยิ้มและมาดสุขุมลุ่มลึก',
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
                  '        สาวพฤษภ : เป็นคนที่เมื่อคิดจะทำอะไรแล้วจะไม่สนใจใครไม่แคร์อะไรทั้งนั้น เชื่อมั่นในตัวเองเสมอไม่ว่าเรื่องนั้นจะถูกหรือผิด ถ้าคิดจะทำต้องทำให้ได้ พฤษภบางคนมีคนรักมากและค่อนข้างหลายใจ เป็นคนบ้างาน และเป็นคนคิดอะไรอย่างมีเหตุมีผล รูปร่างของสาวราศีนี้ออกจะพอดี ๆ ไม่เตี้ยไม่สูงเกินไป',
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
