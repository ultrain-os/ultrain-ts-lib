/**
 * @author fanliangqin@ultrain.io
 */

/**
* Return the set of active producers
* @param producers - a pointer to an buffer of account_names
* @param datalen - byte length of buffer
* @return the number of bytes actually populated
*
*  Example:
*  @code
*  account_name producers[21];
*  uint32_t bytes_populated = get_active_producers(producers, sizeof(account_name)*21);
*  @endcode
*/
declare function get_active_producers(producers: usize, datalen: i32): i32;

export function getActiveProducer(producers: u64[], len: i32): u32 {
    // TODO(liangqin.fanlq): populate account_name
    return 0;
}