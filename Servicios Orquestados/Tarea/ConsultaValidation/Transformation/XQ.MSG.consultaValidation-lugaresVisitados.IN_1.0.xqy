xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://jm.peter.cl/NEG/lugaresVisitados/v/1.0";
(:: import schema at "../../LugaresVisitados/Specifications/MSG.0010043.REQ.lugaresVisitados_1.0.xsd" ::)

declare variable $rutCliente as xs:string external;

declare function local:func($rutCliente as xs:string) as element() (:: schema-element(ns1:lugaresVisitadosReq) ::) {
    <ns1:lugaresVisitadosReq>
      <ns1:rutCliente>{fn:data($rutCliente)} </ns1:rutCliente>
    </ns1:lugaresVisitadosReq>
};

local:func($rutCliente)
