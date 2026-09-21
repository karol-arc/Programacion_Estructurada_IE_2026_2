Algoritmo Proyecto_Inventarios
	Definir inventario Como Entero
	Definir producto, cantidad Como Entero
	Dimensionar inventario(5)
	inventario[1] <- 10
	inventario[2] <- 20
	inventario[3] <- 15
	inventario[4] <- 8
	inventario[5] <- 25
	Escribir '===== SISTEMA DE INVENTARIOS ====='
	Escribir 'Productos disponibles:'
	Para producto<-1 Hasta 5 Hacer
		Escribir 'Producto ', producto, ': ', inventario[producto], ' unidades'
	FinPara
	Escribir ''
	Escribir 'Ingrese el número del producto que desea vender (1-5):'
	Leer producto
	Si producto>=1 Y producto<=5 Entonces
		Escribir 'Ingrese la cantidad que desea vender:'
		Leer cantidad
		Si cantidad>0 Y cantidad<=inventario[producto] Entonces
			inventario[producto] <- inventario[producto]-cantidad
			Escribir ''
			Escribir 'Venta realizada correctamente.'
			Escribir 'Producto: ', producto
			Escribir 'Cantidad vendida: ', cantidad
			Escribir 'Stock restante: ', inventario[producto]
		SiNo
			Escribir ''
			Escribir 'ERROR: La cantidad solicitada no es válida'
			Escribir 'o excede el stock disponible.'
			Escribir 'Stock actual: ', inventario[producto]
		FinSi
	SiNo
		Escribir 'ERROR: El número de producto no existe.'
	FinSi
	Escribir ''
	Escribir '===== INVENTARIO ACTUALIZADO ====='
	Para producto<-1 Hasta 5 Hacer
		Escribir 'Producto ', producto, ': ', inventario[producto], ' unidades'
	FinPara
FinAlgoritmo
