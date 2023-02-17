// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken public myToken;
    address public minter;
    address public constant NULL = address(0);

    event Transfer(address from, address to, uint tokenId);

    function setUp() public {
        myToken = new MyToken();
	minter = address(1234);
	vm.label(minter, "Minter");
    }

    function testMint() public {
        // Arrange
        uint expected = 0;

	// Assert
        vm.expectEmit(true, true, true, true, address(myToken));
	emit Transfer(NULL, minter, expected);

	// Act
	myToken.mint(minter);
    }

}
