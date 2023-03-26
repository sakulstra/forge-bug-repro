// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from 'forge-std/Script.sol';
import {Pool} from 'aave-v3-core/contracts/protocol/pool/Pool.sol';
import {IPoolAddressesProvider} from 'aave-v3-core/contracts/interfaces/IPoolAddressesProvider.sol';


contract Deploy is Script {
  function run() external {
    vm.startBroadcast();
    new Pool(IPoolAddressesProvider(address(42)));
    vm.stopBroadcast();
  }
}
