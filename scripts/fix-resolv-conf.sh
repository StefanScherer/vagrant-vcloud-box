nslookup -timeout=10 -retry=1 google.de
rc=$?
if [[ $rc != 0 ]]; then
  if [ ! -f /etc/resolvconf/resolv.conf.d/tail  ]; then
    echo "nameserver 10.100.20.2" | sudo tee -a /etc/resolvconf/resolv.conf.d/tail
    echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolvconf/resolv.conf.d/tail
    sudo resolvconf -u
  fi
fi
