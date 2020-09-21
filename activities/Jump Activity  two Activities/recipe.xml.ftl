<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/MainActivity.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

	<instantiate from="root/res/layout/activity_main.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    
</recipe>
