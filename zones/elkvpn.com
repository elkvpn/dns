$TTL 86400

@       SOA ns1 hostmaster (
      1      ; serial
      7200   ; refresh
      30M    ; retry
      3D     ; expire
      900    ; ncache
)

@       NS      ns1.elkvpn.com.
@       NS      ns2.elkvpn.com.

ns1     A       54.197.214.82 ; ec2 - ns1
ns2     A       54.197.214.82 ; ec2 - ns2

$ttl 86400

; www
www      600 DYNA geoip!prod_www
www-dc01 600 DYNA geoip!prod_www/dc-01
