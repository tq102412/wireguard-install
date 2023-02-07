#! /bin/bash

wg genkey | tee pri3 | wg pubkey >pub3
wg genkey | tee pri4 | wg pubkey >pub4
wg genkey | tee pri5 | wg pubkey >pub5
wg genkey | tee pri6 | wg pubkey >pub6
wg genkey | tee pri7 | wg pubkey >pub7
wg set wg0 peer $(cat pub3) allowed-ips 10.10.10.3/32
wg set wg0 peer $(cat pub4) allowed-ips 10.10.10.4/32
wg set wg0 peer $(cat pub5) allowed-ips 10.10.10.5/32
wg set wg0 peer $(cat pub6) allowed-ips 10.10.10.6/32
wg set wg0 peer $(cat pub7) allowed-ips 10.10.10.7/32
wg-quick save wg0
