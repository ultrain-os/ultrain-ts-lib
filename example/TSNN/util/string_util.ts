export const NUM_STR:string[] =["0","1","2","3","4","5","6","7","8","9"] 

export function leftPadding(word:string, num:u64, pattern:u8):string{
    let temp = word;
    let sub = temp.length - num;
    if(sub > 0){
        for(let i = 0;i < sub;i++){
            temp = temp + pattern;
        }
    }
    return temp;
}

export function bytesToString(cs:i32[]):string{
    let res:string = "";
    let len:i32 = cs.length;
    for(let i = 0;i<len;i++){
        res = res + String.fromCharCode(cs[i]);
    }
    return res;
}