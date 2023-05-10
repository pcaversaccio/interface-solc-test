// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {IERC20Extended} from "./interfaces/IERC20Extended.sol";
import {IERC20, SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

contract C {
    using SafeERC20 for IERC20;
    IERC20Extended private DAI = IERC20Extended(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    function run() external {
        approveAll(DAI, address(1));
    }

    function approveAll(IERC20 token, address to) public virtual {
        token.safeApprove(to, type(uint256).max);
    }
}
