{pkgs, ...}: {
  jupyterlab.runtimePackages = [
    pkgs.pandoc-cli
    ];

  kernel.python.dat600 = {
    enable = true;
    extraPackages = ps: [
      ps.numpy
      ps.matplotlib
      ps.ipykernel
      ps.nbmerge
    ];
  };
  kernel.rust."example".enable = true;
  kernel.c."example".enable = true;
  kernel.go."example".enable = true;
  

}
