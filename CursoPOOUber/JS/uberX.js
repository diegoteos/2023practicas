class UberX extends Car {
    contructor(license, driver, brand, model) {
        super(license, driver)
        this.brand = brand
        this.model = model
    }
}

var Car = new Car("AW434", new Account("William herrera", "SAW433"))
Car.passenger = 3;
Car.printDataCar();


var Car = new Car("AW434", new Account("William herrera", "SAW433"))
UberX.passenger = 4;
UberX.printDataCar();