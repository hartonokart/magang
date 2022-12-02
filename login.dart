import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 162, 176),
        appBar: null,
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            children: [
              Image(image: AssetImage('assets/logo.png')),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 293,
                height: 386,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child:Image(image: ResizeImage(AssetImage('assets/userlogin.png'), width: 51, height: 51))),
                        Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))
                      ],
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                        width: 252,
                        height: 28,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nama Pengguna',
                                labelStyle: TextStyle(fontSize: 10))),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Container(
                        width: 252,
                        height: 28,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nomor Induk Mahasiswa',
                                labelStyle: TextStyle(fontSize: 10))),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Container(
                        width: 252,
                        height: 28,
                        child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(fontSize: 10))),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Container(
                      width: 79,
                      height: 28,
                      child: ElevatedButton(
                        onPressed: (() => {
                          Navigator.pushNamed(context, '/home')
                        }),style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 44, 162, 176)) ,child: Text('Login')),
                  ), 
                    ),
                    
                  Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                      child: Row(
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: TextStyle(fontSize: 12),
                          ),
                          TextButton(
                              onPressed: (() => {}),
                              child: Text(
                                "Daftar Sekarang",
                                style: TextStyle(fontSize: 12),
                              ))
                        ],
                      ))
                ]),
              )
            ],
          ),
        ));
  }
}
