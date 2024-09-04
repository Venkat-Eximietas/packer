build {
  source "nutanix.ubuntu" {
    name = "ubuntu"
  }

  provisioner "shell" {
    only = ["nutanix.ubuntu"]
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
      "echo \"FOO is $FOO\" > example.txt",
      "sudo apt update -y",
      "sudo apt install netscript network-manager net-tools wpasupplicant networkd-dispatcher -y",
      "sudo systemctl enable netscript",
      "sudo systemctl enable NetworkManager",
      "echo '[Unit]\nDescription=DHCP Client\nAfter=network.target\n\n[Service]\nExecStart=/sbin/dhclient\nRestart=always\n\n[Install]\nWantedBy=multi-user.target' | sudo tee /etc/systemd/system/dhclient.service",
      "sudo chmod +x /etc/systemd/system/dhclient.service"
      "sudo systemctl daemon-reload",
      "sudo systemctl enable dhclient.service",
      "sudo systemctl start dhclient.service"
    ]
  }

}