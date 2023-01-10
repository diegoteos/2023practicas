class Main {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
        UberX uberX = new UberX("AMQ123", new Account("Andres Herrera", "AND234"), "Chevrolet", "Sonic");
        uberX.setPassenger(3);
        uberX.printDataCar();
        
        /*Car car2 = new Car("QWE456", new Account("Andrea Herrera", "AND234"));
        car2.passegenger = 3;
        car2.printDataCar();*/
    }
}