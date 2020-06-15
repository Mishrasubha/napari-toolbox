
//Check if python is installed

function [pythonExternInstall, pythonPath] = checkPython()
    pythonExternInstall = %f;

    // get Python version
    // use a trick as unix_g("python -V") does not return anything (bug)
    [pythonVersion, err, errMsg] = unix_g("python -c ""exec(\""import platform\nprint(platform.python_version())\"")""");

    if ~err & ~isempty(pythonVersion) & ~isempty(strstr(pythonVersion, "3.8")) then
        [pythonPath, err, errMsg] = unix_g("which python");
        if ~err then
            [numPyPath, err, errMsg] = unix_g("python -c ""exec(\""import numpy\nprint(numpy.get_include())\"")""");
            pythonExternInstall = ~err;
        end
    end

    if ~pythonExternInstall then
        pythonPath = fullfile(napariPath(), "thirdparty", getos());
    end
endfunction
