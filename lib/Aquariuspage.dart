import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AquariusPage extends StatefulWidget {
  const AquariusPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _AquariusPage();
}

class _AquariusPage extends State<AquariusPage> {
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
                'assets/images/Aquarius3.jpg',
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
                  "   Aquarius	ราศีกุมภ์ ",
                  style: GoogleFonts.athiti(
                    fontSize: 34,
                    color: Color.fromARGB(255, 158, 156, 8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child: Text(
                  'คือ ผู้ที่เกิดระหว่างวันที่ 20 มกราคม - 18 กุมภาพันธ์',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Color.fromARGB(255, 10, 10, 9),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child: Text(
                  '        หนุ่มกุมภ์ :เขาจะก้าวไปข้างหน้าตลอดโดยไม่หวั่นเกรงกลัวสิ่งใด หนุ่มกุมภ์อารมณ์ค่อนข้างแต่หนักแน่น เรียกว่าเป็นตัวของตัวเองสูงมาก และเขาเป็นคนที่ไม่งมงายหรือเชื่ออะไรง่าย ๆ เว้นแต่ต้องพิสูจน์เองได้ หนุ่มกุมภ์เป็นนักมองการณ์ไกล จึงเหมาะที่จะทำธุรกิจเพราะจะทำให้มีแต่คำว่ารวย ๆ ลักษณะเด่นของหนุ่มราศีนี้คือ จะมีเรือนกายสมชาย สง่างามกว่าหนุ่มราศีอื่น ๆ ',
                  style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Color.fromARGB(255, 10, 10, 9),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                child: Text(
                  '        สาวกุมภ์ : เป็นคนมั่นใจในตัวเองมาก  แต่ในขณะเดียวกันเธอก็หารู้ไม่ว่าบางทีมันก็อาจทำให้ก้าวพลาดได้  สาวกุมภ์เป็นคนที่ถือคำพูดหรือคำสัญญาอย่างมาก ',
                    style: GoogleFonts.itim(
                    fontSize: 20,
                    color: Color.fromARGB(255, 10, 10, 9),
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
