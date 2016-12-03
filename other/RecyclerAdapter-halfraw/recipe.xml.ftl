<?xml version="1.0"?>
<recipe>
    <#if !(hasDependency('com.android.support:appcompat-v7'))>
	       <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+" />
	</#if>

	<#if !(hasDependency('com.zhy:base-rvadapter'))>
	    <dependency mavenUrl="com.zhy:base-rvadapter:3.0.2" />
	</#if>


    <instantiate from="root/src/app_package/RecyclerAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

    <instantiate from="root/src/app_package/ReViewHolder.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewHolder}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />
</recipe>
