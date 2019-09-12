xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://jm.peter.cl/NEG/obtenerLista/v/1.0";
(:: import schema at "../../ObtenerLista/Specifications/MSG.0010044.REQ.ObtenerLista_1.0.xsd" ::)

declare variable $rutCliente as xs:string external;

declare function local:func($rutCliente as xs:string) as element() (:: schema-element(ns1:obtenerListaReq) ::) {
    <ns1:obtenerListaReq>
    <ns1:rutCliente>{fn:data($rutCliente)}</ns1:rutCliente>
    </ns1:obtenerListaReq>
};

local:func($rutCliente)
