# DeMuse

## Introduction

We bring web3 to the music industry so artists can:
- keep the rights to their music 
- get distribution in novel ways
- get a direct connection with their audience
- co-create songs with loyal fans

## Overivew

DeMuse is built as a decentralized profit-sharing network, for the community to support their favorite artists, but also make profit out of it. It turns donations into sustainable financial model. 

DeMuse at it's core is a profit-sharing network, based on fractionalized overship over musical pieces. 

We lavarage on Polygon's optimized faster and cheaper transaction for higher adoption, on Lens protocol for getting the word out about our amazing artists and IPFS (nft.storage) for truly decentralized p2p storage.

We're excited to build our platform with Lens. Centralised social media have been great at providing distribution for musicians, but one wrong lyric can get them banned. The social graph of Lens has the potential for similar distribution, but also own their connections and content. Because of this they can trust that their investment in the platform won't be taken away. 


## How we do it? 

1. Presale
   
   We realize that one of the main problems of undeground artists is to get their piece done and ready for the public without any funds. 
   
   DeMuse allow the artists to mint a PreSale NFT (with a title, samples, artwork, description) to be held as an unbreakable Agreement to produce and mint their piece of art, and for the community to get their future shares out of it. 
   The community of the artist or DeMuse can buy future shares of the artwork, to support the creator, but also to get higher piece of the profit once the artwork is out.
   Supporting early stage artist comes with it's perks - the holders of the future tokens can participate in the creation process of the artwork by voting on specific propsals that the artist shares (beats for instance), and also get access to exclusive content such as live recordings etc.

2. Mint $SONG
    The artists can mint their music as fractionalized NFT, that allows the community and their fan base to support them and invest in them. 
    
    - From the initial 1000 Fractions, the ones sold on Presale are being distributed in the moment of minting. 
    - The artist get's 50% of the remaining shares. 
    - Whatever's rest is being sold on the public market. 

3. Copyright & License 
   
   Copyright and Licensing are the main sources of profit for an artwork. The co-owners should of course also make profit out of that. 
   The Copyright token is owned by the Artist, but it can mint License NFTs that can be sold to Medias, Movies, Game Studios etc. 
   The only way for the Licensees to get the right to use the artwork, is by buying the token. Once bought the profit from it goes directly to the DeMuse treasury to be safely guarded by our protocol. 

4. Treasury & Profit-sharing 
   
    Now, this is when it gets interesting. 
    We want to support the artists but also to support the community. The shareholders of the token get returns on all of the profit made by licenses and streaming platforms (still having centralization issues there, but we'll get there).

    The treasury distributes all the incomming transfers directly to the holders of the fractions of the artwork.

    Plans for the future: We don't want to be unfair to the community members that have supported the artist before they get properly profitable. We're plannign on implementing the treasury distribution based on fair snapshots. 


## Short and Sweet: Smart contracts

- Presale: allows the artist to presell a song to their audience. The buyers mint an ERC721 token that stores how much they invested. This will later be converted to fractions of the copyright NFT (for which they get royalties).

- $SONG: defines the fractionalised NFT reperesenting the artwork

- Treasury: All income from the song's copyright goes to the treasury. This is distributed among the token holders, proportional to the amount of fractions they hold. 

- Copyright: Stays in posession of the artist. It is the only address that can print licence contracts to bring in revenue. 

- Licence: Can be minted to licence the music. Any income generated goes to the treasury.

- Voting: the first element that allows the musician to co-create with their loyal fans that invested in the presell. 

Source: https://github.com/demuse-io/contracts

## Front end

We created a react app with:

- homepage: allows web3 login via MetaMask

- artist page: fetches profile info from lens

- premint page: connecte with lens and integrated with the PreSale contract

Source: https://github.com/demuse-io/marketplace 
Link: https://marketplace-five-jade.vercel.app/


## Decentralised social medium

We created the first version of a decentralised social media built with lens that is designed to facilitate co-creation of music. 
More work is needed here, but we created a landing page with web3 login. After login the lens profile it fetched and the user can create a post on lens (which appears on lenster).
The full version would allow distribution inherent in social media by making use of the social graph of lens.

Source: https://github.com/demuse-io/marketplace
Link: https://marketplace-five-jade.vercel.app/

## What we're proud of? 

0. Use Web3 to disrupt how the comercial use and ownership in music industry works.
1. We managed to build a technically and financially sustainable ownership fractionalization standard. (Take a look at /fractionalization ;) )
2. We build a treasury based on fractionalized ownership tokens. 
3. We broke our heads trying to get this publishing in Lens to work, but we made it 🚀. 
4. First step to allow musicians and fans to create music together in a user-friendly platform.
5. Managed to get the entire liquidity of !!!5 USDTs!!! of SushiSwap on Mumbai in order to TEST!!!! :) 
6. Hosted our beautiful marketplace on IPFS and Registered on ENS!
