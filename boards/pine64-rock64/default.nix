{ pkgs, ...}: {
  device = {
    manufacturer = "PINE64";
    name = "ROCK64";
    identifier = "pine64-rock64";
    productPageURL = "https://www.pine64.org/rock64/";
  };

  hardware = {
    soc = "rockchip-rk3328";
    SPISize = 16 * 1024 * 1024; # 16 MiB
  };

  Tow-Boot = {
    defconfig = "rock64-rk3328_defconfig";
    buildUBoot = true;
    uBootVersion = "2025.01";
    src = (pkgs.fetchurl {
          url = "https://ftp.denx.de/pub/u-boot/u-boot-2025.04-rc2.tar.bz2";
          sha256 = "e54102f17328397d5d63b00865e9108d5806d18018509fc24ce6e7e3fe6a12f1";
        });
  };
}
