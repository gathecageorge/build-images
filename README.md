# build-images

## `eth2-testnet-genesis`

<https://github.com/protolambda/eth2-testnet-genesis>

This is a tool to create an Eth2 testnet genesis state, without having to make deposits for all validators.

You can run this using docker as follows

`docker run --rm -ti gathecageorge/eth2-testnet-genesis:latest help`

&nbsp;

---

&nbsp;

## `nimbus-eth2`

<https://github.com/status-im/nimbus-eth2>

This is nimbus beacon/validator client using custom slot times.

You can run this using docker as follows

`docker run --rm -ti gathecageorge/nimbus-eth2:slot6 help` for 6 seconds slot time

or

`docker run --rm -ti gathecageorge/nimbus-eth2:slot1 help` for 1 seconds slot time
