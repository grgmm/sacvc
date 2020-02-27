from datetime import datetime
import random 
import time
import json

def aleatorio():
	n=10
	lista =[0]*n  ##No entiendo esto?
	dateTimeObj= [0]*n ##No entiendo esto?

	i=0
	with open ('datos.jason','w') as file:
		while i<n:
			
			lista[i] = random.randint(0,1000)*3.395
			dateTimeObj[i] = datetime.now()

			
			#print (lista[i]*3.956 , dateTimeObj[j])
			
		#	time.sleep(1)
			
			
			
			#x=json.dumps(xi)
			#y=json.dumps(yi)
			#print (x)
			#print (y)
			z={lista[i]:str(dateTimeObj[i])}
			json.dump(z, file)
			i+=1
	return


aleatorios=aleatorio()
