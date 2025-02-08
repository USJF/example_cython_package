Install this package with pip:
```
pip install git+ssh://git@github.com/USJF/example_cython_package.git
```

# MACOS
Add these lines to your ~/.zshrc if build does not work:
```
export CC="$(xcrun --find clang)"
export CXX="$(xcrun --find clang++)"
export CXXFLAGS="-stdlib=libc++ -isysroot $(xcrun --show-sdk-path)"
```
