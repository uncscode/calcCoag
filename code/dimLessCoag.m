function kernel = dimLessCoag(diffusive_knudsen, columbic_potential_ratio, approx)
    % Purpose: calculate the coagulation kernel
    % Inputs:
    %   diffusive_knudsen: diffusive knudsen number
    %   columbic_potential_ratio: columbic potential ratio
    %   approx: approximation to use (hardsphere, etc.)
    % Outputs:
    %   kernel: coagulation kernel

    cpr_mod = (1e-16) .* (columbic_potential_ratio == 0);
    cpr = cpr_mod + columbic_potential_ratio;

    cekl = 1 + cpr;
    cecl = 1 .* (cpr == 0) + (cpr ./ (1 - exp(-cpr))) .* (cpr ~= 0);

    coag_cont_lim = 4 .* pi() .* diffusive_knudsen.^2;
    coag_hs = hardsphereApprox(coag_cont_lim, diffusive_knudsen);


    kernel = coag_hs;
end