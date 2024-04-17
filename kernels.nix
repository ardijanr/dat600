{pkgs, ...}: {
  jupyterlab.runtimePackages = with pkgs; [
    pandoc-cli
    texliveFull
    pandoc
    ];

  kernel.python.dat600 = {
    enable = true;
    extraPackages = ps: [
      ps.numpy
      ps.matplotlib
      ps.ipykernel
      ps.pulp
      ps.nbmerge
      ps.requests
    ];
  };
  kernel.rust."example".enable = true;
  kernel.c."example".enable = true;
  kernel.go."example".enable = true;
  

}
