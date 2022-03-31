// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SeafluxToken is ERC20 {
    address public admin;
    constructor () ERC20('Seaflux Token','SFT'){
        _mint(msg.sender,100000000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(amount > 0, "Amount cannot be zero");
        _mint(to, amount * 10 ** 18);
    }

    function mintOwner(address to, uint256 amount) public {
        require(amount > 0, "Amount cannot be zero");
        require(admin == msg.sender, "Address is not the owner");
        _mint(to, amount * 10 ** 18);
    }
}
