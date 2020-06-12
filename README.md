# First `cd` into project

``` sh
[cody@nixos:~]$ cd stack-to-nix-project/
direnv: error /home/cody/stack-to-nix-project/.envrc is blocked. Run `direnv allow` to approve its content

[cody@nixos:~/stack-to-nix-project]$ direnv allow
direnv: loading ~/stack-to-nix-project/.envrc
these derivations will be built:
... all dependencies you don't already have using nixpkgs 20.03
building '/nix/store/2bscgqk5z5kmnf1ng9347iv40nh7d4rp-cabal2nix-myproj.drv'...
installing
*** found package.yaml. Using hpack...
direnv: export +installPhase +phases +shellHook ~CONFIG_SHELL ~HOST_PATH ~LOCALE_ARCHIVE ~NIX_BINTOOLS ~NIX_CC ~NIX_GHC ~NIX_GHCPKG ~NIX_GHC_DOCDIR ~NIX_GHC_LIBDIR ~NIX_LDFLAGS ~PATH ~buildInputs ~builder ~name ~nativeBuildInputs ~out ~stdenv
[cody@nixos:~/stack-to-nix-project]$ cabal repl
Warning: The package list for 'hackage.haskell.org' is 214 days old.
Run 'cabal update' to get the latest list of available packages.
Resolving dependencies...
Build profile: -w ghc-8.8.3 -O1
In order, the following will be built (use -v for more details):
 - myproj-0.1.0.0 (lib) (first run)
Preprocessing library for myproj-0.1.0.0..
GHCi, version 8.8.3: https://www.haskell.org/ghc/  :? for help
[1 of 2] Compiling Lib              ( src/Lib.hs, interpreted )
[2 of 2] Compiling Paths_myproj     ( /home/cody/stack-to-nix-project/dist-newstyle/build/x86_64-linux/ghc-8.8.3/myproj-0.1.0.0/build/autogen/Paths_myproj.hs, interpreted )
Ok, two modules loaded.
*Lib> 
```


# Subsequent cd's into project

``` sh
[cody@nixos:~]$ cd -
/home/cody/stack-to-nix-project
direnv: loading ~/stack-to-nix-project/.envrc
./myproj.cabal is up-to-date
direnv: export +installPhase +phases +shellHook ~CONFIG_SHELL ~HOST_PATH ~LOCALE_ARCHIVE ~NIX_BINTOOLS ~NIX_CC ~NIX_GHC ~NIX_GHCPKG ~NIX_GHC_DOCDIR ~NIX_GHC_LIBDIR ~NIX_LDFLAGS ~PATH ~buildInputs ~builder ~name ~nativeBuildInputs ~out ~stdenv
[cody@nixos:~/stack-to-nix-project]$ cabal repl
Warning: The package list for 'hackage.haskell.org' is 214 days old.
Run 'cabal update' to get the latest list of available packages.
Resolving dependencies...
Build profile: -w ghc-8.8.3 -O1
In order, the following will be built (use -v for more details):
 - myproj-0.1.0.0 (lib) (first run)
Preprocessing library for myproj-0.1.0.0..
GHCi, version 8.8.3: https://www.haskell.org/ghc/  :? for help
[1 of 2] Compiling Lib              ( src/Lib.hs, interpreted )
[2 of 2] Compiling Paths_myproj     ( /home/cody/stack-to-nix-project/dist-newstyle/build/x86_64-linux/ghc-8.8.3/myproj-0.1.0.0/build/autogen/Paths_myproj.hs, interpreted )
Ok, two modules loaded.
*Lib> 

```
