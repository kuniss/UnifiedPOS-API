<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
>
	<xsl:output method="text"/>
	
	<xsl:template match="/">
{
  "$schema": "http://json-schema.org/draft-04/schema#",
    <xsl:apply-templates/>
}
	</xsl:template>

  	<xsl:template match="xs:schema">
  		<xsl:apply-templates/>
   	</xsl:template>

  	<xsl:template match="xs:complexType">
  		<xsl:value-of select="./@name"/>:
  {
  			<xsl:apply-templates/>
  }
   	</xsl:template>

  	<xsl:template match="xs:sequence">
    "type" : "array",
    "items" : {
    	<xsl:apply-templates></xsl:apply-templates>
    }  		
   	</xsl:template>
   	
   	
   	
   	
  	<xsl:template match="xs:documentation"></xsl:template>
   	
</xsl:stylesheet> 
