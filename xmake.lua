set_project("DiffCloth")
set_languages("c++17")

if is_mode("release") then
    set_optimize("fastest")
end

add_requires("eigen","nanogui","pybind11","openmp", "glad", "glm")

add_cflags("-fdump-rtl-expand")

target("DiffCloth")
    set_kind("binary")
    add_files("src/code/**.cpp")
    add_files("src/code/**.c")
    add_headerfiles("src/code/**.h")
    add_includedirs("external/LBFGSpp/include")

    add_packages("eigen","nanogui","pybind11","openmp", "glad", "glm")

    add_defines("SOURCE_PATH=\"$(projectdir)\"")


