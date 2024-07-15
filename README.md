## Specify the scene delegate as part of the app's Info.plist file

In a newly created SwiftUI project:

Click your project name in the left file navigator
Click the app target in the following screen
Click 'Info'
Expand 'Application Scene Manifest'
Add a row inside 'Application Scene Manifest' – Xcode will generate a `<Your-Target-Name>-Info.plist` file in the left file navigator
Right click on the generated plist file, and choose Open As → Source Code
Add the scene configuration below inside the `<dict>` for `UIApplicationSceneManifest`
In a project with an existing Info.plist file:

Right click on the plist file in the left file navigator, and choose Open As → Source Code
Add the scene configuration below inside the `<dict>` for `UIApplicationSceneManifest`

```
<key>UISceneConfigurations</key>
<dict>
    <key>UIWindowSceneSessionRoleApplication</key>
    <array>
        <dict>
            <key>UISceneConfigurationName</key>
            <string>Default Configuration</string>
            <key>UISceneDelegateClassName</key>
            <string>$(PRODUCT_MODULE_NAME).SceneDelegate</string>
        </dict>
    </array>
</dict>
```
