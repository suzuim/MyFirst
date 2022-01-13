//
//  ContentView.swift
//  MyFirst
//
//  Created by 今井涼葉 on 2021/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, Tsuda!"
    
    var body: some View {
        
        VStack{
            Text(outputText)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                
                outputText = "Hi, Swift!"
                
            }) {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="17701" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES">
    <device id="retina6_1" orientation="portrait" appearance="light"/>
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="17703"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="System colors in document resources" minToolsVersion="11.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--Navigation Controller-->
        <scene sceneID="67Z-6U-oqd">
            <objects>
                <navigationController id="ism-Hg-5IR" sceneMemberID="viewController">
                    <navigationBar key="navigationBar" contentMode="scaleToFill" id="nFZ-wM-XfS">
                        <rect key="frame" x="0.0" y="44" width="414" height="44"/>
                        <autoresizingMask key="autoresizingMask"/>
                    </navigationBar>
                    <connections>
                        <segue destination="Sa3-jx-6kw" kind="relationship" relationship="rootViewController" id="T5H-6f-j59"/>
                    </connections>
                </navigationController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="OXD-LH-ncU" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-783" y="136"/>
        </scene>
        <!--Chat List View Controller-->
        <scene sceneID="E3E-hw-Xng">
            <objects>
                <viewController storyboardIdentifier="ChatListViewController" useStoryboardIdentifierAsRestorationIdentifier="YES" id="Sa3-jx-6kw" customClass="ChatListViewController" customModule="ChatAppWithFirebase" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="uo0-le-aun">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="z2Q-dP-fdH">
                                <rect key="frame" x="0.0" y="88" width="414" height="774"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" insetsLayoutMarginsFromSafeArea="NO" selectionStyle="blue" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" reuseIdentifier="cellId" rowHeight="80" id="ghb-YH-oe2" customClass="ChatListTableViewCell" customModule="ChatAppWithFirebase" customModuleProvider="target">
                                        <rect key="frame" x="0.0" y="28" width="414" height="80"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" insetsLayoutMarginsFromSafeArea="NO" tableViewCell="ghb-YH-oe2" id="jev-Qc-LM7">
                                            <rect key="frame" x="0.0" y="0.0" width="414" height="80"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <imageView clipsSubviews="YES" userInteractionEnabled="NO" contentMode="scaleAspectFit" horizontalHuggingPriority="251" verticalHuggingPriority="251" translatesAutoresizingMaskIntoConstraints="NO" id="xjG-gC-Ebf">
                                                    <rect key="frame" x="10" y="5" width="70" height="70"/>
                                                    <color key="backgroundColor" systemColor="systemRedColor"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" secondItem="xjG-gC-Ebf" secondAttribute="height" multiplier="1:1" id="JbB-Ni-ITy"/>
                                                        <constraint firstAttribute="width" constant="70" id="krl-Jt-cfq"/>
                                                    </constraints>
                                                </imageView>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="最後のメッセージ" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="j2Q-9y-r76">
                                                    <rect key="frame" x="90" y="21" width="114.5" height="17"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                                    <nil key="textColor"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="太郎" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="esE-Dh-8Kw">
                                                    <rect key="frame" x="90" y="46" width="29" height="17"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                                    <color key="textColor" white="0.33333333333333331" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="NrH-Kw-PX5">
                                                    <rect key="frame" x="368.5" y="20" width="35.5" height="17"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                                    <color key="textColor" white="0.66666666666666663" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="xjG-gC-Ebf" firstAttribute="centerY" secondItem="jev-Qc-LM7" secondAttribute="centerY" id="0eD-0s-obb"/>
                                                <constraint firstItem="j2Q-9y-r76" firstAttribute="leading" secondItem="xjG-gC-Ebf" secondAttribute="trailing" constant="10" id="AuG-W9-Vyg"/>
                                                <constraint firstItem="j2Q-9y-r76" firstAttribute="top" secondItem="jev-Qc-LM7" secondAttribute="topMargin" constant="10" id="G0D-7t-eVG"/>
                                                <constraint firstItem="NrH-Kw-PX5" firstAttribute="top" secondItem="jev-Qc-LM7" secondAttribute="top" constant="20" id="MZn-Rb-KH5"/>
                                                <constraint firstItem="esE-Dh-8Kw" firstAttribute="top" secondItem="j2Q-9y-r76" secondAttribute="bottom" constant="8" id="PTp-BT-koM"/>
                                                <constraint firstAttribute="trailing" secondItem="NrH-Kw-PX5" secondAttribute="trailing" constant="10" id="VOh-vg-4wN"/>
                                                <constraint firstItem="esE-Dh-8Kw" firstAttribute="leading" secondItem="xjG-gC-Ebf" secondAttribute="trailing" constant="10" id="YKS-j2-NJN"/>
                                                <constraint firstItem="xjG-gC-Ebf" firstAttribute="leading" secondItem="jev-Qc-LM7" secondAttribute="leading" constant="10" id="bQ1-zw-q13"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <connections>
                                            <outlet property="dateLabel" destination="NrH-Kw-PX5" id="NDp-wp-d9R"/>
                                            <outlet property="latestMssageLabel" destination="j2Q-9y-r76" id="9yg-E6-LNP"/>
                                            <outlet property="partnerLabel" destination="esE-Dh-8Kw" id="Gwx-HB-6vm"/>
                                            <outlet property="userImageView" destination="xjG-gC-Ebf" id="Ndm-TK-0hQ"/>
                                        </connections>
                                    </tableViewCell>
                                </prototypes>
                            </tableView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="xbJ-Yx-tBM"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                        <constraints>
                            <constraint firstItem="z2Q-dP-fdH" firstAttribute="leading" secondItem="xbJ-Yx-tBM" secondAttribute="leading" id="IYk-Ni-h7Q"/>
                            <constraint firstItem="xbJ-Yx-tBM" firstAttribute="trailing" secondItem="z2Q-dP-fdH" secondAttribute="trailing" id="fEA-Rx-mOB"/>
                            <constraint firstItem="xbJ-Yx-tBM" firstAttribute="bottom" secondItem="z2Q-dP-fdH" secondAttribute="bottom" id="gge-vy-6KE"/>
                            <constraint firstItem="z2Q-dP-fdH" firstAttribute="top" secondItem="xbJ-Yx-tBM" secondAttribute="top" id="ndV-CU-8Fd"/>
                        </constraints>
                    </view>
                    <navigationItem key="navigationItem" id="rTP-fb-8uo"/>
                    <connections>
                        <outlet property="chatListTableView" destination="z2Q-dP-fdH" id="nHN-uf-PYc"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="hb5-6s-zwj" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="18.840579710144929" y="135.9375"/>
        </scene>
    </scenes>
    <resources>
        <systemColor name="systemBackgroundColor">
            <color white="1" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
        </systemColor>
        <systemColor name="systemRedColor">
            <color red="1" green="0.23137254901960785" blue="0.18823529411764706" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
        </systemColor>
    </resources>
</document>

class ChatListViewController: UIViewController {
    
    private let cellId = "cellId"
    
    @IBOutlet weak var chatListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatListTableView.delegate = self
        chatListTableView.dataSource = self
    }
    
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ChatListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatListTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
    
}

class ChatListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var partnerLabel: UILabel!
    @IBOutlet weak var latestMssageLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.layer.cornerRadius = 35
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>$(PRODUCT_NAME)</string>
	<key>CFBundlePackageType</key>
	<string>$(PRODUCT_BUNDLE_PACKAGE_TYPE)</string>
	<key>CFBundleShortVersionString</key>
	<string>1.0</string>
	<key>CFBundleVersion</key>
	<string>1</string>
	<key>LSRequiresIPhoneOS</key>
	<true/>
	<key>UIApplicationSceneManifest</key>
	<dict>
		<key>UIApplicationSupportsMultipleScenes</key>
		<false/>
		<key>UISceneConfigurations</key>
		<dict>
			<key>UIWindowSceneSessionRoleApplication</key>
			<array>
				<dict>
					<key>UISceneConfigurationName</key>
					<string>Default Configuration</string>
					<key>UISceneDelegateClassName</key>
					<string>$(PRODUCT_MODULE_NAME).SceneDelegate</string>
					<key>UISceneStoryboardFile</key>
					<string>Main</string>
				</dict>
			</array>
		</dict>
	</dict>
	<key>UIApplicationSupportsIndirectInputEvents</key>
	<true/>
	<key>UILaunchStoryboardName</key>
	<string>LaunchScreen</string>
	<key>UIMainStoryboardFile</key>
	<string>Main</string>
	<key>UIRequiredDeviceCapabilities</key>
	<array>
		<string>armv7</string>
	</array>
	<key>UISupportedInterfaceOrientations</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>UISupportedInterfaceOrientations~ipad</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationPortraitUpsideDown</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
</dict>
</plist>

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let window = UIWindow(windowScene: scene as! UIWindowScene)
        self.window = window
        window.makeKeyAndVisible()
        
        let storybaord = UIStoryboard(name: "ChatList", bundle: nil)
        let chatListViewController = storybaord.instantiateViewController(identifier: "ChatListViewController")
        let nav = UINavigationController(rootViewController: chatListViewController)
        
        window.rootViewController = nav
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}









