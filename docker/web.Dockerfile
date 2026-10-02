테스트용 Dockerfile
QEMU arm64 빌드에서도 빨리 끝나게, 패키지 설치 없이 가장 단순하게 만들었습니다.

docker/web.Dockerfile


FROM nginx:1.27-alpine
RUN echo "ddak web test" > /usr/share/nginx/html/index.html
docker/was.Dockerfile


FROM python:3.12-alpine
WORKDIR /app
RUN echo "ddak was test" > index.html
CMD ["python", "-m", "http.server", "8000"]
