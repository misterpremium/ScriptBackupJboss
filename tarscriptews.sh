#tarews
#en la primera conexion ejecutar ssh -o "StrictHoshKeyChecking no" para añadirlo autamaticamente a host de confianza
for i in tehrh952.mgmt.dc.es.telefonica tehrha18.mgmt.dc.es.telefonica tehrha26.mgmt.dc.es.telefonica tehrha27.mgmt.dc.es.telefonica tehrha28.mgmt.dc.es.telefonica tehrha29.mgmt.dc.es.telefonica tehrha2c.mgmt.dc.es.telefonica tehrha2d.mgmt.dc.es.telefonica tehrha2f.mgmt.dc.es.telefonica tehrha2g.mgmt.dc.es.telefonica tehrha46.mgmt.dc.es.telefonica tehrha47.mgmt.dc.es.telefonica tehrha4n.mgmt.dc.es.telefonica tehrha4o.mgmt.dc.es.telefonica tehrha4q.mgmt.dc.es.telefonica tehrha52.mgmt.dc.es.telefonica tehrha53.mgmt.dc.es.telefonica tehrha54.mgmt.dc.es.telefonica ; do ssh -o "StrictHostKeyChecking no" $i "chmod -R 777 tmp && cd /apps && ls -ltr  && /opt/CA/AccessControl/bin/sesu USAGEST -c \"tar -cvf /apps/users/t719922/tmp/jboss-ews.tar jboss-ews \" && sesu USAGEST -c \"chmod 777 /apps/users/t719922/tmp/*\" && sesu USAGEST -c \"chown -R t719922  /apps/users/t719922/tmp\"" ; done

