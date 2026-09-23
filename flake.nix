{
  outputs = { ... } : 
  let img = import ./default.nix; 
      overlay = final: prev: { sprix.assets = img; };
  in {
    assets = img;
    overlays.assets = overlay;
    overlays.default = overlay;
  };
}