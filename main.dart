// main.dart
// Full Single-File Restaurant Management System
// According to assignment instructions (Menu → Submenu → Function Calling)

// ignore: unused_import
import 'dart:ffi';
import 'dart:io';

// Menu Item Model
class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);
}

// Order Model
class Order {
  String customerName;
  List<MenuItem> items = [];
  double total = 0;

  Order(this.customerName);
}

// Global restaurant menu
List<MenuItem> menu = [
  MenuItem("Burger", 350),
  MenuItem("Pizza", 900),
  MenuItem("Fries", 150),
  MenuItem("Sandwich", 250),
  MenuItem("Drink", 120),
];

List<Order> orders = [];

void main() {
  while (true) {
    print("\n============ Restaurant Management System ============");
    print("1) Manage Menu");
    print("2) Take Order");
    print("3) View All Orders");
    print("4) Search Order");
    print("5) Delete Order");
    print("6) Exit");
    stdout.write("\nEnter option: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        manageMenu();
        break;
      case '2':
        takeOrder();
        break;
      case '3':
        vieworders();
        break;
      case '4':
        searchOrders();
        break;
      case '5':
        deleteOrders();
        break;
      case '6':
        print("Exiting Program...");
        return;
      default:
        print("Invalid selection! Try again.");
    }
  }
}

void vieworders() {
}

void searchOrders() {
}

void deleteOrders() {
}

//////////////////////////////////////////////////////////////
//                  MANAGE MENU SECTION
//////////////////////////////////////////////////////////////
void manageMenu() {
  while (true) {
    print("\n---------- Manage Menu ----------");
    print("1) View Menu");
    print("2) Add New Item");
    print("3) Update Item");
    print("4) Delete Item");
    print("5) Back to Main Menu");

    stdout.write("Enter choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        viewMenu();
        break;
      case '2':
        addMenuItem();
        break;
      case '3':
        updateMenuItem();
        break;
      case '4':
        deleteMenuItem();
        break;
      case '5':
        return;
      default:
        print("Invalid option. Try again.");
    }
  }
}

void viewMenu() {
  print("\n======= Restaurant Menu =======");
  for (int i = 0; i < menu.length; i++) {
    print("${i + 1}) ${menu[i].name} - Rs ${menu[i].price}");
  }
}

void addMenuItem() {
  stdout.write("Enter new item name: ");
  String name = stdin.readLineSync() ?? "";

  stdout.write("Enter price: ");
  double? price = double.tryParse(stdin.readLineSync() ?? "");

  if (name.isEmpty || price == null || price <= 0) {
    print("Invalid input.");
    return;
  }

  menu.add(MenuItem(name, price));
  print("Item added successfully.");
}

void updateMenuItem() {
  viewMenu();
  stdout.write("Enter item number to update: ");
  int? index = int.tryParse(stdin.readLineSync() ?? "");

  if (index == null || index < 1 || index > menu.length) {
    print("Invalid item number.");
    return;
  }

  MenuItem selectedItem = menu[index - 1];

  stdout.write("Enter new name (${selectedItem.name}): ");
  String name = stdin.readLineSync() ?? selectedItem.name;

  stdout.write("Enter new price (${selectedItem.price}): ");
  double? price = double.tryParse(stdin.readLineSync() ?? "");

  if (price == null || price <= 0) price = selectedItem.price;

  selectedItem.name = name.isNotEmpty ? name : selectedItem.name;
  selectedItem.price = price;

  print("Item updated successfully!");
}

void deleteMenuItem() {
  viewMenu();
  stdout.write("Enter item number to delete: ");
  int? index = int.tryParse(stdin.readLineSync() ?? "");

  if (index == null || index < 1 || index > menu.length) {
    print("Invalid item number.");
    return;
  }

  menu.removeAt(index - 1);
  print("Item deleted successfully!");
}

//////////////////////////////////////////////////////////////
//                  ORDER SECTION
//////////////////////////////////////////////////////////////
void takeOrder() {
  stdout.write("Enter customer name: ");
  String customerName = stdin.readLineSync() ?? "";
  if (customerName.isEmpty) ;
}
