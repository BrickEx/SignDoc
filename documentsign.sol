pragma solidity ^0.4.16;

/// @title Document sign contract - Allows signing a document using its hash and url.
/// @author Hector Linares - <hlinares@brickex.io>

contract Documentsign {
    /*
     *  Storage: urls and hashes
     */
    mapping(bytes32 => address[]) private urls;
    mapping(bytes32 => bytes32) private hashes;
    
    /*
     *  Sign a document
     *  Provide an URL and a HASH, and it stores a list of ETH addresses who signed it
     */
    function sign(string url, bytes32 hash) public {
        bytes32 urlhash = hashUrl(url);
        
        if(hashes[urlhash] < 1)
            hashes[urlhash] = hash;
        else
            require(hashes[urlhash] == hash);
            
        address[] storage signatures = urls[urlhash];
        signatures.length += 1;
        signatures[signatures.length-1] = msg.sender;
    }
    
    /*
     *  Common interface for hashing URL
     */
    function hashUrl(string url) internal pure returns (bytes32) {
        return keccak256(url);
    }
    
    /*
     *  Check who signed the document
     */
    function checkDocument(string url) public view returns (address[], bytes32){
        bytes32 urlhash = hashUrl(url);
        return (urls[urlhash], hashes[urlhash]);
    }
}
