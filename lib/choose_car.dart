import 'package:flutter/material.dart';
import 'package:practice3/bottom_navigation.dart';
import 'package:practice3/home.dart';

class ChooseCar extends StatelessWidget {
  const ChooseCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('차량 등록', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('※ 본인 명의 차량의 자동차 등록원부를 조회합니다', style: TextStyle(fontSize: 10, color: Colors.grey),),
            const SizedBox(height: 50,),
            const Text('차량 번호', style: TextStyle(fontWeight: FontWeight.bold),),
            const TextField(
              decoration: InputDecoration(
                hintText: "차량 번호",
                hintStyle: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(height: 30,),
            const Text('소유자의 명칭', style: TextStyle(fontWeight: FontWeight.bold),),
            const TextField(
              decoration: InputDecoration(
                hintText: '소유자 며칭 입력',
                hintStyle: TextStyle(fontSize: 12)
              ),
            ),

            const SizedBox(height: 30,),
            const Text('법인등록번호', style: TextStyle(fontWeight: FontWeight.bold),),
            const TextField(
              decoration: InputDecoration(
                  hintText: '등록번호',
                  hintStyle: TextStyle(fontSize: 12)
              ),
            ),
            const SizedBox(height: 40,),

            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavigationBarExample()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white
                ),
                child: const Text('등록'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
