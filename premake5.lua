project "Box2D"
    kind "StaticLib"
	language "c++"
	cppdialect "c++17"
	staticruntime "on"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/box2d/**.h"
	}

    includedirs
    {
        "include",
        "src"
    }
	
	filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        defines "DEBUG"

    filter "configurations:Release"
        runtime "Release"
		optimize "on"
		defines "NDEBUG"