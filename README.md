# SignDoc
Signing documents with a smart contract in Ethereum Network

Easy to deploy and use smart contract to put LOI letters in blockchain:
https://en.wikipedia.org/wiki/Letter_of_intent

Once the smart contract is deployed, any Ethereum address can sign a document, using its URL and providing a HASH. There is no hash restriction, so each signer must use the same algorithm than the other ones.

You can check easily who signed the document, using the public checkDocument function, that returns the whole list of addresses who have signed the document for the selected URL. The function returns the HASH too, so you can check if the referred document has changed or not, since you signed it.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
