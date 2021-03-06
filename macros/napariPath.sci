//
// scipython ( http://forge.scilab.org/index.php/p/pims ) - This file is part of scipython
// Copyright (C) 2017 - Scilab Enterprises
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//

function napariPath = napariPath()
    [macros, macroPath] = libraryinfo("naparilib");
    napariPath = fullpath(macroPath + '/..');
endfunction
