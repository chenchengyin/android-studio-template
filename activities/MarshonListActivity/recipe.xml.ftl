<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

	<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
	        <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
	    </#if>

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

	<#if (buildApi gte 22) && appCompat && !(hasDependency('com.zhy:base-rvadapter'))>
	    <dependency mavenUrl="com.zhy:base-rvadapter:3.0.2" />
	</#if>
	<#if appCompat && !(hasDependency('com.android.support:design'))>
	    <dependency mavenUrl="com.android.support:design:${buildApi}.+" />
	</#if>

	<instantiate from="root/src/app_package/ListActivity.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	<instantiate from="root/src/app_package/Bean.java.ftl"
     	to="${escapeXmlAttribute(srcOut)}/bean/${beanName}.java" />
		
		
	<instantiate from="root/res/layout/activity_list.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
		
	<instantiate from="root/res/layout/default_loading.xml.ftl"
	to="${escapeXmlAttribute(resOut)}/layout/default_loading.xml" />
	
	

	<open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>        

 	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
