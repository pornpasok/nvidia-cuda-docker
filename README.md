# nvidia-cuda-docker

```
# Quick Install
curl -sSL https://raw.githubusercontent.com/pornpasok/nvidia-cuda-docker/main/nvidia_cuda_centos.sh | sh
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
