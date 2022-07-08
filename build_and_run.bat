@echo off

zig build-exe hello_ecs.zig

echo.
echo Finished Build...Running:
echo.

hello_ecs.exe