project "IMGUI"
    kind "StaticLib"
    language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    -- Some headers are included directly since they are placed in the root folder of ImGui
	files
	{
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_widgets.cpp",
		"imgui_demo.cpp",
        "misc/cpp/imgui_stdlib.cpp"
	}

    includedirs
    {
        "../imgui"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
