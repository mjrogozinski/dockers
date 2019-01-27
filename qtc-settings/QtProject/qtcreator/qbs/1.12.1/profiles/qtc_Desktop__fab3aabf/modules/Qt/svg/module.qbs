import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Svg"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

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
    libNameForLinkerDebug: "Qt5Svg"
    libNameForLinkerRelease: "Qt5Svg"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Svg.so.5.11.1"
    cpp.defines: ["QT_SVG_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtSvg"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    Group {
        files: [Qt["svg"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
