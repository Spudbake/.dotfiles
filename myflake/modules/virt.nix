{ pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    
    rootless = {
      enable = true;
      setSocketVariable = true;
      
      daemon.settings = {
        default-runtime = "nvidia";
      };
    };
  };
  hardware.nvidia-container-toolkit.enable = true;

  environment.systemPackages = with pkgs; [
    spice spice-gtk
    spice-protocol
    win-virtio
    win-spice
    swtpm
  ];

  programs.virt-manager.enable = true;
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      ovmf.enable = true;
      ovmf.packages = with pkgs; [ OVMFFull.fd ];
    };
  };
  virtualisation.spiceUSBRedirection.enable = true;
  services.spice-vdagentd.enable = true;
  
  security.tpm2.enable = true;
  security.tpm2.pkcs11.enable = true;  # expose /run/current-system/sw/lib/libtpm2_pkcs11.so
  security.tpm2.tctiEnvironment.enable = true;  # TPM2TOOLS_TCTI and TPM2_PKCS11_TCTI env variables
  users.users.lincolnh.extraGroups = [ "tss" "libvirtd" ];
}
