abstract class MenuItem{
  var name;
  var basePrice;

  void price(double amount);    

  void show(){
    print("$name - $basePrice บาท");
  }
}
class Drink extends MenuItem{
  int topping;
  Drink(this.topping);
  @override
  void price(double amount){
    print("${basePrice + 10 * topping}");
  }
}

class Food extends MenuItem{
  String size;
  Food(this.size);
  @override
  void price(double amount){
    print("${basePrice * size}");
  }
}

void main(){
  MenuItem d = Drink(10);
  d.show();
}