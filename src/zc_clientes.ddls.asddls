@AbapCatalog.sqlViewName: 'ZV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
define view zc_clientes
  as select from ztb_clientes  as clientes
    inner join   ztb_clnts_lib as clnts on clnts.id_cliente = clientes.id_cliente
{
      //clnts
  key id_libro            as IdLibro,
      //clientes
  key clientes.id_cliente as IdCliente,
  key tipo_acceso         as Acceso,
      nombre              as Nombre,
      apellidos           as Apellido,
      email               as Email
}
