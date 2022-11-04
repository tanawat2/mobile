import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CapricornPage extends StatefulWidget {
  const CapricornPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CapricornPage();
}

class _CapricornPage extends State<CapricornPage> {
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
                'assets/images/Capricorn3.jpg',
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
              "    Capricorn	ราศีมังกร ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 มกราคม - 15 กุมภาพันธ์',
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
                  '        หนุ่มราศีมังกร : มักจะเป็นคนขี้เหงา เพราะเขาจะมีก็เพียงแต่เพื่อนไม่แท้ แต่เขาโชคดีที่มีดวงของคนรักคอยพยุงไว้ จึงทำให้ดวงของเขายังแข็งพอทนอยู่ เป็นคนไม่ชอบเสี่ยงไม่ว่าจะเป็นเรื่องงานหรือเรื่องส่วนตัว เป็นคนมีอะไรลึก ๆ อยู่ในตัว เงียบขรึมเป็นบางครั้ง ช่างนึกช่างฝันและมองการณ์ไกล  ชอบวางแผนก่อนเสมอ ',
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
                  '        สาวราศีมังกร : จะที่ชอบฝันเพ้อเจ้อ แต่เธอเป็นยอดหญิงนักสู้และไม่ชอบติดหนี้บุญคุณของใครเสียด้วย แต่อาภัพที่เป็นคนทำคุณกับคนไม่ขึ้นเหมือนปิดทองหลังพระ เธอเป็นคนชอบทำและชอบพูด มีอารมณ์อ่อนไหว  แม้ในความเป็นจริงเธอจะมีเหตุผลก็ตาม  ชอบไว้ผมยาวอันเป็นเสน่ห์เฉพาะตัว',
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


