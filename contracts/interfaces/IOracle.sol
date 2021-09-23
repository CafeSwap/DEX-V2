// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity 0.6.12;

interface IOracle {
    function consult(
        address tokenIn,
        uint256 amountIn,
        address tokenOut
    ) external view returns (uint256 amountOut);
}
