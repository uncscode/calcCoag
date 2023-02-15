function hs = hardsphereApprox(coag_cont_lim, diffusive_knudsen)
    % Purpose: calculates the hard sphere coag approximation
    % Inputs:
    %   coag_cont_lim: the coagulation continuum limit
    %   diffusive_knudsen: the diffusive knudsen number
    % Outputs:
    %   hs: the hardsphere coagulation approximation

    hsa_consts = [25.836 11.211 3.502 7.211];

    numerator = (coag_cont_lim) ...
                + (hsa_consts(1) .* diffusive_knudsen.^3) ...
                + ((8.*pi()).^(1/2) .* hsa_consts(2) .* diffusive_knudsen.^4);

    denominator = (1) ...
                + (hsa_consts(3) .* diffusive_knudsen) ...
                + (hsa_consts(4) .* diffusive_knudsen.^2) ...
                + (hsa_consts(2) .* diffusive_knudsen.^3);

    hs = numerator ./ denominator;
end
