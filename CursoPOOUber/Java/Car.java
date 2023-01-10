public class Car {
    Integer id;
    String license;
    Account driver;
    private Integer passegenger;

    public Car(String license, Account driver) {
        this.license = license;
        this.driver = driver;

    }

    void printDataCar() {
        if (passegenger != null) {
            System.out.println("License: " + license + ", Name Driver: " + driver.name + " Passengers: " + passegenger);
        }
    }

    public Integer getPassenger() {
        return passegenger;
    }

    public void setPassenger(Integer passegenger) {
        if (passegenger == 4) {
            this.passegenger = passegenger;
        } else {
            System.out.println("Necesitas asignar 4 pasajeros");
        }
    }
}
