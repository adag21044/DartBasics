// Importing necessary packages (if needed)
// import 'dart:math';

// Example of an Enum
enum Animal { Dog, Cat, Bird }

// Base class demonstrating inheritance
class AnimalBase {
  String name;
  AnimalBase(this.name);

  void speak() {
    print("$name makes a sound.");
  }
}

// Derived class demonstrating inheritance
class Dog extends AnimalBase {
  Dog(String name) : super(name);

  @override
  void speak() {
    print("$name says: Woof!");
  }
}

// Another derived class demonstrating inheritance
class Cat extends AnimalBase {
  Cat(String name) : super(name);

  @override
  void speak() {
    print("$name says: Meow!");
  }
}

// A mixin for additional behavior
mixin CanFly {
  void fly() {
    print("I can fly!");
  }
}

// Class that uses the mixin
class Bird extends AnimalBase with CanFly {
  Bird(String name) : super(name);

  @override
  void speak() {
    print("$name says: Tweet!");
  }
}

// Async function example
Future<void> fetchData() async {
  print("Fetching data...");
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched!");
}

// Main function demonstrating all concepts
void main() {
  // Hello World
  print("Hello World!");

  // Variables
  var age = 30; // Implicitly typed variable
  String city = 'Paris'; // Explicitly typed variable
  double height = 1.75; // Double variable
  bool isRaining = true; // Boolean variable

  print("Age: $age, City: $city, Height: $height, Is it raining? $isRaining");

  // Control flow statements
  if (age > 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }

  // Function call
  printAnimalSounds();

  // Classes and Inheritance
  AnimalBase myDog = Dog("Buddy");
  AnimalBase myCat = Cat("Whiskers");
  Bird myBird = Bird("Tweety"); // Change this line to Bird type

  myDog.speak();
  myCat.speak();
  myBird.speak();
  myBird.fly(); // Using the mixin function

  // Async example
  fetchData();

  // Exception handling
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

// Function to demonstrate function usage
void printAnimalSounds() {
  print("Animals make different sounds!");
}
