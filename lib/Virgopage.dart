import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VirgoPage extends StatefulWidget {
  const VirgoPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _VirgoPage();
}

class _VirgoPage extends State<VirgoPage> {
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
                'assets/images/Virgo3.jpg',
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
              "  Virgo	ราศีกันย์ ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 23 สิงหาคม - 22 กันยายน',
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
                  '        หนุ่มราศีกันย์ : เป็นหนุ่มที่ช่างจดช่างจำและออกจะเพ้อฝันพอสมควร มีอารมณ์รุนแรงและเปลี่ยนแปลงง่าย ชอบแสดงความเป็นเจ้าของ สามารถตัดขาดรักได้อย่างรวดเร็ว เงียบขรึมไม่ช่างพูด หนุ่มราศีนี้หากต้องเสียใจหรือผิดหวังจะเห็นได้อย่างชัดเจน เป็นคนรักสวยรักงาม ชอบแต่งตัวให้สะอาด มีความสง่างามในตัวเอง',
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
                  '        สาวราศีกันย์ : จะมีดวงตาที่ทรงเสน่ห์ สวยเฉียบคม สาวราศีนี้จะประสบความสำเร็จก็เพราะพูดจาอ่อนหวาน รู้จักพูดจา พร้อมมีหัวใจแห่งรักหลากหลาย แม้จะอกหักอยู่บ่อย ๆ ก็ตาม แต่ในบั้นปลายอาจไร้คู่และเพื่อนต่างเพศที่แท้จริง เพราะความเจ้าชู้ของสาวเจ้านั่นเองล่ะ',
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
