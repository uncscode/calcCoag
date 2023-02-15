# Hard-sphere approximation

The dimensionless coagulation kernel, $H$, as a function of [the diffusive Knudsen number, $\mathrm{Kn}_{\mathrm{D}}$](diffusiveKnudsen), is given by the equations below.

$$
H = \frac{
        4 \pi \mathrm{Kn}_{\mathrm{D}}^{2} +
        C_{1} \mathrm{Kn}_{\mathrm{D}}^{3} +
        \left(8 \pi \right)^{1/2} C_{2} \mathrm{Kn}_{\mathrm{D}}^{4}
    }{
        1 +
        C_{3} \mathrm{Kn}_{\mathrm{D}} +
        C_{4} \mathrm{Kn}_{\mathrm{D}}^{2} +
        C_{2} \mathrm{Kn}_{\mathrm{D}}^{3}
    }
$$

- $C_{1} = 25.836$
- $C_{2} = 11.211$
- $C_{3} = 3.502$
- $C_{4} = 7.211$

Reference: Equation 5 in https://doi.org/10.1103/PhysRevE.85.026410
