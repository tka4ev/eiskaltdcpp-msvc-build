/* This file is part of The New Aspell
 * Copyright (C) 2001 by Kevin Atkinson under the GNU LGPL
 * license version 2.0 or 2.1.  You should have received a copy of the
 * LGPL license along with this library if you did not you can find it
 * at http://www.gnu.org/.                                              */

#ifndef ASPELL_FILTER__HPP
#define ASPELL_FILTER__HPP

#include "can_have_error.hpp"
#include "copy_ptr.hpp"
#include "filter_char.hpp"
#include "posib_err.hpp"
#include "vector.hpp"
#include "string_pair_enumeration.hpp"

#include "aspell_export.h"

#include <stdio.h>

namespace acommon {

  class Config;
  class Speller;
  class IndividualFilter;
  class StringList;
  struct ConfigModule;

  class ASPELL_EXPORT Filter : public CanHaveError {
  public:
    
    bool empty() const {return filters_.empty();}
    void clear();
    void reset();
    void process(FilterChar * & start, FilterChar * & stop);
    void add_filter(IndividualFilter * filter);
    // setup the filter where the string list is the list of 
    // filters to use.
    Filter();
    ~Filter();

 private:
    typedef Vector<IndividualFilter *> Filters;
    Filters filters_;
  };

  PosibErr<void> ASPELL_EXPORT set_mode_from_extension(Config * config,
                                         ParmString filename,
                                         FILE * in = NULL);
  
  PosibErr<void> ASPELL_EXPORT setup_filter(Filter &, Config *, 
			      bool use_decoder, 
			      bool use_filter, 
			      bool use_encoder);
  void ASPELL_EXPORT activate_dynamic_filteroptions(Config *c);
  void ASPELL_EXPORT activate_filter_modes(Config * config);

  void ASPELL_EXPORT load_all_filters(Config * config);

  PosibErr<bool> ASPELL_EXPORT verify_version(const char * relOp, 
                                const char * actual, const char * required);
  PosibErr<void> ASPELL_EXPORT check_version(const char * requirement);

  PosibErr<StringPairEnumeration *> ASPELL_EXPORT available_filters(Config *);
  PosibErr<StringPairEnumeration *> ASPELL_EXPORT available_filter_modes(Config *);

};

#endif /* ASPELL_FILTER__HPP */
