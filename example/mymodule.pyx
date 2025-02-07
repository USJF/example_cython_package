# cython: language_level=3

cdef extern from "myclass.h":
    cdef cppclass MyClass:
        MyClass(double)
        double get_value() const
        void set_value(double)

cdef class PyMyClass:
    """Python wrapper for the C++ MyClass"""

    cdef MyClass* thisptr  # Pointer to C++ class instance

    def __cinit__(self, double value):
        self.thisptr = new MyClass(value)

    def __dealloc__(self):
        del self.thisptr  # Free memory

    def get_value(self):
        return self.thisptr.get_value()

    def set_value(self, double value):
        self.thisptr.set_value(value)
