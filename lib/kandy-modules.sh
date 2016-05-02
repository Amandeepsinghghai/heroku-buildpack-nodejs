download_kandy_modules() {
  local build_dir=${1:-}

  cd $build_dir
  echo "Start download of kandy modules"
  rm -rf ${KANDY_MODULES_DIRECTORY} && mkdir ${KANDY_MODULES_DIRECTORY}
  echo "Made the directory for kandy-modules"
  cd ${KANDY_MODULES_DIRECTORY}
  echo "Starting git clone of kandy-redux"
  git clone https://${GITHUB_ACCESS_TOKEN}:x-oauth-basic@github.com/Fring/kandy-redux.git -b localVideoInVideoCalls
  echo "Starting git clone of Kandy.JS "
  git clone https://${GITHUB_ACCESS_TOKEN}:x-oauth-basic@github.com/Fring/Kandy.js.git -b master
}
