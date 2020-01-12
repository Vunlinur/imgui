project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    systemversion "latest"
	staticruntime "on"

	targetdir ("bin/" .. configDir .. "/%{prj.name}")
	objdir ("bin-intermediate/" .. configDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "configurations:Debug"
		symbols "on"
		runtime "Debug"

	filter "configurations:Release"
		symbols "on"
		optimize "on"
		runtime "Release"
