;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ro.asa.br. root.ro.asa.br. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.ro.asa.br.
@	IN	NS	ns2.ro.asa.br.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

ns1			A	192.168.0.1		; Change to desired NS1 IP
ns2			A	192.168.0.2		; Change to desired NS2 IP
