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
  
  <xsl:param name="inDir" select="'mnk_data_inc'"/>
  <xsl:param name="cIndex" select="'01'"/>
  <xsl:param name="outDir" select="concat('_mnk-gt_', $cIndex)"/>
  <xsl:variable name="of" select="'xml'"/>
  <xsl:variable name="e" select="$of"/>
  <xsl:variable name="debug" select="false()"/>
  <xsl:variable name="nl" select="'&#xa;'"/>
  <xsl:variable name="sr" select="'\*'"/>
  <xsl:variable name="rarrow" select="'▸'"/>
  <xsl:variable name="tb" select="'&#009;'"/>
  <xsl:variable name="exclude_flags" select="'__id__b_info__nr___b_info_left__pl_form__nr_form__nr_case_form__case__'"/>
  
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
	<r>
	  <xsl:for-each select="./r/e">
	    <e>
	      <xsl:copy-of select="./@*"/>
	      <lg>
		<l>
		  <xsl:value-of select="./p[./@id='6']"/>
		</l>

		<xsl:variable name="all_variants">
		  <xsl:variable name="c_pv">
		    <pv>
		      <xsl:copy-of
			  select="./p[./@id='6']/@*[not(contains($exclude_flags, concat('__',local-name(),'__')))]"/>
		    </pv>
		  </xsl:variable>
		  <!--xsl:copy-of select="$c_pv"/-->

		  <xsl:variable name="mixed_variants">
		    <xsl:for-each select="$c_pv/pv/@*">
		      <xsl:element name="{concat('l_', local-name())}">
			<xsl:value-of select="."/>
		      </xsl:element>
		    </xsl:for-each>
		  </xsl:variable>

		  <xsl:for-each select="$mixed_variants/*">
		    <xsl:if test="local-name() = 'l_var'">
		      <xsl:for-each select="tokenize(., '~')">
			<xsl:for-each select="(tokenize(., ' \('))[1]">
			  <xsl:if test="contains(.,'|')">
			    <xsl:variable name="head" select="substring-before(.,'|')"/>
			    <xsl:variable name="tail" select="substring-after(.,'|')"/>
			    <xsl:for-each select="tokenize($tail, ',')">
			      <l_var_pipe>
				<xsl:value-of select="normalize-space(concat(normalize-space($head),normalize-space(translate(.,'-',''))))"/>
			      </l_var_pipe>
			    </xsl:for-each>
			  </xsl:if>
			  <xsl:if test="not(contains(.,'|'))">
			    <l_var>
			      <xsl:value-of select="normalize-space(.)"/>
			    </l_var>
			  </xsl:if>
			</xsl:for-each>
		      </xsl:for-each>
		    </xsl:if>

		    <xsl:if test="local-name() = 'l_syn'">
		      <xsl:for-each select="tokenize(., ',')">
			<xsl:for-each select="tokenize(., '~')">
			  <xsl:for-each select="(tokenize(., ' \('))[1]">
			    <xsl:if test="contains(.,'(')">
			      <l_syn>
				<xsl:value-of select="normalize-space(translate(translate(.,'(',''),')',''))"/>
			      </l_syn>
			      <l_syn>
				<xsl:value-of select="normalize-space(concat(substring-before(.,'('),substring-after(.,')')))"/>
			      </l_syn>
			    </xsl:if>
			    
			    <xsl:if test="not(contains(.,'('))">
			      <xsl:if test="not(contains(.,')'))">
				<l_syn>
				  <xsl:value-of select="normalize-space(.)"/>
				</l_syn>
			      </xsl:if>
			    </xsl:if>
			  </xsl:for-each>
			</xsl:for-each>
		      </xsl:for-each>
		    </xsl:if>
		    
		    <xsl:if test="local-name() = 'l_attr'">
		      <l_attr>
			<xsl:value-of select="normalize-space(translate(translate(translate(.,'(',''),')',''),'#',''))"/>
		      </l_attr>
		    </xsl:if>
		    
		    <xsl:if test="local-name() = 'l_d_form'">
		      <l_d_form>
			<xsl:value-of select="normalize-space(.)"/>
		      </l_d_form>
		    </xsl:if>
		    
		    <xsl:if test="local-name() = 'l_right_part'">
		      <l_right_part>
			<xsl:value-of select="normalize-space(.)"/>
		      </l_right_part>
		    </xsl:if>
		    
		    <xsl:if test="local-name() = 'l_abbr'">
		      <l_abbr>
			<xsl:value-of select="normalize-space(translate(translate(.,'[',''),']',''))"/>
		      </l_abbr>
		    </xsl:if>
		    
		  </xsl:for-each>
		  
		</xsl:variable>
		
		<xsl:if test="count($all_variants/*[starts-with(local-name(),'l')]) &gt; 0">
		  <variants>
		    <xsl:copy-of select="$all_variants"/>
		    
		    <!--attributes>
		      <xsl:for-each select="$c_pv/pv/@*">
			<xsl:element name="{concat('xyz_', local-name())}"/>
		      </xsl:for-each>
		    </attributes-->

		  </variants>
		</xsl:if>
	      </lg>
	      <content>
		<xsl:copy-of select="./*"/>
	      </content>
	    </e>
	  </xsl:for-each>
	</r>
      </xsl:result-document>
    </xsl:for-each>
    
</xsl:template>
  
</xsl:stylesheet>
