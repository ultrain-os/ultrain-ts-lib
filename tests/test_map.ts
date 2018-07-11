import { Map } from "../src/map";
import "allocator/arena";

let map:Map < string,string > = new Map < string, string>();
let hasElement = map.contains("ddd");