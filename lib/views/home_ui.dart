import 'package:flutter/material.dart';
import 'package:hotline_app/models/info_list.dart';
import 'package:hotline_app/views/detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<InfoList> infoListInfo = [
    InfoList(
      name: 'กรมการแพทย์ กระทรวงสาธารณสุข',
      website: 'https://www.dms.go.th/',
      mobile: '1668',
      image: 'f1.jpg',

    ),
    InfoList(
      name: 'สำนักงานหลักประกันสุขภาพ ( สปสช. )',
      website: 'https://www.nhso.go.th/',
      mobile: '1330',
      image: 'f2.jpg',

    ),
    InfoList(
      name: 'กรมควบคุมโรค กระทรวงสาธารณสุข',
      website: 'https://ddc.moph.go.th/',
      mobile: '1442',
      image: 'f3.jpg',

    ),
    InfoList(
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      website: 'https://www.niems.go.th/',
      mobile: '1669',
      image: 'f4.jpg',

    ),
    InfoList(
      name: 'โรงพยาบาลตำรวจ',
      website: 'https://www.policehospital.org/',
      mobile: '1691',
      image: 'f5.jpg',

    ),
    InfoList(
      name: 'แจ้งเหตุด่วน - เหตุร้าย',
      website: 'https://www.royalthaipolice.go.th/',
      mobile: '191',
      image: 'f6.jpg',

    ),
    InfoList(
      name: 'แจ้งเหตุภัยพิบัติ',
      website: 'http://ndwc.disaster.go.th/',
      mobile: '192',
      image: 'f7.jpg',

    ),
    InfoList(
      name: 'ศูนย์วิทยุพระราม แจ้งเหตุอัคคีภัย สัตว์ร้ายบุกรุกบ้าน',
      website: 'http://www.praram199.com/',
      mobile: '199',
      image: 'f8.jpg',

    ),
    InfoList(
      name: 'กรมเจ้าท่า แจ้งอุบัติเหตุทางนํ้า',
      website: 'https://md.go.th/',
      mobile: '1196',
      image: 'f9.jpg',

    ),
    InfoList(
      name: 'ศูนย์ประชาบดี รับแจ้งบุคคลสูญหาย',
      website: 'https://1300thailand.m-society.go.th/',
      mobile: '1300',
      image: 'f10.jpg',

    ),
    InfoList(
      name: 'ตำรวจท่องเที่ยว',
      website: 'https://www.touristpolice.go.th/',
      mobile: '1153',
      image: 'f11.jpg',

    ),
    InfoList(
      name: 'ศูนย์รับร้องเรียน ร้องทุกข์ กทม.',
      website: 'http://203.148.250.178/Rongtook/Default.aspx',
      mobile: '1555',
      image: 'f12.jpg',

    ),
    InfoList(
      name: 'ป่อเต็กตึ๊ง รถกู้ภัย',
      website: 'https://www.pohtecktung.org/',
      mobile: '1418',
      image: 'f13.jpg',

    ),
    InfoList(
      name: 'ตำรวจทางหลวง',
      website: 'http://www.highway.police.go.th/',
      mobile: '1193',
      image: 'f14.jpg',

    ),
    InfoList(
      name: 'กองปราบปราม CSD',
      website: 'https://csd.go.th/',
      mobile: '1195',
      image: 'f15.jpg',

    ),
    InfoList(
      name: 'ศูนย์ความปลอดภัยทางคมนาคม',
      website: 'http://www.scoozipizza.com',
      mobile: '1356',
      image: 'f16.jpg',

    ),
    InfoList(
      name: 'การทางพิเศษแห่งประเทศไทย EXAT',
      website: 'https://www.exat.co.th/',
      mobile: '1543',
      image: 'f17.jpg',

    ),
    InfoList(
      name: 'กรมทางหลวง',
      website: 'http://www.doh.go.th/',
      mobile: '1586',
      image: 'f18.jpg',

    ),

    InfoList(
      name: 'การรถไฟแห่งประเทศไทย',
      website: 'https://www.railway.co.th/Home/Index',
      mobile: '1690',
      image: 'f19.jpg',

    ),
    InfoList(
      name: 'AIS Call Center',
      website: 'https://www.ais.th/index.html?intcid=index-cover-5g_splash-homepage',
      mobile: '1175',
      image: 'f20.jpg',

    ),    
    InfoList(
      name: 'DTAC Call Center',
      website: 'https://www.dtac.co.th/home.html',
      mobile: '1678',
      image: 'f21.jpg',

    ),    
    InfoList(
      name: 'TRUE Call Center',
      website: 'https://www.true.th/',
      mobile: '1242',
      image: 'f22.jpg',

    ),   
    InfoList(
      name: 'โทรคมนาคมแห่งชาติ',
      website: 'https://www.ntplc.co.th/',
      mobile: '1888',
      image: 'f23.jpg',

    ),  
    InfoList(
      name: 'ธนาคารออมสิน',
      website: 'https://www.gsb.or.th/',
      mobile: '1115',
      image: 'f24.jpg',

    ), 
    InfoList(
      name: 'ธนาคารกสิกรไทย',
      website: 'https://www.kasikornbank.com/th/personal',
      mobile: '028888888',
      image: 'f25.jpg',

    ), 
    InfoList(
      name: 'ธนาคารกรุงเทพ',
      website: 'https://www.bangkokbank.com/',
      mobile: '1333',
      image: 'f26.jpg',

    ), 
   InfoList(
      name: 'ธนาคารกรุงไทย',
      website: 'https://krungthai.com/th/personal',
      mobile: '021111111',
      image: 'f27.jpg',

    ), 
    InfoList(
      name: 'ธนาคารกรุงศรี',
      website: 'https://www.krungsri.com/th/personal',
      mobile: '1572',
      image: 'f28.jpg',

    ), 
    InfoList(
      name: 'ธนาคารทหารไทยธนชาติ',
      website: 'https://www.ttbbank.com/th',
      mobile: '1428',
      image: 'f29.jpg',

    ), 
   InfoList(
      name: 'ธนาคารไทยพาณิชย์',
      website: 'https://www.scb.co.th/th/personal-banking.html',
      mobile: '027777777',
      image: 'f30.jpg',

    ),
    InfoList(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      website: 'https://www.pea.co.th/',
      mobile: '1129',
      image: 'f31.jpg',

    ),  
    InfoList(
      name: 'การไฟฟ้านครหลวง',
      website: 'https://www.mea.or.th/',
      mobile: '1130',
      image: 'f32.jpg',

    ),  
    InfoList(
      name: 'การประปาส่วนภูมิภาค',
      website: 'https://www.pwa.co.th/',
      mobile: '1662',
      image: 'f33.jpg',

    ),  
    InfoList(
      name: 'การประปานครหลวง',
      website: 'https://web.mwa.co.th/',
      mobile: '1125',
      image: 'f34.jpg',

    ),  
    InfoList(
      name: 'สำนักงานประกันสังคม',
      website: 'https://sso.icntracking.com/home/',
      mobile: '1506',
      image: 'f35.jpg',

    ),  
    InfoList(
      name: 'สำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย ( คปภ. )',
      website: 'https://www.oic.or.th/th/consumer',
      mobile: '1186',
      image: 'f36.jpg',

    ),  
    InfoList(
      name: 'ศูนย์ช่วยเหลือนักท่องเที่ยว',
      website: 'https://secretary.mots.go.th/tourist/more_news.php?cid=7',
      mobile: '023560650',
      image: 'f37.jpg',

    ),  
    InfoList(
      name: 'สถานีวิทยุ จส.100',
      website: 'https://www.js100.com/en/site/home/index',
      mobile: '1137',
      image: 'f38.jpg',

    ),  
    InfoList(
      name: 'บริษัท ขนส่ง จำกัด ( บขส. )',
      website: 'http://home.transport.co.th/index.php/th/home1.html?view=featured',
      mobile: '1490',
      image: 'f39.jpg',

    ),  
    InfoList(
      name: 'สวพ.FM 91 เพื่อความปลอดภัยด้านจราจร',
      website: 'https://www.fm91bkk.com/',
      mobile: '1164',
      image: 'f40.jpg',

    ), 
    InfoList(
      name: 'ศูนย์ปราบปรามการโจรกรรมรถยนต์ รถจักรยานยนต์ สำนักงานตำรวจแห่งชาติ',
      website: 'https://www.facebook.com/police.lostcar',
      mobile: '1192',
      image: 'f41.jpg',

    ), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 59, 1, 55),
        title: Text(
          'Hotline List',
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.bold,
      ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
            ),
            Expanded(
              child: ListView.separated(                
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.green[800],
                  ); 
                },
                itemCount: infoListInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>DetailUI(
                            name: infoListInfo[index].name!,
                            website: infoListInfo[index].website!,
                            mobile: infoListInfo[index].mobile!,
                            image: infoListInfo[index].image!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + infoListInfo[index].image!,
                    ),
                    title: Text(
                      infoListInfo[index].name!,
                    ),
                    subtitle: Text(
                      infoListInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
