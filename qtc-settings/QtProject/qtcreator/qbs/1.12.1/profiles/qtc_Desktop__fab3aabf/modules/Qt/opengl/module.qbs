import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenGL"
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
    libNameForLinkerDebug: "Qt5OpenGL"
    libNameForLinkerRelease: "Qt5OpenGL"
    libFilePathDebug: ""
    libFilePathRelease: "/home/rogozins/dev/Qt/5.11.1/gcc_64/lib/libQt5OpenGL.so.5.11.1"
    cpp.defines: ["QT_OPENGL_LIB"]
    cpp.includePaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/include", "/home/rogozins/dev/Qt/5.11.1/gcc_64/include/QtOpenGL"]
    cpp.libraryPaths: ["/home/rogozins/dev/Qt/5.11.1/gcc_64/lib"]
    Group {
        files: [Qt["opengl"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
