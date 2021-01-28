# nvidia-cuda-docker

```
# Usage:
chmod +x nvidia_cuda_centos.sh
sh nvidia_cuda_centos.sh
```

```
# Install Nvidia container runtime:
# https://nvidia.github.io/nvidia-container-runtime/

{
  "default-runtime": "nvidia",
  "runtimes": {
    "nvidia": {
      "path": "/usr/bin/nvidia-container-runtime",
      "runtimeArgs": []
    }
  }
}
```
