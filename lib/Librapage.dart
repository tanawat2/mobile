import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraPage extends StatefulWidget {
  const LibraPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _LibraPage();
}

class _LibraPage extends State<LibraPage> {
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
                'assets/images/Libra3.jpg',
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
              " Libra	ราศีตุลย์" ,
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
                  ' คือ ผู้ที่เกิดระหว่างวันที่ 16 ตุลาคม - 15 พฤศจิกายน ',
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
                  '        หนุ่มราศีตุลย์ : จะเป็นคนเรียบ ๆ เงียบขรึม รักความยุติธรรมและความมั่นคงของชีวิตดุจกับตาชั่งทั้งในด้านการงานและเรื่องส่วนตัว ชอบเก็บตัวอยู่คนเดียวไม่ชอบวุ่นวายกับใคร รูปร่างของหนุ่มราศีนี้ออกจะสูงโปร่ง เป็นคนจุกจิกในเรื่องของความสะอาด ความเป็นระเบียบ',
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
                  '        สาวราศีตุลย์ : เป็นสาวที่ร้อนแรง ทำให้ดวงตาของเธอเปี่ยมไปด้วยพลังและความมั่นคง โดยเฉพาะในคำพูดที่เด็ดขาดและเฉียบคม มีคารมที่กินขาด ทำให้คนฟังต้องปรบมือให้เธอทีเดียว เป็นคนหนักแน่น พูดในเรื่องที่จริงจัง รูปหน้ายาวสวยลงตัว เป็นคนที่มีความสามารถและยุติธรรม เมื่อทำงานสิ่งใดก็ตามจะน่าเชื่อถือ และชอบท้าทายกับคนที่ดูถูกเสมอ',
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
