project "EventBus"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir "%{wks.location}/bin/%{prj.name}/%{cfg.buildcfg}"
    objdir "%{wks.location}/obj/%{prj.name}/%{cfg.buildcfg}"

    files {
        "lib/src/dexode/**.cpp",
        "lib/src/dexode/**.hpp"
    }

	includedirs {
        "lib/src",
        "lib/src/dexode"
	}

    filter "system:windows"
        systemversion "latest"
        defines {
			"_CRT_SECURE_NO_WARNINGS"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "on"

