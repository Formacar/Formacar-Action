// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


/// Uniswap V2 ///

interface ISwapFactoryV2
{
	function createPair(address tokenA, address tokenB) external returns (address pair);
}

interface ISwapPair // We use this for V3 pools also
{
	function factory() external view returns (address);
	function token0() external view returns (address);
	function token1() external view returns (address);
}


/// Uniswap V3 ///

interface ISwapFactoryV3
{
	function createPool(address tokenA, address tokenB, uint24 fee) external returns (address pool);
}