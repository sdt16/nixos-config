{
  user = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3xM4lIsKH5OBf5l+SUvit6jlv2Rn/tmIaOw532IKxq3yOEIw2r48YL7hyqKdthIt5xJXRjMzJeHEivfzQRPY+jJUHiAW9ELLlLH7DoH57hVRTZZHK57aifvPc+6GnQyrzhMplBDFRskIdi07OB1OhxXr25sFESNkwdrRQaLZaKHaAOxy4eHmi6yjVzlHs2faESR1vAZ224f9SgESIvaJQuSfys+PxDyQeottK3413/wkfW5XH4bkU07qScUwbZJbBoDAX7TKjBylcWeKg0yjy5bWAlGC8Wr8JS6l30pj7j35onqzkFQN2/DzqjmqdynFDsLnx4d7o213BXEckpugL skooz@sdt16-d-8700k"
    ];
  };
}