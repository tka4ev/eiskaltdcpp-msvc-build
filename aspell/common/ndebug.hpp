#ifndef NDEBUG__HPP
#define NDEBUG__HPP

#if defined(NDEBUG) && defined(__GNUC__)
#warning "Binaries compiled with NDEBUG defined are unsupported see http://aspell.net/ndebug.html."
#endif

#endif
