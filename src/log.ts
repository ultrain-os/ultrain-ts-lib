/**
 * @author fanliangqin@ultrain.io
 */

export declare namespace env{
    function ts_log_print_s(ch: i32): void;
    function ts_log_print_i(i: i64, fmt: u32): void; 
    function ts_log_done(): void;    
}


class Logger {
    /**
     * print a string message to console.
     * @param msg message to print.
     */
    s(msg: string): Logger {
        for (let idx = 0; idx < msg.length; ++idx) {
            env.ts_log_print_s(msg.charCodeAt(idx));
        }
        return this;
    }

    /**
     * print an integer to console.
     * @param intger integer to print.
     * @param fmt to print as dec or hex.
     */
    i(intger: i64, fmt: u32 = 10): Logger {
        env.ts_log_print_i(intger, fmt);
        return this;
    }

    flush(): void {
        env.ts_log_done();
    }
}

export let Log = new Logger();
