<?xml version='1.0'?>

<!-- This is a Docbook XSLT Customization Layer. Your XSLT processor will use this file instead of the default Docbook stylesheet.
     This file includes the original stylesheet, and then allows you to override the defaults with your own values. 
     Examples are in this file.
-->

<xsl:stylesheet 
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
   xmlns:fo="http://www.w3.org/1999/XSL/Format"
   xmlns:xslthl="http://xslthl.sf.net"
   xmlns:d="http://docbook.org/ns/docbook"
>
<xsl:import href="fo.xml" />

<!-- graphics for the alerts, tips, cautions, warnings, notes, etc. Build your own or turn this off! -->
<xsl:param name="admon.graphics" select="1" />

<!--programlisting stuff -->
<xsl:param name="use.extensions" select="1"/>
<xsl:param name="linenumbering.extension" select="1"/>
<xsl:param name="linenumbering.everyNth" select="1"/>
<xsl:param name="highlight.source" select="1" />

<!-- section numbering and depth -->
<xsl:param name="section.autolabel" select="1"></xsl:param>
<xsl:param name="section.autolabel.max.depth">1</xsl:param>


<!-- xref -->
<xsl:param name="insert.xref.page.number">yes</xsl:param>

<!-- Generated Text changes -->
 <xsl:param name="collect.xref.targets">no</xsl:param>

 <!-- making "Exercises" from "procedures" -->
 <xsl:param name="local.l10n.xml" select="document('')"/> 
 <l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0"> 
   <l:l10n language="en"> 
     
     <!-- Change "Procedure" into "Excercise" -->
     <l:gentext key="Procedure" text="Exercise"/>
     <l:gentext key="procedure" text="exercise"/>
     <l:gentext key="ListofProcedures" text="List of Exercises"/>
     <l:gentext key="listofprocedures" text="List of Exercises"/>

     <l:context name="title">
       <l:template name="procedure" text="%t"/>
       <l:template name="procedure.formal" text="Exercise %n. %t"/>
     </l:context>

     <l:context name="xref-number-and-title">
       <l:template name="procedure" text="Exercise %n, “%t”"/>
     </l:context>
     
     <!-- change how cross-references look -->
     <l:context name="xref">
       <l:template name="page.citation" text=" on page %p"/>
     </l:context>
     
   </l:l10n>
 </l:i18n>
 
<!-- TOC settings -->

  <xsl:param name="generate.toc">
  /appendix toc,title
  article/appendix  nop
  /article  toc,title
  book      toc,title,figure,table,example,equation
  /chapter  toc,title
  part      title
  /preface  title
  reference toc,title
  /sect1    toc
  /sect2    toc
  /sect3    toc
  /sect4    toc
  /sect5    toc
  /section  toc
  set       toc,title
  </xsl:param>

  <xsl:param name="toc.section.depth">1</xsl:param>

  <!-- fonts -->
  <xsl:param name="body.font.master">10</xsl:param>
  <xsl:param name="body.font.size">
   <xsl:value-of select="$body.font.master"></xsl:value-of><xsl:text>pt</xsl:text>
  </xsl:param>
  <xsl:param name="body.font.family">serif</xsl:param>

  <!-- page layout -->

  <xsl:param name="page.height.portrait">11in</xsl:param>
  <xsl:param name="page.width.portrait">8.5in</xsl:param>
  <xsl:param name="page.margin.inner">0.75in</xsl:param>
  <xsl:param name="page.margin.outer">0.50in</xsl:param>
  <xsl:param name= "page.margin.top">0.17in</xsl:param>  
  <xsl:param name="region.before.extent">0.17in</xsl:param> 
  <xsl:param name="body.margin.top">0.33in</xsl:param> 
  <xsl:param name="region.after.extent">0.35in</xsl:param>
  <xsl:param name="page.margin.bottom">0.50in</xsl:param>
  <xsl:param name="body.margin.bottom">0.65in</xsl:param>
  <xsl:param name="double.sided">0</xsl:param>
  <xsl:param name="body.start.indent">1pc</xsl:param>
  <xsl:param name="body.end.indent">1pc</xsl:param>


  <!-- Styling, Border and shading for section titles -->
  <xsl:attribute-set name="section.title.properties">
    <xsl:attribute name="padding">4pt</xsl:attribute>
    <xsl:attribute name="color">#000000</xsl:attribute>
  </xsl:attribute-set>


  <!-- Section 1 -->
  <xsl:attribute-set name="section.title.level1.properties">
    <xsl:attribute name="start-indent">1pc</xsl:attribute>
  </xsl:attribute-set>


  <!-- Section 2 -->
  <xsl:attribute-set name="section.title.level2.properties">
      <xsl:attribute name="font-size">16pt</xsl:attribute>
  </xsl:attribute-set>

  <!-- Section 3 -->
  <xsl:attribute-set name="section.title.level3.properties">
    <xsl:attribute name="font-size">14pt</xsl:attribute>
  </xsl:attribute-set>

  <!-- Section 4 -->
  <xsl:attribute-set name="section.title.level4.properties">
    <xsl:attribute name="font-size">14pt</xsl:attribute>
  </xsl:attribute-set>

  <!-- hyphenating and more, so that code examples don't exceed the length of the page -->
  <xsl:attribute-set name="monospace.verbatim.properties">
      <xsl:attribute name="wrap-option">wrap</xsl:attribute>
      <xsl:attribute name="hyphenation-character">\</xsl:attribute>
      <xsl:attribute name="font-size">8pt</xsl:attribute>
      <xsl:attribute name="keep-together.within-column">always</xsl:attribute>
  </xsl:attribute-set>


  <xsl:attribute-set name="admonition.properties">
    <xsl:attribute name="border">0.5pt solid black</xsl:attribute>
    <xsl:attribute name="background-color">#ffffee</xsl:attribute>
    <xsl:attribute name="padding">0.1in</xsl:attribute>
  </xsl:attribute-set>




  <!-- border and shade to screen and programlisting -->

  <xsl:param name="shade.verbatim" select="1"/>

  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="background-color">#eeeeee</xsl:attribute>
    <xsl:attribute name="border-width">0.5pt</xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-color">#575757</xsl:attribute>
    <xsl:attribute name="padding">3pt</xsl:attribute>
    <xsl:attribute name="margin-left">2pt</xsl:attribute>
  
  </xsl:attribute-set>




  <!-- Source Code Highlighting Styles -->
  <xsl:template match='xslthl:keyword' mode="xslthl">
    <fo:inline font-weight="bold" color="blue"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match='xslthl:comment' mode="xslthl">
    <fo:inline font-style="italic" color="green"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>

  <xsl:template match='xslthl:string' mode="xslthl">
    <fo:inline color="red"><xsl:apply-templates mode="xslthl"/></fo:inline>
  </xsl:template>
  
  
  
  <!-- Inline element styling -->
  <!-- the d: prefix is for docbook5. If you want to style the filename element, use d:filename -->
  <xsl:template match='d:filename'>
    <fo:inline color="#000066">
      <xsl:call-template name="inline.monoseq"/>
    </fo:inline>
  </xsl:template>

  <xsl:template match='d:application'>
    <fo:inline>
      <xsl:call-template name="inline.italicseq"/>
    </fo:inline>
  </xsl:template>

  <xsl:template match='d:command'>
    <fo:inline color="#A2000C">
      <xsl:call-template name="inline.monoseq"/>
    </fo:inline>
  </xsl:template>
  
  <xsl:template match='d:userinput'>
    <fo:inline color="#138900">
      <xsl:call-template name="inline.monoseq" />
    </fo:inline>
  </xsl:template>

  <xsl:template match='d:classname'>
    <fo:inline color="#161672">
      <xsl:call-template name="inline.monoseq" />
    </fo:inline>
  </xsl:template>

  <xsl:template match='d:methodname'>
    <fo:inline color="#161672">
      <xsl:call-template name="inline.monoseq" />
    </fo:inline>
  </xsl:template>
  
  <xsl:template match='d:literal'>
    <fo:inline color="#2B541C">
      <xsl:call-template name="inline.monoseq" />
    </fo:inline>
  </xsl:template>

</xsl:stylesheet>
