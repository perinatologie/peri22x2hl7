<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0">

	<p:input port="source" primary="true">
		<p:documentation>Input peri22x XML document (see peri22x/ for examples)</p:documentation>
	</p:input>
	
	<p:output port="result" serialization="map{'indent' : true()}">
		<p:documentation>Pretty-printed output</p:documentation>
	</p:output>


	<p:store name="save-peri22x" href="tmp/peri22x.xml"/>

		
	<p:xslt name="preprocess">
		<p:with-input port="stylesheet" href="xsl/preprocess-perihub.xsl"/>
	</p:xslt>

	<p:store name="save-preprocessed" href="tmp/preprocessed.xml"/>

	<p:xslt name="perihub2ada">
		<p:with-input port="stylesheet" href="xsl/perihub2ada.xsl"/>
	</p:xslt>

	<p:store name="save-ada" href="tmp/ada.xml"/>

	<p:xslt name="ada2kernset">
		<p:with-input port="stylesheet" href="node_modules/@nictiz/Geboortezorg/Publicaties/20180320/peri/2_2/kernset_aanleverbericht/wrapper/kernset_aanleverbericht_wrapper.xsl"/>
	</p:xslt>

	<p:store name="save-kernset" href="tmp/kernset.xml"/>

	<p:xslt name="kernset2html">
		<p:with-input port="stylesheet" href="xsl/hl72html.xsl"/>
	</p:xslt>

	<!-- 
	Schemavalidation not yet working
	
	<p:validate-with-schematron name="validate-kernset">
		<p:with-input port="schema" href="node_modules/@nictiz/peri20-xml/XML/schematron/peri20-albprn-ks-22.sch" />
	</p:validate-with-schematron>
	<p:store name="save-kernset-svrl" href="tmp/kernset.svrl"/>
	-->

</p:declare-step>
