import Flutter
import UIKit
import Foundation


public class SwiftDartRsaPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "dart_rsa", binaryMessenger: registrar.messenger())
    let instance = SwiftDartRsaPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let (privateKey, publicKey) = try! CC.RSA.generateKeyPair(2048)
    //let privateKeyPEM = try SwKeyConvert.PrivateKey.derToPKCS1PEM(privateKey)
    let publicKeyPEM = SwKeyConvert.PublicKey.derToPKCS8PEM(publicKey)

    //result("iOS " + UIDevice.current.systemVersion);
    result("iOS " + Disburden().name);
  }
}
