# The problem during Project mainSub manually compiling using CMake

Let's reinstate the environment of compiling problem!

## 1.Problem A

### 1.1Terminal output during compiling

    Undefined symbols for architecture x86_64:
    "std::__1::locale::use_facet(std::__1::locale::id&) const", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::ios_base::getloc() const", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__init(char const*, unsigned long)", referenced from:
      _main in main-4cbc75.o
    "std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__init(unsigned long, char)", referenced from:
      std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char) in main-4cbc75.o
      std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char) in Pet-4e26e9.o
    "std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::~basic_string()", referenced from:
      _main in main-4cbc75.o
      std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char) in main-4cbc75.o
      Pet::~Pet() in main-4cbc75.o
      Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&) in Pet-4e26e9.o
      std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char) in Pet-4e26e9.o
    "std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > const&)", referenced from:
      Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&) in Pet-4e26e9.o
    "std::__1::basic_ostream<char, std::__1::char_traits<char> >::put(char)", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
    "std::__1::basic_ostream<char, std::__1::char_traits<char> >::flush()", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
    "std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::sentry(std::__1::basic_ostream<char, std::__1::char_traits<char> >&)", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::~sentry()", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::cout", referenced from:
      _main in main-4cbc75.o
      Pet::sound() in Pet-4e26e9.o
      Pet::eat() in Pet-4e26e9.o
    "std::__1::ctype<char>::id", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::locale::~locale()", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::ios_base::__set_badbit_and_consider_rethrow()", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::__1::ios_base::clear(unsigned int)", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "std::terminate()", referenced from:
      ___clang_call_terminate in main-4cbc75.o
      ___clang_call_terminate in Pet-4e26e9.o
    "operator delete(void*)", referenced from:
      _main in main-4cbc75.o
    "operator new(unsigned long)", referenced from:
      _main in main-4cbc75.o
    "___cxa_begin_catch", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      ___clang_call_terminate in main-4cbc75.o
      ___clang_call_terminate in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "___cxa_end_catch", referenced from:
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
    "___gxx_personality_v0", referenced from:
      _main in main-4cbc75.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in main-4cbc75.o
      std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > std::__1::__pad_and_output<char, std::__1::char_traits<char> >(std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> >, char const*, char const*, char const*, std::__1::ios_base&, char) in main-4cbc75.o
      Dwarf Exception Unwind Info (__eh_frame) in main-4cbc75.o
      Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::endl<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&) in Pet-4e26e9.o
      std::__1::basic_ostream<char, std::__1::char_traits<char> >& std::__1::__put_character_sequence<char, std::__1::char_traits<char> >(std::__1::basic_ostream<char, std::__1::char_traits<char> >&, char const*, unsigned long) in Pet-4e26e9.o
      ...
    ld: symbol(s) not found for architecture x86_64
    clang: error: linker command failed with exit code 1 (use -v to see invocation)

### 1.2Run Or Not

Not.

### 1.3Fix Or Not

Fixed.

Just use clang++/g++ to compile CXX/CPP/C++ program.

### 1.4May be

clang/gcc to compile c program, clang++/g++ to compile c++ program.

### 1.5Other Fix Or Not

No.

## 2.Problem B

### 2.1Terminal output during compiling

### 2.2Run Or Not

### 2.3Fix Or Not

### 2.4May be

### 2.5Other Fix Or Not
