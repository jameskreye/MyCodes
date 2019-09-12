xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://ws.wom.cl/WOM/NEG/ProductCatalog/purchaseValidation/v/2.0";
(:: import schema at "../Specifications/MSG.0010043.RESP.purchaseValidation_2.0.xsd" ::)

declare variable $codigo as xs:string external;
declare variable $glosa as xs:string external;

declare function local:func($codigo as xs:string, 
                            $glosa as xs:string) 
                            as element() (:: schema-element(ns1:purchaseValidationResp) ::) {
    <ns1:purchaseValidationResp>
      <ns1:codigo>{fn:data($codigo)}</ns1:codigo>
      <ns1:glosa>{fn:data($glosa)}</ns1:glosa>
    </ns1:purchaseValidationResp>
};

local:func($codigo, $glosa)
