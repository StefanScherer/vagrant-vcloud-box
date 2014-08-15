set result=0

set boxname=%1

@if "%boxname:~-7%" == "_vmware" (
  set boxname=%boxname:~0,-7%
)
@if "%boxname:~-7%" == "_vcloud" (
  set boxname=%boxname:~0,-7%
)
@if "%boxname:~-11%" == "_virtualbox" (
  set boxname=%boxname:~0,-11%
)

if "%boxname%x"=="x" (
  echo "No boxname given!"
  result = 5
  goto :done
)

vagrant plugin install vagrant-serverspec

rem use a local box
vagrant box add box-cutter/ubuntu1404-desktop http://roecloudsrv001/vagrant/ubuntu1404-desktop_vmware.box --force

rem create and test the box
vagrant up --provider=vmware_workstation
if ERRORLEVEL 1 set result=%ERRORLEVEL%
vagrant halt

set /p vmx=< .vagrant\machines\default\vmware_workstation\id

set ova=%boxname%.ova
del /F "%ova%"
ovftool "%vmx%" "%ova%"
if ERRORLEVEL 1 set result=%ERRORLEVEL%

rem vagrant destroy -f

rem remove the local box
vagrant box remove box-cutter/ubuntu1404-desktop --provider=vmware_desktop

:done
exit %result%
