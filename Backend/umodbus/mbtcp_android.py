#!/usr/bin/env python
# scripts/examples/simple_tcp_client.py SCADA HMI O PLC MASTER
import socket
import sys
from umodbus import conf
from umodbus.client import tcp

# Enable values to be signed (default is False).
conf.SIGNED_VALUES = True
print('\n' '\n'  "         PRUEBA MODBUS DESARROLLADA POR" '\n' "         ING MIGUEL MORENO")
slave_ip = str(input('\n' '\n' "Dirección IP del Esclavo Modbus: "))
slave_puerto = int(input('\n' '\n' "Puerto del Esclavo Modbus: "))
slaveid = int(input('\n' '\n' "Id del Esclavo Modbus "))
slave_address = int(input('\n' '\n' "Dirección del registro en el Esclavo Modbus "))
Requeired_Value = int(input('\n' '\n' "Valor Requerido "))

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#sock.connect(('192.168.43.214', 1502)) #DIRECCION IP DEL ESCLAVO Y PUERTO
sock.connect((slave_ip, slave_puerto))

# Returns a message or Application Data Unit (ADU) specific for doing
# Modbus TCP/IP.

#message = tcp.write_multiple_coils(slave_id=1, starting_address=1, values=[1, 0, 1, 1])
#message = tcp.write_single_register(slave_id = 1, address = 1, value = 666)
message = tcp.write_single_register(slave_id = slaveid, address = slave_address, value = Requeired_Value)

# Response depends on Modbus function code. This particular returns the
# amount of coils written, in this case it is 4.
response = tcp.send_message(message, sock)
print(response)
sock.close()


#OJO PARA QUE ME FUNCIONE COMO USUARIO NO ROOT TUVE QUE USAR PUERTOS POR ENCIMA DEL 1024