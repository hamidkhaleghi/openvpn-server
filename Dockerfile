FROM ubuntu

WORKDIR /root/openvpn
ADD ./openvpn.sh /openvpn.sh
RUN chmod +x /openvpn.sh
CMD ["openvpn.sh"]