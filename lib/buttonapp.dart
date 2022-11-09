
import 'dart:math';
import 'package:flutter/material.dart';
class DemoMayTinh extends StatefulWidget {
  const DemoMayTinh({Key? key}) : super(key: key);

  @override
  State<DemoMayTinh> createState() => _DemoMayTinhState();
}

class _DemoMayTinhState extends State<DemoMayTinh> {
   dynamic Sodau;
   dynamic Sosau;
   String opp = "" ;
   String ketqua ="0";
   String Hienthi ="" ;
  void Click (String Clicktext) {
    if(Clicktext == "AC") {
      ketqua = "";
      Sodau=0;
      Sosau=0;
      Hienthi="12";
    }
    else if(Clicktext == "+" || Clicktext  == "-" || Clicktext== "X" || Clicktext == "/"){
      Sodau = int.parse(Hienthi);
      ketqua = "";
      opp = Clicktext;
    }
    else if (Clicktext == "="){
      Sosau = int.parse(Hienthi);
    }
    if (opp == "+"){
      ketqua = (Sodau + Sosau).toString();
    }
    else if (opp == "-"){
      ketqua = (Sodau - Sosau).toString();
    }
    else if (opp == "X"){
      ketqua = (Sodau * Sosau).toString();
    }
    else if (opp == "/"){
      ketqua = (Sodau / Sosau).toString();
    }
    else if (opp == "^2"){
      ketqua = (Sodau * Sodau).toString();
    }
    else if (opp == "Căn"){
      ketqua = (sqrt(Sodau)).toString();
    }
    else  {
      ketqua = int.parse(Hienthi + Clicktext).toString();
    }
    setState(() {
      Hienthi = ketqua;
    });
  }


  Widget CustomButtom(String value) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(70, 70),
         side: BorderSide(color: Colors.black),
         backgroundColor: Colors.grey,
        ),
        onPressed: () => Click(value),
        child: Text(value,
          style: TextStyle(fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
  Widget CustomButtom2(String value) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(70, 70),
          side: BorderSide(color: Colors.black),
          backgroundColor: Colors.orange,
        ),
        onPressed: () => Click (value),
        child: Text(value,
          style: TextStyle(fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Máy Tính"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(
              constraints: BoxConstraints.expand(),
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(Hienthi,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
            )),
            Row(
              children: [
                CustomButtom("AC"),
                CustomButtom("Căn"),
                CustomButtom("^2"),
                CustomButtom2("/"),
              ],
            ),
            Row(
              children: [
                CustomButtom("7"),
                CustomButtom("8"),
                CustomButtom("9"),
                CustomButtom2("X"),
              ],
            ),
            Row(
              children: [
                CustomButtom("4"),
                CustomButtom("5"),
                CustomButtom("6"),
                CustomButtom2("-"),
              ],
            ),
            Row(
              children: [
                CustomButtom("1"),
                CustomButtom("2"),
                CustomButtom("3"),
                CustomButtom2("+"),
              ],
            ),
            Row(
              children: [
                CustomButtom("0"),
                CustomButtom("."),
                CustomButtom2("="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
