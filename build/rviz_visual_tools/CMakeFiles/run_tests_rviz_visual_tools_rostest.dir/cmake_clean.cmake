file(REMOVE_RECURSE
  "rviz_visual_tools_imarker_simple_automoc.cpp"
  "rvt_test_automoc.cpp"
  "rviz_visual_tools_gui_automoc.cpp"
  "imarker_simple_demo_automoc.cpp"
  "rviz_visual_tools_remote_control_automoc.cpp"
  "rviz_visual_tools_automoc.cpp"
  "rviz_visual_tools_demo_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/run_tests_rviz_visual_tools_rostest.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
