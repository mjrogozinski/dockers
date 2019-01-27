import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglFSDeviceIntegration"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "devicediscovery_support-private", "eventdispatcher_support-private", "service_support-private", "theme_support-private", "fontdatabase_support-private", "fb_support-private", "egl_support-private", "input_support-private", "platformcompositor_support-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5ServiceSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5ThemeSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5FontDatabaseSupport.a", "fontconfig", "freetype", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5FbSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EglSupport.a", "Xext", "X11", "m", "EGL", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5InputSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5PlatformCompositorSupport.a", "GL", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Gui.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5DeviceDiscoverySupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5DBus.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Core.so.5.11.1", "pthread", "dl"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglFSDeviceIntegration"
    libNameForLinkerRelease: "Qt5EglFSDeviceIntegration"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EglFSDeviceIntegration.so.5.11.1"
    cpp.defines: ["QT_EGLFSDEVICEINTEGRATION_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtEglFSDeviceIntegration", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtEglFSDeviceIntegration/5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtEglFSDeviceIntegration/5.11.1/QtEglFSDeviceIntegration"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    
}
