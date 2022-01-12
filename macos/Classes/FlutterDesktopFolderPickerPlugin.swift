import Cocoa
import FlutterMacOS

public class FlutterDesktopFolderPickerPlugin: NSObject, FlutterPlugin {

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_desktop_folder_picker", binaryMessenger: registrar.messenger)
    let instance = FlutterDesktopFolderPickerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "openFolderDialog":
      let path = openDialog();
      result(path);
    default:
      result(FlutterMethodNotImplemented)
    }
  }


  public func openDialog() -> String? {
    let dialog = NSOpenPanel();
    dialog.title                   = "Choose a directory";
    dialog.showsResizeIndicator    = true;
    dialog.showsHiddenFiles        = false;
    dialog.canChooseFiles = false;
    dialog.canChooseDirectories = true;

    let modal = dialog.runModal();
    var path:String?
    if (modal ==  NSApplication.ModalResponse.OK) {
        let result = dialog.url
        if (result != nil) {
            path = result!.path
        }
    }
    return path
  }
}
