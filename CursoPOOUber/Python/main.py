from car import Car

if __name__ == "__main__":
    print("Hola Mundo")
    car = Car()
    car.license = "AMS234"
    car.driver = "Andres Herrera"
    print(vars(car))

    car2 = Car()
    car2.license = "QWE456"
    car2.driver = "Juan Soler"
    print(vars(car2))