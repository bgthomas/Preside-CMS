/**
 * The URL Redirect rule object is used to store individual URL redirect rules. These rules
 * can use regex, etc. and are used to setup dynamic and editorial redirects.
 */
component extends="preside.system.base.SystemPresideObject" displayName="URL Redirect rule" {
	property name="label" uniqueindexes="redirectUrlLabel";

	property name="source_url_pattern" type="string"  dbtype="varchar" maxlength=200 required=true uniqueindexes="sourceurl";
	property name="redirect_type"      type="string"  dbtype="varchar" maxlength=3   required=true format="regex:(301|302)";
	property name="exact_match_only"   type="boolean" dbtype="boolean"               required=false default=false;

	property name="redirect_to_link" relationship="many-to-one" relatedto="link" required=true;
}