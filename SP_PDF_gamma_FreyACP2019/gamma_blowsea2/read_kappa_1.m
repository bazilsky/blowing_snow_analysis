


pth_SPC = '/Users/ananth/Desktop/bas_github_scripts/bas_github_scripts/SP_PDF_gamma_FreyACP2019/data_2/';
pth_kappa = '/Users/ananth/Downloads/'
spc_file = sprintf('%sU1104_8cm_1min.mat',pth_SPC);
kappa_file = sprintf('%sKappa_for_BAS.mat',pth_kappa)

%spc_arr = load(spc_file);
kappa_arr = load(kappa_file)

kappa_val_012 = kappa_arr.Akappa_geomean018_2h;
matlab_time = kappa_arr.Atime_CCN018_2h;
% 
% a1 = = datestr(DATA.t, 'mm/dd/YYYY');
% a2 = datetime(a1);

formatted_time = datetime(datestr(matlab_time,'mm/dd/YYYY'));


plot(formatted_time,kappa_val_012)