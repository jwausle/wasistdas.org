# !/bin/sh
# $ sh build.sh --skip-blockchain --skip-bitcoin --skip-ethereum 
# $ sh build.sh --skip-iota --skip-docker --skip-jwausle --push
# $ sh build.sh --push

WITH_PUSH="false"
ARGS="$*"

if [[ $* = *"--push"* ]]; then
  WITH_PUSH="true"
fi

function buildDomain() {
   DIR=$1
   if [[ "${ARGS}" = *"--skip-${DIR}"* ]]; then
      echo ">>>>> skip building of ${DIR}"
      return 0
   fi

   cd ${DIR}
   echo ">>>>> npm build ${DIR}"
   npm run build
   echo ">>>>> docker build ${DIR}"
   docker build -t jwausle/${DIR}.wasistdas.org
   if [ "${WITH_PUSH}" = "true" ]; then
      echo ">>>>> docker push ${DIR}"
      docker push jwausle/${DIR}.wasistdas.org
   fi
   cd ..
}

buildDomain "blockchain"
buildDomain "bitcoin"
buildDomain "ethereum"
buildDomain "iota"
buildDomain "jwausle"
buildDomain "docker"
