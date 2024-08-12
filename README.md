### Python Hello World Nix packaging POC

<br>

Build package: *nix-build*

Build gives nix store path, but it can be got also using:

*readlink -f result*

Result being like: /nix/store/bykv6br0p96d1kc49g1hga69amkvf0fm-hello-world-1.0.0
<br>
<br>
Calling tool from nix store:
*/nix/store/bykv6br0p96d1kc49g1hga69amkvf0fm-hello-world-1.0.0/bin/hello-world*

Output: Terve Maailma
<br>
<br>

Calling from local directory: *result/bin/hello-world*

(linked to nix store: result -> /nix/store/bykv6br0p96d1kc49g1hga69amkvf0fm-hello-world-1.0.0
)

Output: Terve Maailma
<br>
<br>

*nix-shell* command opens development shell with Python3
