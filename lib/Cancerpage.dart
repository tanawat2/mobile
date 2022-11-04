
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancerPage extends StatefulWidget {
  const CancerPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CancerPage();
}

class _CancerPage extends State<CancerPage> {
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
                'assets/images/Cancer3.jpg',
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
              "Cancer	ราศีกรกฎ ",
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
                  'คือ ผู้ที่เกิดระหว่างวันที่ 16 กรกฎาคม - 15 สิงหาคม',
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
                  '        หนุ่มราศีกรกฎ : จะเป็นหนุ่มที่ขี้อาย เป็นคนรักธรรมชาติและชอบความสันโดษ เงียบขรึม เป็นคนขี้หึงตัวยงทีเดียว หนุ่มราศีนี้จะคิดถึงวันนี้มากกว่าวันวานหรือวันข้างหน้า แต่ค่อนข้างจะเป็นคนที่คิดมากจริง ๆ ทุกเรื่องจะเก็บมาคิดพร่ำเพรื่อ จนอาจกลายเป็นโรคประสาทได้ก่อนเวลาอันควร',
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
                  '        สาวราศีกรกฎ : มักจะหลงตัวเอง คิดว่าตัวเองเก่งตัวเองแน่กว่าใคร ชอบทำตัวเป็นจุดเด่น เธอเป็นสาวเปรี้ยว ตามแฟชั่นเสมอ ชอบบงการชีวิตคนอื่นทั้งที่บ้านและที่ทำงาน คิดยังไงก็จะพูดออกมาอย่างนั้นเลย ท่าทางของเธอจะส่อความในใจพร้อมกับดวงตาคู่นั้น เธอเป็นนักอนุรักษ์ด้วยเหมือนกันนะ',
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

