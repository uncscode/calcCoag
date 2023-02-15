# Friction factor

Property of the particle's size and surrounding medium. Multiplying the friction factor by the fluid velocity yields the drag force on the particle. It is best thought of as an inverse of mobility or the ratio between thermal energy, $kT$, and the [particle diffusion coefficient, $D_{i}$](diffusionCoefficient), yielding a dependency on the radius, $a_{i}$, of the particle and the [viscosity, $\mu$, of the fluid](mediumViscosity), as well as the [Cunningham slip correction factor, $C_{\mathrm{c}}$](cunninghamCorrection).

$$
f_{i} = \frac{kT}{D_{i}} = \frac{6 \pi  \mu a_{i}}{C_{\mathrm{c}}}
$$

- In the continuum limit, $\mathrm{Kn} \to 0$ and $C_{\mathrm{c}} \to 1$ and so $f_{i} \to 6 \pi  \mu a_{i}$.

- In the kinetic limit, $\mathrm{Kn} \to \infty$ and so $f_{i} = 8.39 \left(\mu/\lambda\right) a_{i}^{2} \times 1.36$ following https://doi.org/10.1080/02786826.2012.690543, where $\lambda$ is the mean free path of the medium (e.g., air molecules).
