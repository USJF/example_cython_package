#ifndef MYCLASS_H
#define MYCLASS_H

class MyClass {
public:
    MyClass(double value);
    double get_value() const;
    void set_value(double value);
private:
    double value;
};

#endif
