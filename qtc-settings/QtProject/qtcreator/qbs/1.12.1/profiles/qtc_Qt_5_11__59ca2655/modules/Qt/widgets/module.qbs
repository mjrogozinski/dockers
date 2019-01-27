import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Widgets"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Widgets"
    libNameForLinkerRelease: "Qt5Widgets"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Widgets.so.5.11.1"
    cpp.defines: ["QT_WIDGETS_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtWidgets"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    Group {
        files: [Qt["widgets"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
