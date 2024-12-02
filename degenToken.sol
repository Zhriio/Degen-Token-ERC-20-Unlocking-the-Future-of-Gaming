// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    struct Item {
        string name;
        uint256 price;
    }

    mapping(uint256 => Item) public items;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        items[0] = Item("1. small loot", 20);
        items[1] = Item("2. medium loot", 50);
        items[2] = Item("3. large loot", 100);
    }

    function mint(address _to, uint256 _amount) public onlyOwner {
         _mint(_to, _amount);
    }

    function getTokenBalance() external view returns (uint256){
        return this.balanceOf(msg.sender);
    }

    function transferToken(address _recipient, uint256 _amount) external returns (bool) {
        require(balanceOf(msg.sender)>= _amount,"Insufficient amount to transer.");
        return transfer(_recipient, _amount);
    }

    function burnToken(uint256 _amount) public {
        require(balanceOf(msg.sender)>= _amount,"Insufficient amount to burn.");
        _burn(msg.sender, _amount);
    }

    function showItems() public view returns(string[] memory){
        string[] memory availableItems = new string[](3);
        for(uint256 i = 0; i < 3; i++){
            availableItems[i] = items[i].name;
        }
        return availableItems;
    }

    function redeemItem(uint256 _itemID) public {
        uint256 itemIndex = _itemID-1;
        require(itemIndex>=0 && itemIndex<3, "Please pick from available items.");
        require(balanceOf(msg.sender) >=items[itemIndex].price, "Insufficient token to redeem this item.");
        _burn(msg.sender, items[itemIndex].price);
    }
    
}
