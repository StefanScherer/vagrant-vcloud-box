@set result=0

set boxname=%1

@if "%boxname%x"=="x" (
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

@echo Take a screenshot
set /p vmx=< .vagrant\machines\default\vmware_workstation\id
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" -gu vagrant -gp vagrant captureScreen %vmx% screenshot.png

vagrant halt

set ova=%boxname%.ova
del /F "%ova%"
@echo Create OVA from VMX
ovftool "%vmx%" "%ova%"
if ERRORLEVEL 1 set result=%ERRORLEVEL%

rem vagrant destroy -f

rem remove the local box
vagrant box remove box-cutter/ubuntu1404-desktop --provider=vmware_desktop

:done
exit %result%
