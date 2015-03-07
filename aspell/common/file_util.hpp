// This file is part of The New Aspell
// Copyright (C) 2001 by Kevin Atkinson under the GNU LGPL license
// version 2.0 or 2.1.  You should have received a copy of the LGPL
// license along with this library if you did not you can find
// it at http://www.gnu.org/.

#ifndef ASPELL_FILE_UTIL__HPP
#define ASPELL_FILE_UTIL__HPP

#include <time.h>

#include "string.hpp"
#include "posib_err.hpp"

namespace acommon {

  class FStream;
  class Config;
  class StringList;

  ASPELL_EXPORT bool need_dir(ParmString file);
  ASPELL_EXPORT String add_possible_dir(ParmString dir, ParmString file);
  ASPELL_EXPORT String figure_out_dir(ParmString dir, ParmString file);

  // FIXME: Possible remove
  //void open_file(FStream & in, const string & file,
  //               ParmString mode = "r");
  ASPELL_EXPORT time_t get_modification_time(FStream & f);
  ASPELL_EXPORT PosibErr<void> open_file_readlock(FStream& in, ParmString file);
  ASPELL_EXPORT PosibErr<bool> open_file_writelock(FStream & in, ParmString file);
  // returns true if the file already exists
  ASPELL_EXPORT void truncate_file(FStream & f, ParmString name);
  ASPELL_EXPORT bool remove_file(ParmString name);
  ASPELL_EXPORT bool file_exists(ParmString name);
  ASPELL_EXPORT bool rename_file(ParmString orig, ParmString new_name);
  // will return NULL if path is NULL.
  ASPELL_EXPORT const char * get_file_name(const char * path);

  // expands filename to the full path
  // returns the length of the directory part or 0 if nothing found
  ASPELL_EXPORT unsigned find_file(const Config *, const char * option, String & filename);
  ASPELL_EXPORT unsigned find_file(const StringList &, String & filename);

  class StringEnumeration;

  class ASPELL_EXPORT PathBrowser
  {
    String suffix;
    String path;
    StringEnumeration * els;
    void * dir_handle;
    const char * dir;
    PathBrowser(const PathBrowser &);
    void operator= (const PathBrowser &);
  public:
    PathBrowser(const StringList &, const char * suf = "");
    ~PathBrowser();
    const char * next();
  };

}

#endif
