xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://jm.peter.cl/NEG/lugaresVisitados/v/1.0";
(:: import schema at "../../LugaresVisitados/Specifications/MSG.0010043.REQ.lugaresVisitados_1.0.xsd" ::)
declare namespace ns1="http://jm.peter.cl/NEG/obtenerLista/v/1.0";
(:: import schema at "../Specifications/MSG.0010044.RESP.ObtenerLista_1.0.xsd" ::)

declare variable $obtenerListaResp as element() (:: schema-element(ns1:obtenerListaResp) ::) external;

declare function local:func($obtenerListaResp as element() (:: schema-element(ns1:obtenerListaResp) ::)) as element() (:: schema-element(ns2:lugaresVisitadosReq) ::) {
    <ns2:lugaresVisitadosReq>
      <ns2:ciudad>
      <ns2:listaNorte>
        <ns2:nombreCiudad>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaNorte/ns1:nombreCiudad)}</ns2:nombreCiudad>
        <ns2:codigoPostal>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaNorte/ns1:codigoPostal)}</ns2:codigoPostal>
        <ns2:cantidadHabitantes>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaNorte/ns1:cantidadHabitantes)}</ns2:cantidadHabitantes>
        <ns2:tipoTransporte>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaNorte/ns1:tipoTransporte)}</ns2:tipoTransporte>
      </ns2:listaNorte>
      
      <ns2:listaSur>
        <ns2:nombreCiudad>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaSur/ns1:nombreCiudad)}</ns2:nombreCiudad>
         <ns2:codigoPostal>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaSur/ns1:codigoPostal)} </ns2:codigoPostal>
         <ns2:cantidadHabitantes>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaSur/ns1:cantidadHabitantes)}</ns2:cantidadHabitantes>
         <ns2:tipoTransporte>{fn:data($obtenerListaResp/ns1:ciudad/ns1:listaSur/ns1:tipoTransporte)}</ns2:tipoTransporte>
      </ns2:listaSur>
      
      <ns2:comuna>
        <ns2:listaCentro>
          <ns2:nombreComuna>{fn:data($obtenerListaResp/ns1:comuna/ns1:listaCentro/ns1:nombreComuna)}</ns2:nombreComuna>
          <ns2:poblacion>{fn:data($obtenerListaResp/ns1:comuna/ns1:listaCentro/ns1:poblacion)}</ns2:poblacion>
        </ns2:listaCentro>
      </ns2:comuna>


        </ns2:ciudad>
    </ns2:lugaresVisitadosReq>
};

local:func($obtenerListaResp)
