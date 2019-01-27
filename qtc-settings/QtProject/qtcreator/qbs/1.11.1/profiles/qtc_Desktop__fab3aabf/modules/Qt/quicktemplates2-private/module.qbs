import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickTemplates2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Quick.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Gui.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Qml.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Network.so.5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Core.so.5.11.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QuickTemplates2"
    libNameForLinkerRelease: "Qt5QuickTemplates2"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5QuickTemplates2.so.5.11.1"
    cpp.defines: ["QT_QUICKTEMPLATES2_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtQuickTemplates2", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtQuickTemplates2/5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtQuickTemplates2/5.11.1/QtQuickTemplates2"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    
}
