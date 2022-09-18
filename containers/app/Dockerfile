FROM ruby:3.1.2

# rubyの公式イメージがgemはglobalにインストールが正義って考えらしいが
# bundle系のコマンドに不具合が出るので、そこで設定しているENVを調整し直す
ENV GEM_HOME /var/www/app/vendor/bundle
ENV BUNDLE_PATH="$GEM_HOME" \
	BUNDLE_SILENCE_ROOT_WARNING=1 \
	BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $GEM_HOME/bin:$BUNDLE_PATH/gems/bin:$PATH
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"

ENV LANG C.UTF-8
ENV WORKSPACE=/var/www/app/

RUN apt update && \
    apt install -y vim less && \
    apt list installed && \
    apt clean

WORKDIR $WORKSPACE
