# idris sample scratch pad
Example Idris project structure for a creating a library.

requires [Idris](https://github.com/idris-lang/Idris-dev) >=  1.3.1 and (gcc >= 5.0 or clang >= 3.8) 

## Quick Start

clean
```bash
idris --clean scratch.ipkg
```

build
```bash
idris --build scratch.ipkg
```

install    (for use by applications)
```bash
idris --install scratch.ipkg
```

test
```bash
idris --testpkg scratch.ipkg
```

docs 
```bash
idris --mkdoc scratch.ipkg
```

load the library into Idris repl
```bash
idris --repl scratch.ipkg
Main> hello
"hello" : String
Main> demoQuad 8
4096 : Integer
Main> demoQuad 1.2
2.0736 : Double
Main> :exec main
hello
hello
Main> :quit
```

## Usage 
- install library
- include scratch in your *.ipkg file
    - pkgs = scratch, other-libraries, ...
- import part or all of the library in *.idr source files
    - import Demo => will import all modules in Demo
    - import Demo.Utils => will import just the Utils module
    - import Other.Utils => will import just the Other module
    