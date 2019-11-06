# Autogenerated wrapper script for PATHlib_jll for x86_64-w64-mingw32-libgfortran4
export libpath47julia

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libpath47julia`
const libpath47julia_splitpath = ["bin", "libpath47julia.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpath47julia_path = ""

# libpath47julia-specific global declaration
# This will be filled out by __init__()
libpath47julia_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpath47julia = "libpath47julia.dll"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libpath47julia_path = abspath(joinpath(artifact"PATHlib", libpath47julia_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpath47julia_handle = dlopen(libpath47julia_path)
    push!(LIBPATH_list, dirname(libpath47julia_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

if ccall(:jl_generating_output, Cint, ()) == 1


end
