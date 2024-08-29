#Esta funcion realiza el calculo y grafica de la aprosimacion del numero e
#con t como argumento de entrada

simulaNumeroE=function(nTotal){
  VA=1
  i=1
  t=1:nTotal
  
  tablaNumeroe=data.frame(
    t=t,
    VF=VA*((1+(1/t))^t)
  )
  #Creamos un objeto tipo lista con la tabla del numero e y algunos otros 
  #objetos:
  objetoLista=list(
    tablaE=tablaNumeroe,
    valorActual=VA,
    tasaInteres=i,
    periodosSimulados=nTotal
  )
  #Ahora grafico los valores de la tabla del numero e:
  plot(x=tablaNumeroe$t,y=tablaNumeroe$VF,type="l",col="red")

  return(objetoLista)
  }