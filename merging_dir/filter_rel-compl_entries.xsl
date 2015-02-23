<?xml version="1.0"?>
<!--+
    | 
    | change the 2004-xml-spreadsheet XML files into a simpler xml format
    | Usage: java net.sf.saxon.Transform -it main STYLESHEET_NAME.xsl (PARAMETER=VALUE)*
    +-->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:local="nightbar"
                xmlns:misc="someURI"
                xmlns:File="java:java.io.File"
		xmlns:fmp="http://www.filemaker.com/fmpxmlresult"
		xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
		exclude-result-prefixes="xs local fmp ss File misc">

  <xsl:strip-space elements="*"/>

  <xsl:output method="xml" name="xml"
              encoding="UTF-8"
              omit-xml-declaration="no"
              indent="yes"/>
  <xsl:output method="xml" name="html"
              encoding="UTF-8"
              omit-xml-declaration="yes"
              indent="yes"/>
  <xsl:output method="text" name="txt"
	      encoding="UTF-8"/>
  
  <xsl:param name="inDir" select="'sms2X_src'"/>
  <xsl:param name="paraDir" select="'sms-sjd2X_src'"/>
  <xsl:param name="cIndex" select="'07'"/>
  <xsl:param name="outDir" select="concat('_merged_stuff_', $cIndex)"/>
  <xsl:param name="this" select="base-uri(document(''))"/>
  <xsl:variable name="this_name" select="(tokenize($this, '/'))[last()]"/>

  <xsl:variable name="oe" select="'xml'"/>
  <xsl:variable name="tb" select="'&#9;'"/>
  <xsl:variable name="nl" select="'&#xA;'"/>
  <xsl:variable name="debug" select="false()"/>  

  <xsl:template match="/" name="main">
    
      <xsl:for-each select="for $f in collection(concat($inDir, '?select=*.xml;recurse=no;on-error=warning')) return $f">
	
	<xsl:variable name="current_file" select="substring-before((tokenize(document-uri(.), '/'))[last()], '.xml')"/>
	<xsl:variable name="current_dir" select="substring-before(document-uri(.), $current_file)"/>
	<xsl:variable name="current_location" select="concat($inDir, substring-after($current_dir, $inDir))"/>
	
	<xsl:call-template name="processFile">
	  <xsl:with-param name="file" select="."/>
	  <xsl:with-param name="name" select="$current_file"/>
	  <xsl:with-param name="ie" select="'xml'"/>
	  <xsl:with-param name="relPath" select="$current_location"/>
	  <xsl:with-param name="parallelDir" select="document(concat($paraDir, '/', 'sms2fin-eng.xml'))"/>
	</xsl:call-template>
      </xsl:for-each>
    
  </xsl:template>

  <!-- template to process file, once its existence has been determined -->
  <xsl:template name="processFile">
    <xsl:param name="file"/>
    <xsl:param name="name"/>
    <xsl:param name="ie"/>
    <xsl:param name="relPath"/>
    <xsl:param name="parallelDir"/>

    <xsl:message terminate="no">
      <xsl:value-of select="concat('Processing file: ', $relPath, $name, '.', $ie)"/>
    </xsl:message>      
    
    <!-- out -->
    <xsl:result-document href="{$outDir}/{$name}.{$oe}" format="{$oe}">
      <r>
	<xsl:for-each select="$file//e">
	  <xsl:variable name="current_lg" select="./lg"/>
	  <xsl:variable name="current_l" select="./lg/l"/>
	  
	  <xsl:message terminate="no">
	    <xsl:value-of select="concat('Processing e: ', ./lg/l, $nl)"/>
	  </xsl:message> 

	  <e>
	    <l id="{./@id}">
	      <xsl:copy-of copy-namespaces="no" select="./lg/l/@pos"/>
	      <xsl:value-of select="normalize-space(./lg/l)"/>
	    </l>
	    
	    <xsl:variable name="para_e">
	      <xsl:copy-of select="$parallelDir//e[lg/l[. = $current_l]]"/>
	      <xsl:copy-of select="$parallelDir//e[lg/variants/*[. = $current_l]]"/>
	    </xsl:variable>

	    <!--variants_overlap>
	      <xsl:copy-of select="$parallelDir//e[lg/variants/*[. = $current_l]]"/>
	    </variants_overlap-->
	    
	    <xsl:for-each select="$para_e/e">
	      <xsl:variable name="c_id" select="./@id"/>
	      <l_p id="{$c_id}">
		<xsl:value-of select="./lg/l"/>
	      </l_p>
	      <xsl:for-each select="./lg/variants/*">
		<xsl:element name="{./local-name()}">
		  <xsl:attribute name="id">
		    <xsl:value-of select="$c_id"/>
		  </xsl:attribute>
		  <xsl:value-of select="."/>
		</xsl:element>
	      </xsl:for-each>
	    </xsl:for-each>
	  </e>
	</xsl:for-each>
      </r>
    </xsl:result-document>
    
    <xsl:if test="$debug">
      <xsl:message terminate="no">
	<xsl:value-of select="concat('   Done!',' Output file  ',$name,' in: ', $outDir)"/>
      </xsl:message>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

