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
    uBootVersion = "2026.04";
    src = (pkgs.fetchurl {
          url = "https://ftp.denx.de/pub/u-boot/u-boot-2026.04.tar.bz2";
          sha256 = "ac7c04b8b7004923b00a4e5d6699c5df4d21233bac9fda690d8cfbc209fff2fd";
        });
  };
}
