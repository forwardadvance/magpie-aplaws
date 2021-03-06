<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:ui="http://www.arsdigita.com/ui/1.0"
		xmlns:bebop="http://www.arsdigita.com/bebop/1.0"
		xmlns:portal="http://www.uk.arsdigita.com/portal/1.0"
		xmlns:cms="http://www.arsdigita.com/cms/1.0"
		xmlns:nav="http://ccm.redhat.com/london/navigation"
		xmlns:atoz="http://xmlns.redhat.com/atoz/1.0"
		xmlns:terms="http://xmlns.redhat.com/london/terms/1.0"
		exclude-result-prefixes="xsl ui bebop portal cms nav atoz terms">

	<!-- Override templates found in the APLAWS+ primary template 
	TJB for Runtime Collective 20040604 -->
	
	<!-- Output HTML with correct DOCTYPE including system identifier URI 
	So as not to trigger 'Quirks mode' in modern browsers TJB-RC-20040608 -->
	<xsl:output method="xml" indent="yes"
			doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
			doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
			omit-xml-declaration="yes"/>
	<xsl:param name="context-prefix"/>
	<xsl:param name="theme-prefix"/>
	
	<!-- FIXME: hardcode this for categories -->
	<!-- xsl:variable name="dispatcher-prefix">/ccm</xsl:variable -->
	
	<xsl:template match="bebop:page[@class='simplePage']">
		<html lang="en">
			<head>
				<title>
					<xsl:call-template name="councilName" /><xsl:call-template name="htmlTitleBuilder" />
				</title>
				<xsl:call-template name="metaData"/>
				<xsl:call-template name="css" />
				<xsl:call-template name="javascript" />
			</head>
			<body>
				<div id="wrapper">
					<ul class="access">
						<li>
							<a href="#content">Skip to Content</a>
						</li>
					</ul>
					<xsl:call-template name="pageHeader" />
					<xsl:call-template name="breadcrumb" />
					<a name="content" class="access">&#160;</a>
					<xsl:call-template name="pageContent" />
					<xsl:call-template name="pageFooter" />
				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="pageContent">
	</xsl:template>

</xsl:stylesheet>
