Feature: Creacion de nuevo Prestamo de vehiculo
  Como Cliente deseo solicitar un prestamo
  para la  compra de un vehiculo de concesionario
  porque los intereses del banco son asequibles


  #primer escenario
  Scenario: Cliente consulta si puede adquirir el Prestamo
    Given el Cliente ingresa su datos registrados y valor total del credito
    When el sistema realiza la busqueda del usuario en la base de datos
    Then el Cliente debe obtener si es apto para el prestamo

   #segundo escenario
  Scenario: Simulacion de Prestamo
    Given el Cliente es el prestamo especificando cuotas 86
    When el sistema calcula el valor de cada cuota con los valores proporcionados
    Then el Cliente debe obtener el resultado $1.828.192

   #tercer escenario
  Scenario: Negacion del prestamo del carro
    Given El cliente solicita el prestamo.
    Given Se ingresan los valores ingresos y bienes del cliente.
    When Se calcula si tiene capacidad de pago.
    Then Aparecera prestamo denegado.

  #cuarto escenario
  Scenario: Aprobación del prestamo del carro
    Given El cliente solicita el prestamo.
    Given Se ingresan los valores ingresos y bienes del cliente.
    When Se calcula si tiene capacidad de pago.
    Then Aparecera aprobado

  #quinto escenario
  Scenario: Cliente abona a capital del prestamo de vehiculo
    Given el Cliente ingresa el valor del abono de capital para disminuir la deuda
    When el sistema recibe el pago y hace el descuento de capital
    Then el Cliente recibe el valor restante

   #sexto escenario
  Scenario: Cliente solicita modificar el numero de cuotas
    Given el Cliente ingresa el nuevo numero de cuotas
    When el sistema realiza los cambios de las cuotas a pagar
    Then el Cliente obtiene el nuevo cambio de las cuotas