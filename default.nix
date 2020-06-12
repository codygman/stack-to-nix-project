{ compiler ? "ghc883" }:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  hpkgs = pkgs.haskell.packages."${compiler}";
  myproj = hpkgs.developPackage {
    root = pkgs.nix-gitignore.gitignoreSource [] ./.;
    name = "myproj";
    modifier = drv:
      with pkgs.haskellPackages;
      pkgs.haskell.lib.disableOptimization (pkgs.haskell.lib.overrideCabal drv (attrs: {
        doCoverage = false;
        doCheck = true; # whether to run tests
        enableLibraryProfiling = false;
        enableExecutableProfiling = false;
        doHaddock = false;
        shellHook = ''
          hpack --hash .
        '';
        preConfigure = ''
          hpack --hash .
        '';
        buildTools = [ brittany
                       cabal-install
                       ghcid
                       ghcide
                       hoogle
                       hlint
                       hpack
                     ];
      }));
  };
in if pkgs.lib.inNixShell
   then myproj
   else
     pkgs.haskell.lib.dontCoverage (
       pkgs.haskell.lib.dontCheck
         (pkgs.haskell.lib.disableLibraryProfiling
           (pkgs.haskell.lib.disableExecutableProfiling
             (pkgs.haskell.lib.disableOptimization myproj))))
