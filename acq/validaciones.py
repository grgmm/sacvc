from django.core.exceptions import ValidationError

def validar_parametro_tct(valor, minimo, maximo):
 if ( (isinstance(valor,float)  != True) or (isinstance(valor,float) != True) or (isinstance(valor,float) != True)):
  raise ValidationError('Parametros y rangos deben ser del tipo Real(Float)')
 else:
  #print(valor>=minimo)
  if (valor < minimo) or (valor > maximo):
   raise ValidationError('Valor %f fuera del rango establecido(%f %f)' % (valor,minimo,maximo))
  else:
   return(valor)