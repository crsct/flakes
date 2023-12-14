{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShell {
    buildInputs = [pkgs.nodejs_latest];
    shellHook = ''
      npm i
      npm run dev
    '';
  }
