from car import Car

class UberVan(Car):
    typeCarAccepted = []
    seatsMaterial = []

    def __init__(self, license, driver, typeCarAccept, seatsMaterial):
        super().__init__(license, driver)
        self.typeCarAccepted = typeCarAccept
        self.seatsMaterial = seatsMaterial
        