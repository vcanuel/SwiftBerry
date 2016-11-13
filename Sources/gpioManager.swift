#if os(Linux)
import SwiftyGPIO
#endif

protocol gpioManagerProtocol {
    func getTemp() -> String
}

public class gpioManager:  gpioManagerProtocol{

    func getTemp() -> String {
        #if os(Linux)
        let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPiRevPlusZero)
        #endif
        return "unkonw"
    }
}