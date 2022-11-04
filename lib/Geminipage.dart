import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeminiPage extends StatefulWidget {
  const GeminiPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _GeminiPage();
}

class _GeminiPage extends State<GeminiPage> {
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
                'assets/images/Gemini3.jpg',
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
              "  Gemini	ราศีมิถุน" ,
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 มิถุนายน - 15 กรกฎาคม',
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
                  '        หนุ่มราศีมิถุน : เป็นยอดนักรักตัวยงและเป็นคนขี้เหงา ต้องมีเพื่อนคุยและชอบเข้าสังคม ชอบความสนุกสนานรื่นเริงและเป็นคนเข้าใจโลก มีอารมณ์ดีและมีจิตใจดีอีกด้วย จุดเด่นคือ เป็นคนมีคารมดี ไหวพริบดี รักง่ายหน่ายเร็ว เป็นหนุ่มที่ขาดคนรักขาดเพื่อนไม่ได้เลย',
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
                  '        สาวราศีมิถุน : เป็นคนชอบเก็บกดเรื่องราวต่าง ๆ เอาไว้เองคนเดียว ไม่ให้ใครรู้เห็นด้วย แต่บทที่เธอบ้าก็จะบ้าดีเดือดเลยทีเดียว จะเป็นสาวเปรี้ยวไม่ว่าจะอยู่ในวัยไหน จะไม่ยอมแก่ตามสังขาร แต่เธอมีข้อเสียคือ ปากกับใจไม่ค่อยตรงกันเท่าไร เธอชอบจินตนาการ เป็นสาวที่มีความโดดเด่นและมีความสามารถมาก ไม่ว่าจะมารูปแบบไหนเธอก็สู้ไม่ถอย',
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

