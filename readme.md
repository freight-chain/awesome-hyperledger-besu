# Awesome Hyperledger Besu & Java Blockchain  [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list focused on Hyperledger Besu and Java Blockchain

<img src="/hyperledger-besu.png" class="center" alt="Hyperledger Besu"
	title="Hyperledger Besu Logo" width="275" height="170" />

  * [Topics](#topics)
    + [Developing](#developing)
  * [Java](#java)
  * [Besu List](#besu-list)
  * [Contents](#contents)
  * [Hyperledger Besu](#Hyperledger-besu)
    + [Overview](#overview)
    + [Learning & Best Practices](#learning---best-practices)
    + [Network Admin & Genesis](#network-admin---genesis)
    + [Extending & Plugins](#extending---plugins)
    + [Guides](#guides)
      - [EVM Tools](#evm-tools)
  * [Maven](#maven)
  * [Contribute <a name="contribute"></a>](#contribute--a-name--contribute----a-)
  * [License](#license)


## Topics

- Hyperledger Besu
- Java & Web3/Ethereum
- Enterprise Blockchain

### Developing
- [Developing]
    - [Hyperledger Besu Developing Documentation]
    - [Sample Truffle Box]
    - [Solidity Versiom Managment 'svm'](https://github.com/web3j/svm)
    	[Mac OS X](https://github.com/web3j/solidity-darwin-binaries)
    - [Web3j]
    - [Example Deployments]
    
- [0x solc compiler](https://sol-compiler.com/)
> Seamlessly compile an entire solidity project and generate customisable artifacts
`npm install @0x/sol-compiler --g`

- [Sourcify](https://github.com/ethereum/sourcify)
> Solidity re-compiler that can be used to verify that bytecode corresponds to certain source code


## Java 

- [Web3j OpenAPI](https://github.com/web3j/web3j-openapi)

## Besu List

- [Besu Hidden Command Line Options](https://github.com/freight-chain/awesome-hyperledger-besu/blob/master/besu-cli.md)
- [Besu Ethers.js](https://github.com/PegaSysEng/hyperledger-besu-ethers)  
- [Web3js EEA](https://github.com/PegaSysEng/web3js-eea)  
- [Truffle box](https://github.com/illuzzig/besu-box)  
- [Besu RocksDB Migration](https://github.com/PegaSysEng/besu-db-migration-test)  
- [Besu Terraform](https://github.com/PegaSysEng/besu-terraform)  
- [Besu AWS](https://github.com/PegaSysEng/besu-aws)  
- [Besu Kubernetes](https://github.com/PegaSysEng/besu-kubernetes)
- [Docker Container RSS Feed](https://docker-hub-rss.now.sh/hyperledger/besu.atom)

### The "Other" Hyperledger Besu 'List'

[Awesome Besu](https://github.com/41north/awesome-besu)



## Contents

- [Besu](#section)
    - [Overview]
    - [Learning]
    - [Developing]
    	[EthSigner] - Standalone Transaction Signer [download](https://bintray.com/consensys/pegasys-repo/ethsigner)
    - [Guides]
    - [Edge Cases]
- [Java & Web3](#)
    - [Resources]
    - [Kotlin]
    - [Optimization]
    	- Other JDK/JVMs
		[Zulu JDK](https://github.com/zulu-openjdk/zulu-openjdk/tree/master/11.0.7-11.39.15)
		
## Hyperledger Besu

[Hyperledger Besu Documentation](https://besu.hyperledger.org/en/stable/)

[Hyperledger Besu Wiki](https://wiki.hyperledger.org/display/BESU/Hyperledger+Besu)


### Overview 
- [Overview]
    - [Hyperledger Besu @ Official Bintray](https://bintray.com/hyperledger-org/besu-repo/besu)
    - [Docker Containers]
        [Official Docker](https://hub.docker.com/hyperledger/besu)

### Learning & Best Practices 
- [Learning]
    - [Pegasys Sample Network](https://github.com/PegaSysEng/besu-sample-networks)
    - [Laachain]
    - [Freight Trust Network](https://github.com/freight-trust/besu-settings)
    - [Whiteblock](https://github.com/whiteblock)
- [Articles]
    - [Keccak](https://whiteblock.io/besu-keccak256/)
    - [Besu CLI]
    	- Hidden Command Line Options

### Network Admin & Genesis 
    - [Clique Genesis CLI Scripts](https://github.com/ppoliani/besu-clique-config)
    - [IBFT2 Genesis CLI Scripts](https://github.com/abdelhamidbakhta/besu-ls-support)
    
    - Genesis Config File
    	- Explainer
	- Forking
		- Relevent EIPs
		- How-to

### Extending & Plugins

- [Extending]
    - [Exflo](https://github.com/41north)
    - [Epirus Block Explorer](https://github.com/web3j)

- Hardware 
    - [blocksec2go - SmartCard Plugin](https://github.com/freight-trust/blocksec2go-ethereum/tree/feature/secops)


### Guides
- [Guides]
    - [JVM Optimizations]
    - [Replication and Safety]
    - [Real Time Optimizations]
    - [Docker Containers]

#### EVM Tools

- [Ethwaffle](https://github.com/EthWorks/Waffle)

## Maven 

[https://mvnrepository.com/artifact/org.web3j/besu](https://mvnrepository.com/artifact/org.web3j/besu)

## Besu ENV Variables (Everything)

```bash
# Besu Cheatsheet for Enviornment Variables
# SPDX-License-Identifier: MIT
# SPDXVersion: SPDX-2.2
# SPDX-FileCopyrightText: Copyright 2020 FreightTrust and Clearing Corporation
# This Source Code Form is subject to the terms of the MIT License
# If a copy of the MPL was not distributed with this
# file, You can obtain one at hhttps://spdx.org/licenses/MIT.html
# v1.1.5 - 2020-09-25

#> The Numbers Represent a "configuration code/error code trace" - completely hypothetical and not actually implemented, just handy to have a numbered setting to reference across different configuration regimes (e.g. config.toml vs .env)

#== Besu Enviornment Variables
# To use a specific version of Hyperledger Besu, set the BESU_VERSION environment variable.

#==== JAVA OPTIONS ====#
# --Xp2p-check-maintained-connections-frequency, 60, 
# --Xp2p-initiate-connections-frequency, 5,
# --Xsecp256k1-native-enabled=false, 
# --Xaltbn128-native-enabled=false,
# --key-value-storage, rocksdb,
# --auto-log-bloom-caching-enabled

# The temporary directory used by the JVM must allow execution of code. 
# Specifically, the mount must not have the noexec flag set. 
# The default /tmp directory is mounted with this flag in some installations. 
# You can workaround this by overriding the temporary directory by adding -Djava.io.tmpdir=/path/to/other/tmpdir to the list of JVM options.
# ENV_BESU="-XX:+UseSerialGC","--enable-preview","-Xshare:on","-cp","-XX:+UseCompressedOops","-Dsun.io.useCanonPrefixCache=false","-XX:+UseConcMarkSweepGC","-Xmx2048m","-Xms128m","-XX:ReservedCodeCacheSize=240m","-XX:-OmitStackTraceInFastThrow","-XX:CICompilerCount=2","-XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof","-XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log"

# "--Xp2p-check-maintained-connections-frequency", "60", "--Xp2p-initiate-connections-frequency", "5", "--Xsecp256k1-native-enabled=false", "--Xaltbn128-native-enabled=false", "--auto-log-bloom-caching-enabled"

# ENV_BESU="-XX:+UseSerialGC","--enable-preview","-Xshare:on","-cp"


#==== Passing-JVM-Options   ====#
Besu passes the contents of the BESU_OPTS environmental variable to the JVM. Set standard JVM
options in the BESU_OPTS variable.
BESU_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address= \


#=== IMPORTANT ====#
BLOCKS_PER_BLOOM_CACHE

export BESU_OPTS="--add-opens java.base/sun.security.provider=ALL-UNNAMED"
set BESU_OPTS="--add-opens java.base/sun.security.provider=ALL-UNNAMED"
BLOCKS_PER_BLOOM_CACHE
BESU_AUTO_LOG_BLOOM_CACHING_ENABLED=false
BESU_BANNED_NODEIDS=
BESU_DATA_PATH=/home/me/me_node

# ROCKS DB CONFIGURATION 
BESU_KEY_VALUE_STORAGE=rocksdb
BESU_LOGGING=DEBUG



#=====   Main Besu Enviornment Variables   ======#
BESU_BOOTNODES=
BESU_CONFIG_FILE=/home/me/me_node/config.toml

BESU_DISCOVERY_ENABLED=false
BESU_FAST_SYNC_MIN_PEERS=
BESU_GENESIS_FILE=/home/me/me_node/customGenesisFile.json
BESU_GRAPHQL_HTTP_CORS_ORIGINS="http://localhost","https://0.0.0.0/0"
BESU_GRAPHQL_HTTP_ENABLED=true
BESU_GRAPHQL_HTTP_HOST=
BESU_GRAPHQL_HTTP_PORT=
BESU_HOST_ALLOWLIST="http://localhost","https://0.0.0.0/0"
BESU_IDENTITY=MyNode
BESU_KEY_VALUE_STORAGE=rocksdb
BESU_LOGGING=DEBUG
BESU_MAX_PEERS=

#=== METRICS ===#
BESU_METRICS_CATEGORY=BLOCKCHAIN,PEERS,PROCESS
BESU_METRICS_ENABLED=true
BESU_METRICS_HOST=...
BESU_METRICS_PORT=
BESU_METRICS_PUSH_ENABLED=true
BESU_METRICS_PUSH_HOST=...
BESU_METRICS_PUSH_INTERVAL=
BESU_METRICS_PUSH_PORT=
BESU_METRICS_PROMETHEUS_JOB="my-custom-job"

#--- MINER ----#
BESU_MINER_COINBASE=febefbbfbbecebdbd
BESU_MINER_ENABLED=true
BESU_MINER_EXTRA_DATA=oxoooFoEoEFCCFCCFC
BESU_MINER_STRATUM_ENABLED=true
BESU_MINER_STRATUM_HOST=...
BESU_MINER_STRATUM_PORT=


BESU_MIN_GAS_PRICE=
BESU_NETWORK=rinkeby
BESU_NETWORK_ID=
BESU_NODE_PRIVATE_KEY_FILE=/home/me/me_node/myPrivateKey


#-- PERMISSIONING --#
BESU_PP_ENABLED=false
BESU_PP_HOST=...
BESU_PP_INTERFACE=...
BESU_PP_PORT=
BESU_PERMISSIONS_ACCOUNTS_CONFIG_FILE=/home/me/me_configFiles/myPermissionsFile
BESU_PERMISSIONS_ACCOUNTS_CONFIG_FILE_ENABLED=true
BESU_PERMISSIONS_ACCOUNTS_CONTRACT_ADDRESS=xyz
BESU_PERMISSIONS_ACCOUNTS_CONTRACT_ENABLED=true
BESU_PERMISSIONS_NODES_CONFIG_FILE=/home/me/me_configFiles/myPermissionsFile
BESU_PERMISSIONS_NODES_CONFIG_FILE_ENABLED=true
BESU_PERMISSIONS_NODES_CONTRACT_ADDRESS=xyz
BESU_PERMISSIONS_NODES_CONTRACT_ENABLED=true
BESU_PRIVACY_ENABLED=false
BESU_PRIVACY_MARKER_TRANSACTION_SIGNING_KEY_FILE=/home/me/me_node/myPrivateKey
BESU_PRIVACY_MULTI_TENANCY_ENABLED=false
BESU_PRIVACY_ONCHAIN_GROUPS_ENABLED=true
BESU_PRIVACY_PUBLIC_KEY_FILE=Orion/nodeKey.pub
BESU_PRIVACY_TLS_ENABLED=false
BESU_PRIVACY_TLS_KEYSTORE_FILE=/home/me/me_node/key
BESU_PRIVACY_TLS_KEYSTORE_PASSWORD_FILE=/home/me/me_node/password
BESU_PRIVACY_TLS_KNOWN_ENCLAVE_FILE=/home/me/me_node/knownEnclave
BESU_PRIVACY_URL=http://...:


#--- STATE TRIE ---#
BESU_PRUNING_BLOCK_CONFIRMATIONS=
BESU_PRUNING_BLOCKS_RETAINED=
BESU_PRUNING_ENABLED=true

#--- RPC / IPC --#
BESU_REMOTE_CONNECTIONS_LIMIT_ENABLED=false
BESU_REMOTE_CONNECTIONS_MAX_PERCENTAGE=
BESU_REQUIRED_BLOCK==xfcdebfcdcdacbeefbdaaafddba
BESU_REVERT_REASON_ENABLED=true
BESU_RPC_HTTP_API=ETH,NET,WEB
BESU_RPC_HTTP_AUTHENTICATION_CREDENTIALS_FILE=/home/me/me_node/auth.toml
BESU_RPC_HTTP_AUTHENTICATION_ENABLED=true
BESU_RPC_HTTP_AUTHENTICATION-JWT-PUBLIC-KEY-FILE="publicKey.pem"
BESU_RPC_HTTP_CORS_ORIGINS="http://medomain.com","https://meotherdomain.com"
BESU_RPC_HTTP_ENABLED=true
BESU_RPC_HTTP_HOST=...
BESU_RPC_HTTP_PORT=
BESU_RPC_HTTP_TLS_CA_CLIENTS_ENABLED=true
BESU_RPC_HTTP_TLS_CLIENT_AUTH_ENABLED=true
BESU_RPC_HTTP_TLS_ENABLED=true
BESU_RPC_HTTP_TLS_KEYSTORE_FILE=/home/me/me_node/keystore.pfx
BESU_RPC_HTTP_TLS_KEYSTORE_PASSWORD_FILE=/home/me/me_node/password
BESU_RPC_HTTP_TLS_KNOWN_CLIENTS_FILE=/home/me/me_node/knownClients
BESU_RPC_TX_FEE=
BESU_RPC_WS_API=ETH,NET,WEB
BESU_RPC_WS_AUTHENTICATION_CREDENTIALS_FILE=/home/me/me_node/auth.toml
BESU_RPC_WS_AUTHENTICATION_ENABLED=true
BESU_RPC_HTTP_AUTHENTICATION-JWT-PUBLIC-KEY-FILE="publicKey.pem"
BESU_RPC_WS_ENABLED=true
BESU_RPC_WS_HOST=...
BESU_RPC_WS_PORT=
BESU_SECURITY_MODULE=security_module
BESU_SYNC_MODE=FAST
BESU_TARGET_GAS_LIMIT=
BESU_TX_POOL_MAX_SIZE=
BESU_TX_POOL_HASHES_MAX_SIZE=
BESU_TX_POOL_PRICE_BUMP=
BESU_TX_POOL_RETENTION_HOURS=

#=== Nat-Manager-Kubernetes ===#
BESU_LOGGING="INFO"
BESU_NETWORK="dev"
BESU_PP_ENABLED="true"
BESU_RPC_HTTP_ENABLED="true"
BESU_RPC_HTTP_APIS="eth,net,web,debug,admin"

#===Getting-Started-Onchain-Permissioning
# BESU_NODE_PERM_ACCOUNT - account to deploy the permissioning contracts and become the first
# BESU_NODE_PERM_KEY - private key of the account to deploy the permissioning contracts.
# BESU_NODE_PERM_ENDPOINT - required only if your node is not using the default JSON-RPC host and
# BESU_NODE_PERM_ACCOUNT=
# BESU_NODE_PERM_KEY=
# BESU_NODE_PERM_ENDPOINT.
#The Dapp displays with the account specified by the BESU_NODE_PERM_ACCOUNT environment

```

## Contribute <a name="contribute"></a>

Contributions welcome! Read the [contribution guidelines](contributing.md) first.

## License

[![CC0](https://mirrors.creativecommons.org/presskit/buttons/88x31/svg/cc-zero.svg)](https://creativecommons.org/publicdomain/zero/1.0)

To the extent possible under law, sam bacha has waived all copyright and
related or neighboring rights to this work.
We make no claim on any copyrights and rights are reserved to their respective owners.
