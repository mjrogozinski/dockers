import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Xml"
    Depends { name: "Qt"; submodules: ["core"]}

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
    libNameForLinkerDebug: "Qt5Xml"
    libNameForLinkerRelease: "Qt5Xml"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Xml.so.5.11.1"
    cpp.defines: ["QT_XML_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtXml"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    Group {
        files: [Qt["xml"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
