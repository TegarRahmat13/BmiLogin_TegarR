import 'package:flutter/material.dart';

import 'data.dart';



class Bmi extends StatefulWidget {
  // const Bmi({super.key});
  static const namarute = "/bmi";

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  String hasilperhitungan = '';
  String kategoribmi = '';
  @override
  Widget build(BuildContext context) {
  final tinggibadan = TextEditingController();
  final beratbadan = TextEditingController();
    final user = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Halaman BMI"),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Text("Halo $user",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Text("Bmi Kamu adalah ${hasilperhitungan}"),
            Text("kamu termasuk $kategoribmi"),
            SizedBox(height: 20,),
            Column(
              children:  [
                Text("Tinggi Badan"),
                TextField(
                  controller: tinggibadan,
                  decoration: InputDecoration(
                    hintText: "masukkan tinggi.."
                  ),
                ),
                SizedBox(height: 20,),
                Text("Berat Badan"),
                TextField(
                  controller: beratbadan,
                  decoration: InputDecoration(
                    hintText: "masukkan berat badan.."
                  ),
                ),
              ],
            ),
ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasilperhitungan = (int.parse(beratbadan.text) /
                              ((int.parse(tinggibadan.text) *
                                      int.parse(tinggibadan.text)) *
                                  0.0001))
                          .toStringAsFixed(1);
                      if (double.parse(hasilperhitungan) < 16) {
                      
                        kategoribmi = 'sangat kurus';
                      }
                      if (16 <= double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 17) {
                  
                        kategoribmi = 'kurus';
                      }
                      if (17 < double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 18.5) {

                        kategoribmi = 'sedikit kurus';
                      }
                      if (18.5 < double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 25) {
    
                        kategoribmi = 'Normal';
                      }
                      if (25 < double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 30) {
  
                        kategoribmi = 'Bobot Berlebih';
                      }
                      if (30 < double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 35) {
                  
                        kategoribmi = 'Obesitas tingkat ringan';
                      }
                      if (35 < double.parse(hasilperhitungan) &&
                          double.parse(hasilperhitungan) <= 40) {
            
                        kategoribmi = 'Obesitas tingkat sedang';
                      }
                      if (double.parse(hasilperhitungan) > 40) {
      
                        kategoribmi = 'Obesitas tingkat berat';
                      }
                    });
                  },
                  child: const Text(
                    'Hitung',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            
          ],
        ),
      ),
    );
  }
}