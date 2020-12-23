workspace "x"
   configurations { "Debug", "Release" }
   language "C++"
   platforms "x64"
   architecture "x86_64"

    project "x"
        kind "ConsoleApp"

        targetdir "dist/bin/%{cfg.buildcfg}"
        location "build/"

        if os.istarget( "windows" ) then
		    defines { "GTEST_HAS_TR1_TUPLE=0" }
    	end
	if os.istarget( "linux" ) then
		links { "X11", "Xi", "Xxf86vm", "Xrandr", "pthread" }
	end

        sysincludedirs { "./contrib/src" }
        sysincludedirs { "./contrib/src/gtest-1.6.0/" }
        libdirs { "./contrib/lib/" }

        includedirs { "src/" }
        files { "src/**.h", "src/**.cpp" }
        files { "./contrib/src/gtest-1.6.0/*.cc" }
        filter {"platforms:x64", "configurations:Debug"}
            targetsuffix "64D"
            defines { "DEBUG" }
            symbols "On"

        filter {"platforms:x64", "configurations:Release"}
            targetsuffix "64"
            defines { "NDEBUG" }
            optimize "On"
