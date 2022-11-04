import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AriesPage extends StatefulWidget {
  const AriesPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AriesPage();
}

class _AriesPage extends State<AriesPage> {
  bool _tab = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._tab,
            expandedHeight: 160.0,
            flexibleSpace:  FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/Aries3.jpg',
                fit: BoxFit.fill,
              ),
            )
              // title: Container(
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text('       Aries Page'),
              //       background: Image.asset(
              //   'assets/images/Aries.jpg',
              //   fit: BoxFit.fill,
              // // ),
              //     ],
              //   ),
              // ),
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
                  ' Aries	ราศีเมษ',
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 เมษายน - 15 พฤษภาคม',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
                Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child: Text(
                  '        หนุ่มเมษ : เป็นคนที่มีอารมณ์ร้อนแรงบวกกับความรุนแรง จะเป็นคนที่เชื่อมั่นในตัวเองซะมากๆทีเดียว บางทีก็เยือกเย็นจนดูน่ากลัวเอามากๆ เป็นคนที่มุทะลุจนอาจทำลายมิตรภาพลงได้ และเป็นคนที่มีเอกลักษณ์ในตัวเอง หนุ่มเมษบางคนชอบไว้ผมยาว เป็นคนง่ายๆ',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Color.fromARGB(255, 10, 10, 9),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child:  Text(
                 '        สาวเมษ : หรือเรียกว่าสาวแห่งเดือนที่ร้อนระอุที่สุด สาวเมษเป็นคนกล้าหาญและเชื่อมั่นในการทำงานของตนเองมากๆ เรียกว่าสาวราศีนี้ใช้อารมณ์เป็นใหญ่ และถ้าอารมณ์ดีจะมีพลังคอยหนุนให้ทำไม่หยุด สาวเมษเป็นคนที่ชอบวางแผนการและมองการณ์ไกล เป็นสาวช่างพูด ร่าเริง หัวเราะง่าย มีใบหน้าเข้ม รักสวยรักงาม ชอบแต่งเติมใส่เฟอร์นิเจอร์ในตัวแพรวพราวเลยทีเดียว',
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
