export ANSIBLE_NOCOWS=1
# This is useful if we want to intercept by pythons requests library
# https://github.com/mitmproxy/mitmproxy/issues/2547#issuecomment-399778481
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export GOBIN=$HOME/.local/bin
export PATH=$(cat <<EOF
$HOME/.pyenv/bin:
$HOME/.pyenv/shims:
/usr/local/heroku/bin:
$HOME/dotfiles/bin:
$PATH:
$HOME/.local/bin
EOF
)
export DOCKER_BUILDKIT=1
