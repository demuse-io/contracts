//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract License is IERC721, ERC721URIStorage {
    event Minted(uint256 tokenId);

    using SafeMath for uint256;
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    IERC721 copyrights;
    mapping(uint => uint[]) copyrightToLicenses;
    mapping(uint => uint) licenseToPrice;

    constructor() ERC721("License", "LCNS") {
        copyrights = IERC721(msg.sender);
    }

    function mint(uint copyrightId, uint price) public returns(uint) {
        _tokenIds.increment();
        uint256 tokenId = _tokenIds.current();

        address owner = copyrights.ownerOf(copyrightId);
        _safeMint(owner, tokenId);

        copyrightToLicenses[copyrightId].push(tokenId);
        licenseToPrice[tokenId] = price;

        emit Minted(tokenId);

        return tokenId;
    }
}
