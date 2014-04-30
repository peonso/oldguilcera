@echo off
title Running Guilcera 3.2.3, HoTServer
echo :: If the server go down, it will restart!
echo :: =========================================
echo :: ============ Guilcera 3.2.3 =============
echo :: =========================================
echo :: ================= by Peonso =============
echo :: =========================================
:begin
HoTs.exe
echo :: === The Server Shutdown, Restarting... ===
goto begin
:goto begin
