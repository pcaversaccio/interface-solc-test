// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import {IERC20Metadata} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol"; // using this import does compile
// import {IERC20Metadata} from "./IERC20Metadata.sol"; // using this import does not compile

interface IERC20Extended is IERC20Metadata {
    function increaseAllowance(
        address spender,
        uint256 addedAmount
    ) external returns (bool);

    function decreaseAllowance(
        address spender,
        uint256 subtractedAmount
    ) external returns (bool);

    function burn(uint256 amount) external;

    function burnFrom(address owner, uint256 amount) external;

    function mint(address owner, uint256 amount) external;
}
