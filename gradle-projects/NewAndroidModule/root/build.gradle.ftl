<#import "./shared_macros.ftl" as shared>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#if isLibraryProject>
apply plugin: 'com.android.library'
<#elseif isDynamicFeature>
apply plugin: 'com.android.dynamic-feature'
<#else>
apply plugin: 'com.android.application'
</#if>
<@kt.addKotlinPlugins />

<@shared.androidConfig hasApplicationId=isApplicationProject applicationId=packageName hasTests=true canHaveCpp=true canUseProguard=isApplicationProject||isLibraryProject />
 

dependencies {
    ${getConfigurationName("compile")} fileTree(dir: 'libs', include: ['*.jar'])
    <#if !improvedTestDeps>
    ${getConfigurationName("androidTestCompile")}('${resolveDependency("com.android.support.test.espresso:espresso-core:+")}', {
        exclude group: 'com.android.support', module: 'support-annotations'
    })
    </#if>
    <@kt.addKotlinDependencies />
<#if isDynamicFeature>
  implementation project(':${baseFeatureName}')
<#elseif (WearprojectName?has_content) && (Mobileincluded!false) && (Wearincluded!false)>
  wearApp project(':${WearprojectName}')
</#if>

  //recyclerview
  implementation 'com.github.CymChad:BaseRecyclerViewAdapterHelper:2.9.50'
  implementation 'androidx.recyclerview:recyclerview:1.1.0'

 
  implementation 'com.google.android.material:material:1.2.1'

 
    //recyclerview
    implementation 'com.github.CymChad:BaseRecyclerViewAdapterHelper:2.9.50'
    implementation 'androidx.recyclerview:recyclerview:1.1.0'

    //butterknife
    annotationProcessor 'com.jakewharton:butterknife:10.2.3'
    annotationProcessor 'com.jakewharton:butterknife-compiler:10.2.3'
    
    //glide
    implementation 'com.github.bumptech.glide:glide:4.11.0'
    annotationProcessor 'com.github.bumptech.glide:compiler:4.11.0'
    
    //rxjava2
    implementation 'io.reactivex.rxjava2:rxjava:2.2.19'
    implementation 'io.reactivex.rxjava2:rxandroid:2.1.1'
    
    //retrofit
    implementation 'com.squareup.retrofit2:retrofit:2.7.2'
    implementation 'com.squareup.okhttp3:okhttp:3.12.1'
    implementation 'org.ligboy.retrofit2:converter-fastjson-android:2.1.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.1.0'
    implementation 'com.squareup.okhttp3:logging-interceptor:3.4.1'
    implementation 'com.squareup.retrofit2:adapter-rxjava2:2.3.0'
}
