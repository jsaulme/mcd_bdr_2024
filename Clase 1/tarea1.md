# Tarea 1

## Instrucciones 

### Crea un repositorio publico en github

[Repositorio](https://github.com/jsaulme/mcd_bdr_2024.git) para la UA "Bases de Datos Relacionales" del Master en Data Sciencie

### Compartir el repositorio en el Teams
[Repositorio](https://github.com/jsaulme/mcd_bdr_2024.git) compartido en este [archivo en Teams](https://uanledu.sharepoint.com/:f:/s/Section_02305010221203011401002501D02002/Eug7Oob54LNPtrij_rEj4XsBW7PErTYoQZazKBdsBXiwBA?e=xrdWaD)

### Describe una base de datos y sus relaciones de manera no estructurada con la cual vas a trabajar en el semestre. Agrega el tipo de dato que supones tendrá cada uno de tus atributos. 


#### Descripcion
    El CEO de una nueva fintech solicita esta evaluando la posibilidad de que lanzar una *tarjeta de credito* al mercado. Para determinar las caracteristicas con las que va a contar el producto como si tendrá *anualidad*, si ofrecerá algún programa de *beneficios* y que *requisitos* de elegibilidad de los clientes que la soliciten, quiere comprender el panorama actual de las tarjetas de credito actuales ofrecidas por los bancos.

#### Entidades, atributos y tipo de datos de la Base de Datos

1. **Institucion:**
   - Nombre_Institucion: (*str*)
   - Banco: (*str*)

2. **TarjetaCredito:**
   - Nombre_TarjetaCredito: (*str*)
   - Red_Pagos: (*str*)
   - Anualidad: (*num*)
   - Anualidad tarjeta adicional. (*num*)

3. **Comisiones:**
   - Gastos_Cobranza: (*num*)
   - Falta_Pago: (*num*)
   - Reposicion: (*num*)
   - Disposicion_Efectivo_Cajero_Propio: (*num*)

5. **Requisitos:**
   - Ingresos_Minimos_Comprobables: (*num*)

6. **Seguros:**
   - Perdida_Demora_Equipaje: (*str*)
   - Accidentes_Enfermedades_Viajes: (*str*)
   - Renta_Automoviles: (*str*)
