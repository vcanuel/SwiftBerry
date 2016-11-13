#if os(Linux)
import Glibc
#else
import Darwin.C
#endif

var gpMnager = gpioManager()
var server = restServer(manager: gpMnager)