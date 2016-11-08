<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

	<instantiate from="root/src/app_package/SplashActivity.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/start/${activityClass}.java" />	
	<instantiate from="root/res/layout/activity_splash.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
		
	<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>        

 	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
