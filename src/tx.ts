/**
* @author fanliangqin@ultrain.io
*/

import { getTransactionId, getTransactionPublishedTime } from "../lib/transaction";


/**
 * This class is applied to retrieve transaction informations.
 *
 * @export
 * @class Tx
 */
export class Tx {
    /**
     * to get the transaction id.
     *
     * @readonly
     * @static
     * @type {string} return a string stands for a sha256 checksum.
     * @memberof Tx
     */
    static get id() : string {
        return getTransactionId();
    }

    /**
     * to get the published time of this transacton.
     *
     * @readonly
     * @static
     * @type {u32} return seconds since epoch.
     * @memberof Tx
     */
    static get publishTime(): u32 {
        return getTransactionPublishedTime();
    }
}
