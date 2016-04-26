<?xml version="1.0"?>
<!--+
    | Usage: java -Xmx2048m net.sf.saxon.Transform -it main THIS_FILE inDir=DIR
    | 
    +-->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:xhtml="http://www.w3.org/1999/xhtml"
		xmlns:local="nightbar"
		exclude-result-prefixes="xs xhtml local">

  <xsl:strip-space elements="*"/>
  <xsl:output method="xml" name="xml"
	      encoding="UTF-8"
	      omit-xml-declaration="no"
	      indent="yes"/>

  <xsl:output method="text" name="txt"
              encoding="UTF-8"/>

  <xsl:output method="text" name="csv"
              encoding="UTF-8"/>


  <xsl:output method="html" name="html"
              encoding="UTF-8"
              version="4.0"
              indent="yes"/>

  <xsl:output method="xml" name="vrt"
              encoding="UTF-8"
              omit-xml-declaration="yes"
              indent="no"/>      
  
  <xsl:param name="inDir" select="'xxxxxxx'"/>
  <xsl:param name="outDir" select="'_out_'"/>
  <xsl:variable name="of" select="'xml'"/>
  <xsl:variable name="e" select="$of"/>
  <xsl:variable name="debug" select="false()"/>
  <xsl:variable name="nl" select="'&#xa;'"/>
  <xsl:variable name="sr" select="'\*'"/>
  <xsl:variable name="rarrow" select="'▸'"/>
  <xsl:variable name="tb" select="'&#009;'"/>

  
  <xsl:template match="/" name="main">

    <xsl:for-each select="for $f in collection(concat($inDir,'?recurse=no;select=*.xml;on-error=warning')) return $f">
      
      <xsl:variable name="current_file" select="(tokenize(document-uri(.), '/'))[last()]"/>
      <xsl:variable name="current_dir" select="substring-before(document-uri(.), $current_file)"/>
      <xsl:variable name="current_location" select="concat($inDir, substring-after($current_dir, $inDir))"/>
      <xsl:variable name="file_name" select="substring-before($current_file, '.xml')"/>

      <xsl:if test="true()">
	<xsl:message terminate="no">
	  <xsl:value-of select="concat('-----------------------------------------', $nl)"/>
	  <xsl:value-of select="concat('processing file ', $current_file, $nl)"/>
	  <xsl:value-of select="'-----------------------------------------'"/>
	</xsl:message>
      </xsl:if>
      <!--[]-->
      
      <xsl:result-document href="{$outDir}/{$file_name}.{$of}" format="{$of}">
	<r id="sms2fin-eng" xml:lang="sms">
	  <xsl:for-each select="./r/e">
	    <e id="{./@id}">
	      <lg>
		<l>
		  <xsl:value-of select="./c[@name='Skolt']"/>
		</l>
		<!-- take into account these issues: strings to be
		     used for overlap calculation -->
		<!-- var= -->
		<!-- var="šoorab ~ šõõrab" -->
		<!-- attr= -->
		<!-- pipe= -->

		<xsl:variable name="all_vars">
		  <variants>
		    <xsl:for-each
			select="tokenize(./c[@name='Skolt']/@var, '~')">
		      <l_var>
			<xsl:value-of select="normalize-space(.)"/>
		      </l_var>
		    </xsl:for-each>
		    <xsl:if test="./c[@name='Skolt']/@pipe">
		      <xsl:variable name="current_pipe" select="./c[@name='Skolt']/@pipe"/>
		      <xsl:variable name="right"
				    select="normalize-space(substring-before($current_pipe,
					    '|'))"/>
		      <xsl:variable name="left_seq"
				    select="substring-after($current_pipe,
					    ',')"/>
		      <xsl:for-each
			  select="tokenize($left_seq, ',')">
			<l_pipe>
			  <xsl:value-of select="concat($right,
						normalize-space(translate(.,
						'-', '')))"/>
			</l_pipe>
		      </xsl:for-each>
		    </xsl:if>
		    <xsl:if test="./c[@name='Skolt']/@attr">
		      <l_attr>
			<xsl:value-of select="./c[@name='Skolt']/@attr"/>
		      </l_attr>
		    </xsl:if>
		  </variants>
		</xsl:variable>
		
		<xsl:if test="$all_vars/variants/*">
		  <xsl:copy-of select="$all_vars/variants"/>
		</xsl:if>
		
	      </lg>
	      <mg>
		<tg xml:lang="fin">
		  <t>
		    <xsl:value-of select="./c[@name='Finnish']"/>
		  </t>
		</tg>
		<tg xml:lang="eng">
		  <t>
		    <xsl:value-of select="./c[@name='English']"/>
		  </t>
		</tg>
	      </mg>
	    </e>
	  </xsl:for-each>
	</r>
      </xsl:result-document>
    </xsl:for-each>
    
</xsl:template>
  
</xsl:stylesheet>
