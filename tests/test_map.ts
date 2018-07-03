import { Map } from "../src/map";

let a: Map<u32, u32> = new Map<u32, u32>();

a.set(2, 8);
a.set(3, 27);


let s: u32 = a.contains(3);
let m: u32 = a.get(5);
let size = a.size();
// if (s) {

// }