#include "myclass.h"

MyClass::MyClass(double value) : value(value) {}

double MyClass::get_value() const {
    return value;
}

void MyClass::set_value(double value) {
    this->value = value;
}
