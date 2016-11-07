#include "greeter.hpp"

#include <iostream>

void Greeter::sayHello(const std::string& target) const
{
	std::cout << "Hello " << target << "\n";
}
