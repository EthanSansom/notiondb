#include <string>
#include <cpp11.hpp>
using namespace cpp11;

void greet_impl(std::string name);

// Wrapper function accessible from R, receives a character vector
[[cpp11::register]]
void greet(cpp11::strings name) {
  // Input validation for the R-side argument
  if (name.size() != 1) Rf_error("`name` must be length-1.");
  if (name[0] == NA_STRING) Rf_error("`name` must be a non-NA string.");

  // Call the C++ implementation
  greet_impl(name[0]);
}

// Implementation function accessible only in C++
void greet_impl(std::string name) {
  Rprintf("Hi %s.\n", name.c_str()); // Rprintf() is printf(), but to R console
}
