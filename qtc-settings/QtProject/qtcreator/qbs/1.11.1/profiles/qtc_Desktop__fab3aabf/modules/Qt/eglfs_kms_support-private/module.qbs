import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglFsKmsSupport"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EglFSDeviceIntegration.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5ServiceSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5ThemeSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5FontDatabaseSupport.a", "fontconfig", "freetype", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5FbSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EglSupport.a", "Xext", "X11", "m", "EGL", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5InputSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5PlatformCompositorSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5KmsSupport.a", "GL", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Gui.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5DeviceDiscoverySupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EdidSupport.a", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5DBus.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Core.so.5.11.1", "pthread", "drm", "dl"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglFsKmsSupport"
    libNameForLinkerRelease: "Qt5EglFsKmsSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5EglFsKmsSupport.so.5.11.1"
    cpp.defines: ["QT_EGLFS_KMS_SUPPORT_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    
}
