Algoritmo COSTO_POLERAS

	IVA <- 0.19
	GIFTCARD <- 0.10
	
	precio_ORIG <- 0 
	precio_TOTAL <- 0 
	dcto_GIFTCARD <- 0 
	dcto_CANTIDAD <- 0 
	monto_IVA <- 0
	costo_ENVIO <- 0 
	costo_FINAL <- 0
	
	Definir cantidad Como Entero
	Definir peso Como Entero
	Definir tiene_GIFTCARD Como Caracter
	Definir envio Como Caracter
	
	Escribir "Ingrese el precio del poleron:"
	Leer precio_ORIG
	Escribir "¿Cuantos polerones desea comprar?:"
	Leer cantidad
	Escribir "¿Tiene una GIFTCARD de descuento? (Escriba SI o NO):"
	Leer tiene_GIFTCARD
	Escribir "¿El envío es en Chile o internacional? (Escriba NACIONAL o INTERNACIONAL):"
	Leer envio
	Si envio = "internacional" Entonces
		Escribir "Ingrese el peso del paquete en kilogramos:"
		Leer peso
	Fin Si
	
	precio_TOTAL <- precio_ORIG * cantidad
	
	Si tiene_GIFTCARD = "si" Entonces
		Escribir "FELICIDADES TIENES 10% DE DESCUENTO"
		dcto_GIFTCARD <- precio_TOTAL * GIFTCARD
	SiNo
		Escribir "Inscríbete gratis y recibe un descuento"
	Fin Si
	
	monto_IVA <- (precio_TOTAL - dcto_GIFTCARD) * IVA
	
	Si cantidad > 1 Entonces
		Escribir "Mientras más productos compras, más descuentos tendrás"
		dcto_CANTIDAD <- (precio_ORIG * 0.05) * (cantidad - 1)
	Fin Si
	
	// Calcular costo de envío
	Si tipoEnvio = "nacional" Entonces
		Escribir "FELICIDADES, envío gratis"
		costo_ENVIO <- 0
	SiNo
		Escribir "El envío internacional tiene un costo de $10 + $2 por kilogramo"
		costo_ENVIO <- 10 + (2 * peso)
	Fin Si
	
	costo_FINAL <- (precio_TOTAL - dcto_GIFTCARD - dcto_CANTIDAD) + monto_IVA + costo_ENVIO
	
	Escribir "---- RESUMEN DE COSTOS ----"
	Escribir "Precio total de productos: $", precio_TOTAL
	Escribir "Descuento por gift card: $", dcto_GIFTCARD
	Escribir "Descuento por cantidad: $", dcto_CANTIDAD
	Escribir "IVA (19%): $", monto_IVA
	Escribir "Costo de envío: $", costo_ENVIO
	Escribir "Costo final del producto: $", costo_FINAL
	
FinAlgoritmo
