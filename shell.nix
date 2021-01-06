with import <nixpkgs> {};

mkShell {
    buildInputs = [ jsonnet ];
}
