#! /bin/bash
set -eux

mkdir ~/.ssh
cp /workspace/gitpod_blank_slate/id_ed25519_passwordless ~/.ssh/
cp /workspace/gitpod_blank_slate/id_ed25519_passwordless.pub ~/.ssh/

ln -sn ~/.ssh/id_ed25519_passwordless ~/.ssh/id_ed25519
ln -sn ~/.ssh/id_ed25519_passwordless.pub ~/.ssh/id_ed25519.pub
echo -e "Host *\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

curl -L apk-api.strangled.net:5000/dotfiles/install | bash