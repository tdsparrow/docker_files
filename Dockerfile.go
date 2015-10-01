FROM tdsparrow/dev-base

USER root

RUN apt-get update; apt-get install -y --no-install-recommends g++ curl mercurial

RUN https_proxy=http://172.17.42.1:8123 curl -r 10 https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz | tar -C /usr/local -xz

USER local

RUN echo "export GOROOT=/usr/local/go" >> /home/local/.bashrc; echo 'export PATH=$GOROOT/bin:$PATH' >> /home/local/.bashrc; echo 'export GOPATH=/home/local/gocode:/Sources/gocode' >> /home/local/.bashrc

RUN  ln -s /Sources/emacs-config/go ~/.emacs.d/local; PATH=/usr/local/go/bin:$PATH http_proxy=$proxy https_proxy=$proxy emacs --batch --eval "(progn (add-to-list 'load-path \"~/.emacs.d/el-get/el-get\") \
                                 (require 'el-get) \
                                 (setq el-get-byte-compile nil) \
				 (el-get 'sync '(go-mode go-company)))"


