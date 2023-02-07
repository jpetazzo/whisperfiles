# Whisperfiles

This repository contains a bunch of Dockerfiles showing how to build
container images for [OpenAI Whisper][whisper], with or without GPU
libraries, and using various image optimization techniques.

I've gathered these Dockerfiles here to illustrate a presentation
delivered February 8th, 2023 at the [Kubernetes & Cloud Native Berlin Meetup][meetup]
(the slides are available [here][slides]).

Purely for educational purposes, but feel free to copy any or all of
these Dockerfiles if they're useful to you!

[meetup]: https://www.meetup.com/berlin-kubernetes-meetup/events/291177583/
[slides]: https://docs.google.com/presentation/d/1wQK0kXQ5Maz7EQYGjZIJ8pBfDVoQ77B1_EWGn_NTbpc
[whisper]: https://github.com/openai/whisper

## Results

<!--
{
echo '| Tag | Size |'
echo '|-----|------|'
docker images whisper --format '| {{ .Tag }} | {{ .Size }} |'
} >> README.md
-->

| Tag | Size |
|-----|------|
| multistage-site-packages.torchpip.ffmpegstatic.cpu | 1.1GB |
| multistage-site-packages.torchpip.ffmpegstatic.cu117 | 3.68GB |
| multistage-venv.torchpip.ffmpegstatic.cpu | 1.1GB |
| multistage-venv.torchpip.ffmpegstatic.cu117 | 3.69GB |
| python | 6.61GB |
| python.bk | 4.79GB |
| python.torchpip.cpu | 2.42GB |
| python.torchpip.cu117 | 6.61GB |
| slim.bk | 4.1GB |
| slim.torchpip.bk.cpu | 1.49GB |
| slim.torchpip.bk.cu117 | 4.07GB |
| slim.torchpip.cpu | 1.8GB |
| slim.torchpip.cu117 | 5.99GB |
| slim.torchpip.ffmpegnix.cpu | 1.93GB |
| slim.torchpip.ffmpegnix.cu117 | 6.12GB |
| slim.torchpip.ffmpegstatic.cpu | 1.41GB |
| slim.torchpip.ffmpegstatic.cu117 | 5.6GB |
