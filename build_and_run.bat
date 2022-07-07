@echo off

zig build-exe hello_world.zig

echo.
echo Finished Build...Running:
echo.

hello_world.exe