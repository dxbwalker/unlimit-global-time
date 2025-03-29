# UNLIMIT Global Office Time Viewer

A simple HTML+Docker-based visual for current local times in UNLIMIT offices worldwide.

### Features:
- Real-time clocks per office
- Timezone comparisons
- Flags and background world map
- Dockerized for easy deployment

## Run with Docker

```bash
docker build -t unlimit-time-viewer .
docker run -d -p 8284:8284 --restart always --name time-viewer unlimit-time-viewer
