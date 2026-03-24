/

# <INTERFACE> - wlan sasajos pavadinimas pvz. wlan0/wlan interface name eg. wlan0
# <STUDENTID> - mano vgtu studento numeris/mano vgtu student id
# <PASSWORD> - mano vgtu passwordas/mano vgtu user password
nmcli con add \
  type wifi \
  ifname <INTERFACE> \
  con-name eduroam \
  ssid eduroam \
  ipv4.method auto \
  802-1x.eap peap \
  802-1x.phase2-auth mschapv2 \
  802-1x.phase1-auth-flags 32 \
  802-1x.identity <STUDENTID> \
  802-1x.password <PASSWORD>> \
  wifi-sec.key-mgmt wpa-eap
