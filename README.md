# CI workflow for C++ applications

This repository contains a small C++ file, which prints "Hello World" when compiled and executed. The repository contains a `main.yml` file that describes a CI workflow, which is executed on every push to the repository.

The CI steps are the following:

- Check out the repository
- Update and install dependencies
- Compile code with [g++](https://docs.oracle.com/cd/E88353_01/html/E37839/g-plus--plus--1.html)
- Check memory leaks with [valgrind](https://valgrind.org/)

The code intentionally contains an error to show that the CI is stopped, when valgrind detects the error.
