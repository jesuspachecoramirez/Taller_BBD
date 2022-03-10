Feature: Creacion de nuevo Prestamo de vehiculo
  Como usuario deseo solicitar un prestamo
  para la  compra de un vehiculo de concesionario
  porque los intereses del banco son asequibles


  #primer escenario
  Scenario: Usuario consulta si puede adquirir el Prestamo
    Given el usuario ingresa su datos registrados y valor total del credito
    When el sistema realiza la busqueda del usuario en la base de datos
    Then el usuario debe obtener si es apto para el prestamo

    #segundo escenario
  Scenario: Simulacion de Prestamo
      Given el usuario es el prestamo especificando cuotas 86
      When el sistema calcula el valor de cada cuota con los valores proporcionados
      Then el usuario debe obtener el resultado $1.828.192

   #tercer escenario
  Scenario: Negacion del prestamo del carro
  Given: El cliente solicita el prestamo.
  Given: Se ingresan los valores ingresos y bienes del cliente.
  When: Se calcula si tiene capacidad de pago.
  Then: Aparecera prestamo denegado.

  #cuarto escenario
  Scenario: Aprobación del prestamo del carro
  Given: El cliente solicita el prestamo.
  Given: Se ingresan los valores ingresos y bienes del cliente.
  When: Se calcula si tiene capacidad de pago.
  Then: Aparecera aprobado
