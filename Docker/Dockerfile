# 베이스 이미지
FROM ruby:3.2-slim

# 필수 패키지 설치
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /app

# Gemfile과 .gemspec 파일 복사
COPY Gemfile ./ 
COPY jekyll-theme-yat.gemspec ./

# 번들 설치
RUN gem install bundler && bundle install

# Jekyll 실행 (프로젝트 전체 복사 제거)
EXPOSE 4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]

