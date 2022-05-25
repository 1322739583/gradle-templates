<?xml version="1.0"?>
<recipe>

    
	<instantiate from="root/src/app_package/TempActivity.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

	<instantiate from="root/src/app_package/adapter/TempAdapter.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${adapterPackage}/${adapterName}.java" />

	<instantiate from="root/src/app_package/model/DataModel.java.ftl"
		to="${escapeXmlAttribute(srcOut)}/${modelPackage}/${modelName}.java" />

	<instantiate from="root/res/layout/temp_layout.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

	<instantiate from="root/res/layout/temp_item.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${itemXmlName}.xml" />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    
</recipe>
