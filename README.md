# DeMuse

## Introduction

We bring web3 to the music industry so artists can:
- keep the rights to their music 
- get distribution in novel ways
- get a direct connection with their audience
- co-create songs with loyal fans

## Smart contracts

- Presale: allows the artist to presell a song to their audience. The buyers mint an ERC721 token that stores how much they invested. This will later be converted to fractions of the copyright NFT (for which they get royalties).

- Song defines the fractionalised NFT

- All income from the song's copyright goes to the treasury. This is distributed among the token holders, proportional to the amount of fractions they hold. 

- The copyright contract. The copyright stays in posession of the artist. It is the only address that can print licence contracts to bring in revenue. 

- Licence: licence can be minted to licence the music. Any income generated goes to the treasury.

- Voting: the first element that allows the musician to co-create with their loyal fans that invested in the presell. 

## Front end

We created a react app with:

- homepage: allows web3 login via MetaMask

- artist page: fetches profile info from lens

- premint page: connecte with lens and integrated with the PreSale contract

## Decentralised social medium

We created the first version of a decentralised social media built with lens that is designed to facilitate co-creation of music. 

More work is needed here, but we created a landing page with web3 login. After login the lens profile it fetched and the user can create a post on lens (which appears on lenster).

The full version would allow distribution inherent in social media by making use of the social graph of lens.



