import 'package:flutter/material.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Image.asset(
                "assets/lily putih.jpg",
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "Lily Putih",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black
            ),
          ),
          const SizedBox(
            height: 20
          ),
          const Text("Lilium candidum, Madonna lily atau white lily, adalah tanaman dalam keluarga lily sejati. Ini berasal dari Balkan dan Timur Tengah, dan dinaturalisasi di bagian lain Eropa, termasuk Prancis, Italia, dan Ukraina, dan di Afrika Utara, Kepulauan Canary, Meksiko, dan wilayah lainnya.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22, 
              color: Colors.black
            ),
          ),        
        ],      
      ),
    );
  }
}