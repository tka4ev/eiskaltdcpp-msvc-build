// This file is added to The New Aspell
// Copyright (C) 2010 by Patrick Spendrin under the GNU LGPL license
// version 2.0 or 2.1.  You should have received a copy of the LGPL
// license along with this library if you did not you can find
// it at http://www.gnu.org/.

#ifndef ASPELL_EXPORT_HPP
# define ASPELL_EXPORT_HPP

# ifndef ASPELL_STATIC // no export import for static libs
#  ifndef ASPELL_EXPORT // check that it isn't defined (e.g. )
#   if defined(_WIN32) || defined(_WIN64)
#    pragma warning( disable: 4251 )
#    ifdef MAKE_ASPELL_LIB
#     define ASPELL_EXPORT __declspec(dllexport)
#    else
#     define ASPELL_EXPORT __declspec(dllimport)
#    endif
#   endif
#  else
#   define ASPELL_EXPORT
#  endif
# else // ASPELL_STATIC
#  define ASPELL_EXPORT
# endif // ASPELL_STATIC
#endif // ASPELL_EXPORT_HPP
