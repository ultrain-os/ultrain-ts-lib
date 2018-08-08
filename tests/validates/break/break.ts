
import "allocator/arena";

// function checkBreak():void{
//     let item: Array<string> = null;

//     for (let idx:i32=0; idx < 32; ++idx) {
//         if (idx == 12) { 
//             item = new Array<string>();
//             break;
//         }
//     }
//     assert(item == null);

// }

// checkBreak();




// import "allocator/arena";

function checkBreak():void{
    let item:i32 =0;

    for (let idx:i32=0; idx < 32; ++idx) {
        if (idx == 12) { 
            item = idx + 32;
            break;
        }
    }
    assert(item == 44);

}

checkBreak();