from setuptools import setup, Extension
from Cython.Build import cythonize

extensions = [
    Extension(
        "example.mymodule",  # Module name
        ["example/mymodule.pyx", "example/myclass.cpp"],  # Include both Cython and C++ files
        language="c++",
        extra_compile_args=["-O2"],
    )
]

setup(
    name="example",
    version="0.1",
    packages=["example"],
    ext_modules=cythonize(extensions, language_level="3"),
    zip_safe=False,
)
