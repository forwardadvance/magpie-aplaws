<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:bebop="http://www.arsdigita.com/bebop/1.0"
		xmlns:portal="http://www.uk.arsdigita.com/portal/1.0"
		xmlns:ui="http://www.arsdigita.com/ui/1.0"
		xmlns:atoz="http://xmlns.redhat.com/atoz/1.0"
		xmlns:nav="http://ccm.redhat.com/london/navigation"
		xmlns:cms="http://www.arsdigita.com/cms/1.0"
		exclude-result-prefixes="xsl bebop portal atoz nav cms ui">
	
	
	
	<xsl:template name="css">
		<link rel="stylesheet" href="{$theme-prefix}/stylesheets/stem.css" type="text/css" />
		<link rel="stylesheet" href="{$theme-prefix}/stylesheets/two_col.css" type="text/css" />
	</xsl:template>
	
	<xsl:template name="cssHomepage">
		<link rel="stylesheet" href="{$theme-prefix}/stylesheets/stem.css" type="text/css" />
		<link rel="stylesheet" href="{$theme-prefix}/stylesheets/two_col.css" type="text/css" />
		<link rel="stylesheet" href="{$theme-prefix}/stylesheets/homepage.css" type="text/css" />
	</xsl:template>
	
	
	<!-- Styling for text only pages -->
	<xsl:template name="cssTextOnly">
		<style type="text/css">
			<xsl:text disable-output-escaping="yes">
					
		&lt;!--			
			</xsl:text>
		@import "<xsl:value-of select="$theme-prefix"/>/style/textOnly.css";
		<xsl:text disable-output-escaping="yes">
		--&gt;

			</xsl:text>
		</style>
	</xsl:template>
	
	
	
	<xsl:template name="javaScript">
	<script>
			<xsl:text disable-output-escaping="yes">
					
		&lt;!--			
			</xsl:text>
			
			<!-- Script goes here -->
			
			<xsl:text disable-output-escaping="yes">
		--&gt;

			</xsl:text>
		</script>
	</xsl:template>
	
</xsl:stylesheet>