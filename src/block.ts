import { HeadBlock } from "../lib/headblock";

/**
 * Retrieve head block inforamtions.
 */
export class Block {
    /**
     * Get the id of head block, it returns a SHA256 digest string.
     */
    public static get id(): string {
        return HeadBlock.id;
    }
    /**
     * Get the number of head block, sometimes it means height of head block.
     */
    public static get number(): u32 {
        return HeadBlock.number;
    }

    /**
     * Get timestamp of head block.
     * It returns count of seconds since epoch.
     */
    public static get timestamp(): u64 {
        return HeadBlock.timestamp;
    }
    /**
     * Get the producer of head block.
     * It returns an account name of u64.
     */
    public static get producer(): account_name {
        return HeadBlock.producer;
    }

    /**
     * Get the id of previous of head block.
     */
    public static get perviousId(): string {
        return HeadBlock.previousId;
    }
}