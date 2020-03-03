#!/usr/bin/env python
# scripts/examples/simple_tcp_client.py SCADA HMI O PLC MASTER
import socket

from umodbus import conf
from umodbus.client import tcp

# Enable values to be signed (default is False).
conf.SIGNED_VALUES = True

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('192.168.43.214', 1502)) #DIRECCION IP DEL ESCLAVO Y PUERTO

# Returns a message or Application Data Unit (ADU) specific for doing
# Modbus TCP/IP.

#message = tcp.write_multiple_coils(slave_id=1, starting_address=1, values=[1, 0, 1, 1])
message = tcp.write_single_register(slave_id = 1, address = 1, value = 200)

# Response depends on Modbus function code. This particular returns the
# amount of coils written, in this case it is 4.
response = tcp.send_message(message, sock)
print(response)
sock.close()


#OJO PARA QUE ME FUNCIONE COMO USUARIO NO ROOT TUVE QUE USAR PUERTOS POR ENCIMA DEL 1024