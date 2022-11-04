import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PiscesPage extends StatefulWidget {
  const PiscesPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _PiscesPage();
}

class _PiscesPage extends State<PiscesPage> {
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
                'assets/images/Pisces3.jpg',
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
              "    Pisces	ราศีมีน ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 มีนาคม - 15 เมษายน',
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
                  '        หนุ่มมีน : จุดเด่นของหนุ่มมีนจะเป็นคนที่มีหน้าตาสดใส รักความสะอาด ใบหน้ามีเสน่ห์ชวนมอง รูปร่างสันทัด หนุ่มมีนชอบที่จะสร้างสรรค์ผลงานออกมา และถ้าเขาคิดจะทำอะไรแล้วต้องทำให้ดี ถ้าไม่ดีจะไม่ทำ ',
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
                  '        สาวมีน :โดยเฉพาะริมฝีปากเป็นกระจับและดวงตาที่แวววาวสดใส  เมื่อเธอพูดทุกคนจะต้องหันมาฟังเธอแน่  ไม่ได้สนิทสนมจริง ๆ จะไม่มีทางรู้นิสัยของเธอ นิสัยแบบแรกคือ เป็นคนร่าเริงสดใสกับชีวิต ใครได้อยู่ใกล้จะมีความสุขและอาจแอบอิจฉาความสุขของเธอได้  บางทีเธอจะมีอาการเหมือนคนเป็นทุกข์ จะเก็บเงียบไว้ภายในใจคนเดียว จะไม่บอกให้รู้ เมื่อเจอสาวมีนคุณต้องระวังในการคบหากับเธอและปรับตัวให้ทันกับอารมณ์ของเธอ',
                  style: GoogleFonts.itim(
                    fontSize: 19,
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
