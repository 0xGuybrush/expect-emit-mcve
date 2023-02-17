// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "openzeppelin-contracts/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract MyToken is ERC721PresetMinterPauserAutoId {
    constructor() ERC721PresetMinterPauserAutoId("My Token", "TKN", "metadata.mytoken.gg") {}

}
