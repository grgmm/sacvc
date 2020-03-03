from datetime import datetime
import random 
import time
import json

def aleatorio():
	n=10
	#lista =[0]*n  ##No entiendo esto?
	#dateTimeObj= [0]*n ##No entiendo esto?

	i=0
	with open ('datos.json','w') as file: #abre un archivo json para escrtitura
		
		while i<n:
			#Escribe fecha actual (timestamp) y un numero aleatorio en una fila junto con un indice fijo, 10 iteraciones para estea prueba
			file.write(json.dumps({"id_Tag": 9,"Timestamp": str(datetime.now()),"Pv": random.randint(0,1000)*3.95,}) + "\n")
			i+=1
        	

			#print (lista[i]*3.956 , dateTimeObj[j])
			
		#	time.sleep(1)
			
			
			
			#x=json.dumps(xi)
			#y=json.dumps(yi)
			#print (x)
			#print (y)
			#z={lista[i]:str(dateTimeObj[i])}
			#json.dump(z, file)
			
	return


aleatorios=aleatorio()
