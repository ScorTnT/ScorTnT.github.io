#!/bin/sh
# entrypoint.sh

# 볼륨 마운트로 인해 gem들이 누락된 경우 다시 설치
bundle install

# 인자로 전달된 커맨드를 실행 (즉, CMD에서 지정한 jekyll serve)
exec "$@"