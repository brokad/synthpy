let src = (builtins.fetchGit {
      url = "https://github.com/openquery-io/synth.git";
      ref = "master";
      rev = "4849e5b2f791d2dc152c435141bb424c3c06eda6";
    });
in import "${src}/nix/nixpkgs.nix"
