// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyToken} from "../src/MyToken.sol";

contract TokenScript is Script {
    MyToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new MyToken("MyToken", "MTK", 18);
        //token.mint(0xA2c60305B39e0f0a93560dB3e4D359349ddC2298, 1000000000000000000000000);

        vm.stopBroadcast();
    }
}
