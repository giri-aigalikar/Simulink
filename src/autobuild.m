setenv('MSYS_ROOT' , 'MSYS-2020')
addpath(genpath('../src_cm4sl'));
open_system('BrakeJenkins');
set_param('BrakeJenkins','LaunchReport','off');
cd ("../src")
try
	rtwbuild('BrakeJenkins');
    fprintf("Build Sucess!1")
catch
	warning('Error while building Model1');
	exit(1);
end
save_system('BrakeJenkins');
close_system('BrakeJenkins');
