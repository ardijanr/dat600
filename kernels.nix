{pkgs, ...}: {
  kernel.python.minimal = {
    enable = true;
  };
  kernel.rust."example".enable = true;
  kernel.c."example".enable = true;
  kernel.go."example".enable = true;
}
