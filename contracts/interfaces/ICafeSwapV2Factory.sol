// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0;

interface ICafeSwapV2Factory {
    event PairCreated(
        address indexed token0,
        address indexed token1,
        address pair,
        uint256
    );

    function feeTo() external view returns (address);

    function feeToSetter() external view returns (address);

    function INIT_CODE_HASH() external pure returns (bytes32);

    function getPair(address tokenA, address tokenB)
        external
        view
        returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB)
        external
        returns (address pair);

    function setFeeTo(address) external;

    function setFeeToSetter(address) external;

    function setDevFee(address pair, uint8 _devFee) external;

    function setSwapFee(address pair, uint32 swapFee) external;
}
