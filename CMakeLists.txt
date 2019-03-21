cmake_minimum_required( VERSION 3.5 )

set( PROJ_NAME pm )
project( ${PROJ_NAME} )

# cxx flags
set( CMAKE_CXX_STANDARD 11 )
if( NOT CMAKE_BUILD_TYPE )
	set(CMAKE_BUILD_TYPE Release)
endif()
# cuda
set ( CUDA_TOOLKIT_ROOT_DIR "/usr/local/cuda-10.0/" )
# opencv
set( OpenCV_DIR "/home/lyh/.software/opencv-3-cuda-10/share/OpenCV/" )
find_package( OpenCV REQUIRED ) 
include_directories( ${OpenCV_INCLUDE_DIRS} )

set( SOURCES
	main.cpp
 	pm.cpp	
)
add_executable( ${PROJ_NAME} ${SOURCES} )
target_include_directories( ${PROJ_NAME} 
	PRIVATE
		${PROJECT_SOURCE_DIR} 
)
target_link_libraries( ${PROJ_NAME} ${OpenCV_LIBS} )

