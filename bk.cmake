SET(BK_MAGIC_ENUM_VERSION "0.8.2")

add_subdirectory(${PROJECT_SOURCE_DIR}/thirdparty/magic_enum EXCLUDE_FROM_ALL)

function(link_magic_enum target MOD)
    target_link_libraries(${target} ${MOD} magic_enum)
    target_include_directories(${target} ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/magic_enum/include)
endfunction()

