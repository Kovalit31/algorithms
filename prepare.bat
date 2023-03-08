cd %~dp0\python
python -m venv venv
cd %~dp0\rust\root
cargo c
rem Thats all!
cd %~dp0