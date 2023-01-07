class Main {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
        Car car = new Car("AMQ123", new Account("Andres Herrera", "AND234"));
        car.passegenger = 4;
        car.printDataCar();
        
        Car car2 = new Car("QWE456", new Account("Andrea Herrera", "AND234"));
        car2.passegenger = 3;
        car2.printDataCar();
    }
}