<manifest xmlns:android="http://schemas.android.com/apk/res/android"
	package="${packageName}">

    <application>
		<activity android:name="${relativePackage}.${activityName}">
		<#if createLauncher>
		    <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </#if>
		</activity>
    </application>

</manifest>
