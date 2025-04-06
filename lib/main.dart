// ignore_for_file: avoid_print

// a) Create an abstract class Vehicle
abstract class Vehicle {
  int _speed = 0; // Encapsulated private variable

  // Abstract method move()
  void move();

  // Non-abstract method to set speed
  // c) Encapsulation to prevent direct access to _speed
  void setSpeed(int speed) {
    if (speed >= 0) { // Ensuring speed is not negative
      _speed = speed;
    } else {
      print("Speed cannot be negative! Thanks...");
    }
  }

  int get speed => _speed; // Getter method to access speed safely
}

// b) Create a subclass Car that extends Vehicle
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// d) Main function to test the implementation
void main() {
  Car myCar = Car(); // Create an object of Car
  myCar.setSpeed(120); // Set the speed
  myCar.move(); // Call the move() method
}

