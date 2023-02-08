setenv('MSYS_ROOT' , 'MSYS-2020')
addpath(genpath('C:/CarMaker_Projects/CM10/JenkinsTest/src_cm4sl'));
load_system('BrakeJenkins');
set_param('BrakeJenkins','LaunchReport','off');
try
	rtwbuild('BrakeJenkins');
catch
	warning('Error while building Model1');
% 	exit(1);
end
save_system('BrakeJenkins');
close_system('BrakeJenkins');