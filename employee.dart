class Employee {
  String name;
  int id;

  Employee(this.name, this.id);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, int id, this.monthlySalary) : super(name, id);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  double hoursWork;

  PartTimeEmployee(String name, int id, this.hourlyRate, this.hoursWork)
    : super(name, id);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWork;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("Su Su", 1, 1000000),
    PartTimeEmployee("Ko Ko", 2, 6000, 60),
  ];

  for (final employee in employees) {
    print("Employee Name: ${employee.name}");
    print("Employee ID: ${employee.id}");
    print('Salary: ${employee.calculateSalary().toStringAsFixed(2)}');
    print("__________________________________________");
  }
}
