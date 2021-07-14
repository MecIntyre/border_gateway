new:
	vagrant up
	vagrant reload

fresh: clean
	vagrant up
	vagrant reload

clean:
	vagrant destroy -f
	rm -rf .vagrant
	rm -rf etc-dnsmasq.d
	rm -rf etc-pihole
	