# envoy-segfault-repro

Reproduction of the Envoy segfault observed in combination with file based ECDS.

Run the `repro.sh` script which will start Envoy, run some requests and swap `ecds.yaml` to trigger the segfault.
