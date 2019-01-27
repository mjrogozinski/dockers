import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["pthread", "z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.11.1\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=11", "QT_VERSION_PATCH=1", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtCore", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtCore/5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtCore/5.11.1/QtCore", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtXml", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtXml/5.11.1", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtXml/5.11.1/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
