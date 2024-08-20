import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('status')),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/boss.png', height: 200,),
              const Text('최근 업데이드 : 7월 15일 19:14'),

              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: const Column(
                  children: [
                    Text('211km', style: TextStyle(fontSize: 40, color: Colors.red),),
                    Text('주행가능거리', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                    ),
                  ]
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('시동/잠금 상태', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),

                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.power_settings_new_rounded,color: Colors.grey[400]),
                            Text('꺼짐', style: TextStyle(color: Colors.grey[400]),),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.grey[300],
                        ),
                        Column(
                          children: [
                            Icon(Icons.lock_outline,color: Colors.grey[400]),
                            Text('잠김', style: TextStyle(color: Colors.grey[400]),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
