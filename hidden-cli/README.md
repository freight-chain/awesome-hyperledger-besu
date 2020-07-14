# Besu Unstable Commands 


- [Just find it through here too!](https://sourcegraph.com/search?q=repo:%5Egithub%5C.com/hyperledger/besu%24+--X&patternType=literal#16)

- [besu/src/main/java/org/hyperledger/besu/cli/UnstableOptionsSubCommand](https://github.com/hyperledger/besu/blob/release-1.5.0/besu/src/main/java/org/hyperledger/besu/cli/UnstableOptionsSubCommand.java)

- [SynchronizerOptions](https://github.com/hyperledger/besu/blob/release-1.5.0/besu/src/main/java/org/hyperledger/besu/cli/options/SynchronizerOptions.java)

"Deep" command line options in Hyperledger Besu

## 1.5 

New: `--Xnat-kube-pod-name`
## ☢️ Emergency Escape Hatch ☢️

```bash
    Option
      cli: --override-genesis-config
      paramLabel: NAME=VALUE",
      description: Overrides configuration values in the genesis file.  Use with care.",

> 💣 This is for aborting a planned hardfork, see Petersburg

  `private final Map<String, String> genesisConfigOverrides =
      new TreeMap<>(String.CASE_INSENSITIVE_ORDER);`
```


# ⚠️ Warning ⚠️
🥺 Just Don't.

## TL;DR

```bash
--XHelp
```
This command provides help text for all unstable options.



```bash
Unstable options for experimentalEIPs
      --Xberlin-enabled=<berlinEnabled>
         Enable non-finalized Berlin features (default: false)
      --Xeip1559-basefee-max-change-denominator=<basefeeMaxChangeDenominator>

      --Xeip1559-decay-range=<decayRange>

      --Xeip1559-enabled=<eip1559Enabled>
         Enable experimental EIP-1559 fee market change (default: false)
      --Xeip1559-initial-base-fee=<initialBasefee>

      --Xeip1559-per-tx-gas-limit=<perTxGasLimit>

      --Xeip1559-slack-coefficient=<slackCoefficient>

      --Xeip1559-target-gas-used=<targetGasUsed>


Unstable options for Ethereum Wire Protocol
      --Xeth-65-enabled   Enable the Eth/65 subprotocol. (default: false)
      --Xewp-max-get-bodies=<INTEGER>
                          Maximum request limit for Ethereum Wire Protocol
                            GET_BLOCK_BODIES. (default: +128)
      --Xewp-max-get-headers=<INTEGER>
                          Maximum request limit for Ethereum Wire Protocol
                            GET_BLOCK_HEADERS. (default: +192)
      --Xewp-max-get-node-data=<INTEGER>
                          Maximum request limit for Ethereum Wire Protocol
                            GET_NODE_DATA. (default: +384)
      --Xewp-max-get-pooled-transactions=<INTEGER>
                          Maximum request limit for Ethereum Wire Protocol
                            GET_POOLED_TRANSACTIONS. (default: +256)
      --Xewp-max-get-receipts=<INTEGER>
                          Maximum request limit for Ethereum Wire Protocol
                            GET_RECEIPTS. (default: +256)

Unstable options for Metrics
      --Xmetrics-timers-enabled
         Whether to enable timer metrics (default: true).

Unstable options for P2P Network
      --Xp2p-check-maintained-connections-frequency=<INTEGER>
         The frequency (in seconds) at which to check maintained connections
           (default: 60)
      --Xp2p-initiate-connections-frequency=<INTEGER>
         The frequency (in seconds) at which to initiate new outgoing
           connections (default: 30)

Unstable options for Synchronizer
      --Xsynchronizer-block-propagation-range=<LONG>..<LONG>
         Range around chain head where inbound blocks are propagated (default:
           -10..30)
      --Xsynchronizer-computation-parallelism=<INTEGER>
         Number of threads to make available for bulk hash computations during
           downloads (default: # of processors)
      --Xsynchronizer-downloader-chain-segment-size=<INTEGER>
         Distance between checkpoint headers (default: 200)
      --Xsynchronizer-downloader-change-target-threshold-by-height=<LONG>
         Minimum height difference before switching fast sync download peers
           (default: 200)
      --Xsynchronizer-downloader-change-target-threshold-by-td=<UINT256>
         Minimum total difficulty difference before switching fast sync
           download peers (default: 1000000000000000000)
      --Xsynchronizer-downloader-checkpoint-timeouts-permitted=<INTEGER>
         Number of tries to attempt to download checkpoints before stopping
           (default: 5)
      --Xsynchronizer-downloader-header-request-size=<INTEGER>
         Number of headers to request per packet (default: 200)
      --Xsynchronizer-downloader-parallelism=<INTEGER>
         Number of threads to provide to chain downloader (default: 4)
      --Xsynchronizer-fast-sync-full-validation-rate=<FLOAT>
         Fraction of headers fast sync will fully validate (default: 0.1)
      --Xsynchronizer-fast-sync-pivot-distance=<INTEGER>
         Distance from initial chain head to fast sync target (default: 50)
      --Xsynchronizer-transactions-parallelism=<INTEGER>
         Number of threads to commit to transaction processing (default: 2)
      --Xsynchronizer-world-state-hash-count-per-request=<INTEGER>
         Fast sync world state hashes queried per request (default: 384)
      --Xsynchronizer-world-state-max-requests-without-progress=<INTEGER>
         Number of world state requests accepted without progress before
           considering the download stalled (default: 1000)
      --Xsynchronizer-world-state-min-millis-before-stalling=<LONG>
         Minimum time in ms without progress before considering a world state
           download as stalled (default: 300000)
      --Xsynchronizer-world-state-request-parallelism=<INTEGER>
         Number of concurrent requests to use when downloading fast sync world
           state (default: 10)
      --Xsynchronizer-world-state-task-cache-size=<INTEGER>
         The max number of pending node data requests cached in-memory during
           fast sync world state download. (default: 1000000)

Unstable options for TransactionPool
      --Xincoming-tx-messages-keep-alive-seconds=<INTEGER>
         Keep alive of incoming transaction messages in seconds (default: 60)

Unstable options for Plugin rocksdb
      --Xplugin-rocksdb-background-thread-count=<INTEGER>
         Number of RocksDB background threads (default: 4)
      --Xplugin-rocksdb-cache-capacity=<LONG>
         Cache capacity of RocksDB (default: 8388608)
      --Xplugin-rocksdb-max-background-compactions=<INTEGER>
         Maximum number of RocksDB background compactions (default: 4)
      --Xplugin-rocksdb-max-open-files=<INTEGER>
         Max number of files RocksDB will open (default: 1024)
```

  

## ☢️ Emergency Escape Hatch ☢️

```bash
    Option
      cli: --override-genesis-config
      paramLabel: NAME=VALUE",
      description: Overrides configuration values in the genesis file.  Use with care.",

> 💣 This is for aborting a planned hardfork, see Petersburg

  `private final Map<String, String> genesisConfigOverrides =
      new TreeMap<>(String.CASE_INSENSITIVE_ORDER);`
```
## Additional Hidden Command Options 


```bash

  Command
      cli: --Xsecp256k1-native-enabled
      description: Path to PID file `optional`
  `private final Boolean nativeSecp256k1 = Boolean.TRUE;`
```

```bash
  Command
      cli: --Xaltbn128-native-enabled
      description: Path to PID file `optional`
  `private final Boolean nativeAltbn128 = Boolean.TRUE;`

```

```bash
  Command
      cli: --Xhttp-timeout-seconds
      description: HTTP timeout in seconds (default: ${DEFAULT-VALUE})",
  `private final Long httpTimeoutSec = TimeoutOptions.defaultOptions().getTimeoutSeconds();`
```
```bash
  Command
      cli: --Xws-timeout-seconds
      description: Web socket timeout in seconds (default: ${DEFAULT-VALUE})",
  `private final Long wsTimeoutSec = TimeoutOptions.defaultOptions().getTimeoutSeconds();`
```
```bash
  Command
      cli: --Xminer-stratum-extranonce
      description: Extranonce for Stratum network miners (default: ${DEFAULT-VALUE})")
  `private String stratumExtranonce: 080c";`
```

## Additional Hidden Command Options 


```bash

  Command
      cli: --Xsecp256k1-native-enabled
      description: Path to PID file `optional`
  `private final Boolean nativeSecp256k1 = Boolean.TRUE;`
```

```bash
  Command
      cli: --Xaltbn128-native-enabled
      description: Path to PID file `optional`
  `private final Boolean nativeAltbn128 = Boolean.TRUE;`

```

```bash
  Command
      cli: --Xhttp-timeout-seconds
      description: HTTP timeout in seconds (default: ${DEFAULT-VALUE})",
  `private final Long httpTimeoutSec = TimeoutOptions.defaultOptions().getTimeoutSeconds();`
```
```bash
  Command
      cli: --Xws-timeout-seconds
      description: Web socket timeout in seconds (default: ${DEFAULT-VALUE})",
  `private final Long wsTimeoutSec = TimeoutOptions.defaultOptions().getTimeoutSeconds();`
```
```bash
  Command
      cli: --Xminer-stratum-extranonce
      description: Extranonce for Stratum network miners (default: ${DEFAULT-VALUE})")
  `private String stratumExtranonce: 080c";`
```
Disable Timers [see pantheon/pull/1837](https://github.com/PegaSysEng/pantheon/pull/1837)
```bash
--Xmetrics-timers-enabled=<boolean>
```

## Rocks DB

##### CACHE_CAPACITY_FLAG
```bash
--Xplugin-rocksdb-cache-capacity
```
##### MAX_OPEN_FILES_FLAG
```bash
--Xplugin-rocksdb-max-open-files
```

### Rocks DB Optimization (values are not listed!)

- expectedMaxBackgroundCompactions = 223344

- expectedCacheCapacity = 400050006000L

- expectedMaxOpenFiles = 65

## Enviornmental Variables
##### ENV
MAX_BACKGROUND_COMPACTIONS_FLAG
MAX_OPEN_FILES_FLAG
CACHE_CAPACITY_FLAG
BACKGROUND_THREAD_COUNT_FLAG
BACKGROUND_THREAD_COUNT_FLAG = 99



#### Notes

As of Besu 1.5

Additional Options like ``--ottoman`` are P.B.  or `Pre-Besu` and have been removed.

### Notice

CC BY 0/0
