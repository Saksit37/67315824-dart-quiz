double varRate = 0.7;

void calcuTotal(int price, int qty, double discount){
  print("${((price * qty) - discount) * (1 + varRate)} ");
}

void main(){
  var coupon;
  
  var shopName = 'Dart Cafe';
  List<String> categories = ["เครื่องดื่ม", "ของคาว", "ของหวาน"];
  Map<String, int> menu = {
    "ลาเต้" : 55,
    "ข้าวผัด" : 60,
    "ข้าวกะเพรา" : 55,
    "ลอดช่อง" : 50
  };


  print("ร้าน : ${shopName}");
  print("(อัตราดอกเบี้ย) : ${varRate}");
  print("---");
  print("หมวดหมู่ : ${categories}");
  print("จำนวนเมนูทั้งหมด : ${menu.length}");
  print("ราคาลาเต้ : ${menu["ลาเต้"]}");
  print("---");
  print("เมนูราคาตั้งแต่ 50 บาทขึ้นไป :");
  for (var items in menu.entries){
    if (items.value >= 50);
      print("${items.key} : ${items.value}");
  };  
  print("---");
  print("ยอดสุทธิ (ไม่มีส่วนลด) : ");
  calcuTotal(55, 2, 0);
  print("ยอดสุทธิ (ส่วนลด 10 บาท) : ");
  calcuTotal(55, 2, 10);
  print("---");
  print("ความยาวคูปอง : ${coupon}");


}
