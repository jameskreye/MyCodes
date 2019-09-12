xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/RestReference_Operation1_request";
(:: import schema at "../../Nacionalidad/Resources/nxsd_schema1-request.xsd" ::)

declare variable $rutCliente as xs:string external;

declare function local:func($rutCliente as xs:string) as element() (:: schema-element(ns1:test) ::) {
    <ns1:test>
      <ns1:nacionalidadReq>
        <ns1:rutCliente>{fn:data($rutCliente)}</ns1:rutCliente>
      </ns1:nacionalidadReq>
    </ns1:test>
};

local:func($rutCliente)
