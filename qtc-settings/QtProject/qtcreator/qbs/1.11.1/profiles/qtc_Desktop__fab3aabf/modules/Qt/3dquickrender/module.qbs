import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickRender"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3drender", "3dquick"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt53DRender.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt53DQuick.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt53DCore.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Quick.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Gui.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Qml.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Network.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Concurrent.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Core.so.5.11.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DQuickRender"
    libNameForLinkerRelease: "Qt53DQuickRender"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt53DQuickRender.so.5.11.1"
    cpp.defines: ["QT_3DQUICKRENDER_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/Qt3DQuickRender"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    
}
