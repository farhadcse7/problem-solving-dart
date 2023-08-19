/*মডিউল ৩ এর এসাইনমেন্ট*/

//Car class
class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;

//Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

//sub funtions started
  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

//main function
void main() {
  Car car1 = Car("Toyota", "Camry", 2020, 0);
  car1.drive(10000.55);

  Car car2 = Car("Honda", "Civic", 2018, 0);
  car2.drive(8000);

  Car car3 = Car("Ford", "F-150", 2015, 0);
  car3.drive(15000);

  print("Car 1: ${car1.brand} ${car1.model} ${car1.year} Miles: ${car1.getMilesDriven().toInt()} Age: ${car1.getAge()}\n");
  print("Car 2: ${car2.brand} ${car2.model} ${car2.year} Miles: ${car2.getMilesDriven().toInt()} Age: ${car2.getAge()}\n");
  print("Car 3: ${car3.brand} ${car3.model} ${car3.year} Miles: ${car3.getMilesDriven().toInt()} Age: ${car3.getAge()}\n");
  print("Total number of cars created: ${Car.numberOfCars}");
}

