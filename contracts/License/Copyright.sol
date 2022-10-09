//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Copyright is IERC721, ERC721URIStorage {
    event Minted(uint256 tokenId);
    using SafeMath for uint256;
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    IERC721 songs;
    mapping(uint256 => uint256) copyrightToSong;

    constructor(address songsAddr) ERC721("Copyright", "CPR") {
        songs = IERC721(songsAddr);
    }

    function mint(string calldata metadata, uint256 songId)
        public
        returns (uint256)
    {
        _tokenIds.increment();
        uint256 tokenId = _tokenIds.current();

        address owner = songs.ownerOf(songId);
        _safeMint(owner, tokenId);
        _setTokenURI(tokenId, metadata);

        copyrightToSong[tokenId] = songId;

        emit Minted(tokenId);
    }
}
