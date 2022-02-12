//Create Date 10-02-2022
//64130010049 ปริญญา เติมกสิพาณิชย์

import Foundation

//ค่าน้ำประปา การคิดแบบอัตราก้าวหน้า
//ยูนิตการใช้   ราคา  จำนวนหน่วย พิกัดสูงสุด(ราคา)
//0-10      10.20   10        102           10    
//11-20     16.00   10        160           20    262
//21-30     19.00   10        190           30    452
//31-50     21.20   20        424           50    876
//51-80     21.60   30        648           80    1524
//81-100    21.65   20        433           100   1957
//101-300   21.70   200       4340          300   6297
//301-1000  21.75   700       15225           1000    21522
//1001-2000 21.80   1000      21800           2000    43322
//2001-3000 21.85   1000      21850           3000    65172
//>3000     21.90

//Input type / unit
//0utput subtotal / vat 7% / total

var unit0_10:Float = 0
var unit11_20:Float = 0
var unit21_30:Float = 0
var unit31_50:Float = 0
var unit51_80:Float = 0
var unit81_100:Float = 0
var unit101_300:Float = 0
var unit301_1000:Float = 0
var unit1001_2000:Float = 0
var unit2001_3000:Float = 0
var unit3000UP:Float = 0

var type:Int = 0
var unit:Int = 0

var price:Float = 0.0
var vat:Float = 0.0
var total:Float = 0.0

//input Type
repeat {
  print("""
  Type 1 : ที่อยู่อาศัย
  Type 2 : ราชการและธุรกิจขนาดเล็ก
  Type 3 : รัฐวิสาหกิจ/อุตฯ/ธุรกิจขนาดใหญ่
  Enter Type (1 or 2 or 3) : 
  """, terminator: "")
  type = Int(readLine()!)!
} while type != 1 && type != 2 && type != 3

repeat {
  print("Enter Volume (cu.m.) : ", terminator: "")
  unit = Int(readLine()!)!
} while unit < 0

if type == 1 {
  unit0_10 = 10.20
  unit11_20 = 16.00
  unit21_30 = 19.00
  unit31_50 = 21.20
  unit51_80 = 21.60
  unit81_100 = 21.65
  unit101_300 = 21.70
  unit301_1000 = 21.75
  unit1001_2000 = 21.80
  unit2001_3000 = 21.85
  unit3000UP = 21.90
}else if type == 2 {
  unit0_10 = 17.00
  unit11_20 = 20.00
  unit21_30 = 21.00
  unit31_50 = 22.00
  unit51_80 = 23.00
  unit81_100 = 24.00
  unit101_300 = 27.40
  unit301_1000 = 27.50
  unit1001_2000 = 27.60
  unit2001_3000 = 27.80
  unit3000UP = 28.00
}else{
  unit0_10 = 18.25
  unit11_20 = 21.50
  unit21_30 = 25.50
  unit31_50 = 28.50
  unit51_80 = 31.00
  unit81_100 = 31.25
  unit101_300 = 31.50
  unit301_1000 = 31.75
  unit1001_2000 = 32.00
  unit2001_3000 = 32.25
  unit3000UP = 32.50
}

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

//Calculate
price = type == 2 && price < 150 ? 150 : price
price = type == 3 && price < 300 ? 300 : price
vat = price * 0.07
total = price + vat

//output
print("""
-------------WATER TARIFFS-------------
Type : \(type)
Volume : \(unit) cu.m.
---------------------------------------
Subtotal (Vat not included) : \(price) Baht
Vat 7% : \(vat) Baht
Total (Vat included) : \(total) Baht
""")