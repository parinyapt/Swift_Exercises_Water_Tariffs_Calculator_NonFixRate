//Create Date 10-02-2022
//64130010049 ปริญญา เติมกสิพาณิชย์

import Foundation

//ค่าน้ำประปา การคิดแบบอัตราก้าวหน้า
//ยูนิตการใช้   ราคา  จำนวนหน่วย พิกัดสูงสุด(ราคา)
//0-10      10.20   10        102           10
//11-20     16.00   10        160           20
//21-30     19.00   10        190           30
//31-50     21.20   20        424           50
//51-80     21.60   30        648           80
//81-100    21.65   20        433           100
//101-300   21.70   200       4340          300
//301-1000  21.75   700       15225           1000
//1001-2000 21.80   1000      21800           2000
//2001-3000 21.85   1000      21850           3000
//>3000     21.90

//Input จำนวนยูนิตการใช้น้ำ
//0utput ราคาสุทธิ /vat 7% /ราคาก่อน vat7%

let unit0_10:Float = 10.20
let unit11_20:Float = 16.00
let unit21_30:Float = 19.00
let unit31_50:Float = 21.20
let unit51_80:Float = 21.60
let unit81_100:Float = 21.65
let unit101_300:Float = 21.70
let unit301_1000:Float = 21.75
let unit1001_2000:Float = 21.80
let unit2001_3000:Float = 21.85
let unit3000UP:Float = 21.90

//input 3 1)meter no 2)start unit 3)end unit
//output 3 1)subtotal 2)vat 3)total
var unit:Int = 0
var price:Float = 0.0

print("ป้อนค่าจำนวนยูนิตการใช้น้ำ : ", terminator: "")
unit = Int(readLine()!)!

if unit > 0 && unit < 11 {
  price = Float(unit) * unit0_10
}
else if unit > 10 && unit < 21 {
  price = (Float(unit)-10) * unit11_20
  price = price + (unit0_10 * 10)
}
else if unit > 20 && unit < 31 {
  price = (Float(unit)-20) * unit21_30
  price = price + (unit0_10 * 10) + (unit11_20 * 10)
}
else if unit > 30 && unit < 51 {
  price = (Float(unit)-30) * unit31_50
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10)
}
else if unit > 50 && unit < 81 {
  price = (Float(unit)-50) * unit51_80
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20)
}
else if unit > 80 && unit < 101 {
  price = (Float(unit)-80) * unit81_100
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30)
}
else if unit > 100 && unit < 301 {
  price = (Float(unit)-100) * unit101_300
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30) + (unit81_100 * 20)
}
else if unit > 300 && unit < 1001 {
  price = (Float(unit)-300) * unit301_1000
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30) + (unit81_100 * 20) + (unit101_300 * 200)
}
else if unit > 1000 && unit < 2001 {
  price = (Float(unit)-1000) * unit1001_2000
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30) + (unit81_100 * 20) + (unit101_300 * 200) + (unit301_1000 * 700)
}
else if unit > 2000 && unit < 3001 {
  price = (Float(unit)-2000) * unit2001_3000
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30) + (unit81_100 * 20) + (unit101_300 * 200) + (unit301_1000 * 700) + (unit1001_2000 * 1000)
}
else{
  price = (Float(unit)-3000) * unit3000UP
  price = price + (unit0_10 * 10) + (unit11_20 * 10) + (unit21_30 * 10) + (unit31_50 * 20) + (unit51_80 * 30) + (unit81_100 * 20) + (unit101_300 * 200) + (unit301_1000 * 700) + (unit1001_2000 * 1000) + (unit2001_3000 * 1000)
}

print("unit : \(unit)")
print("Price : \(price)")