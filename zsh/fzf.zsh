docker-start() {
  local container
  container="$(docker ps -a -f status=exited | sed -e '1d' | fzf --height 40% --reverse | awk '{print $1}')"
  if [ -n "${container}" ]; then
    echo 'starting container...'
    docker start ${container}
  fi
}

docker-stop() {
  local container
  container="$(docker ps -a -f status=running | sed -e '1d' | fzf --height 40% --reverse | awk '{print $1}')"
  if [ -n "${container}" ]; then
    echo 'stopping container...'
    docker stop ${container}
  fi
}

docker-exec-bash() {
  local container
  container="$(docker ps -a -f status=running | sed -e '1d' | fzf --height 40% --reverse | awk '{print $1}')"
  if [ -n "${container}" ]; then
    docker exec -it ${container} /bin/bash
  fi
}

docker-rm() {
  local container
  container="$(docker ps -a -f status=exited | sed -e '1d' | fzf --height 40% --reverse | awk '{print $1}')"
  if [ -n "${container}" ]; then
    echo 'removing container...'
    docker rm ${container}
  fi
}

docker-rmi() {
  local image
  image="$(docker images -a | sed -e '1d' | fzf --height 40% --reverse | awk '{print $3}')"
  if [ -n "${image}" ]; then
    echo 'removing container image...'
    docker rmi ${image}
  fi
}

# fbr - checkout git branch
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# frm - remove git branch
frm() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git branch -D $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# iTerm2 badge
badge() {
    printf "\e]1337;SetBadgeFormat=%s\a"\
    $(echo -n "$1" | base64)
}

# ssh with set badge
ssh_local() {
    local ssh_config=~/.ssh/config
    local server=$(cat $ssh_config | grep "Host " | sed "s/Host //g" | fzf)
    if [ -z "$server" ]; then
        return
    fi
    badge $server
    ssh $server
}