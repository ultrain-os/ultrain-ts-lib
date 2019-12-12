const fs = require("fs");
const path = require("path");
const process = require('child_process');

var config = {
  errorList: [],
  todoList: []
}

function compileTsInDirectory(dirPath) {
  let files = fs.readdirSync(dirPath);
  for (let i = 0; i < files.length; i++) {
    let fileName = files[i];

    let filePath = path.join(dirPath, fileName)
    // console.log(`fileName: ${aFile}`);

    let stat = fs.statSync(filePath);
    if (stat.isDirectory()) {
      compileTsInDirectory(filePath);
    } else if (filePath.endsWith("ts")) {
      // console.log(`file: ${aFile}`);
      try {
        compileTsUsingLocalUscCmd(filePath)
      } catch (e) {
        config.errorList.push(filePath);
      }
    }
  }
}

function compileTsUsingLocalUscCmd(filePath) {
  const compileDir = path.join(__dirname, "compiler");
  const filename = path.basename(filePath, ".ts");
  let abi = path.join(compileDir, filename, filename + ".abi");
  let wasm = path.join(compileDir, filename, filename + ".wasm");
  // let wast = path.join(compileDir, filename, filename + ".wast");
  abi = path.isAbsolute(abi) ? path.relative(__dirname, abi) : abi;
  wasm = path.isAbsolute(wasm) ? path.relative(__dirname, wasm) : wasm;
  // wast = path.isAbsolute(wast) ? path.relative(__dirname, wast) : wast;

  // console.log(`abi: ${abi}. wasm: ${wasm}`);
  let cmds = [
    "usc", filePath,
    "-g", abi,
    "-b", wasm,
    "-l",
    "--validate"
  ];

  let cmd = cmds.join(" ");
  console.log(cmd);
  process.execSync(cmd);
}

compileTsInDirectory("./tests");
compileTsInDirectory("./demos");
printCompileResult();

function printCompileResult() {
  var passedList = [];
  var stillTodolist = [];
  for (let i = 0; i < config.errorList.length; i++) {
    let error = config.errorList[i];
    let exist = false;
    for (let j = 0; j < config.todoList.length; j++) {
      let todo = config.todoList[j];
      if (error == todo) {
        exist = true;
        break;
      }
    }
    exist ? stillTodolist.push(error) : passedList.push(error);
  }
  if (config.errorList.length != 0) {
    console.error("The files name that compiled failure:\n");
    console.error(config.errorList.join("\n"));
  }

  if (stillTodolist.length != 0) {
    console.error("The files still to check list:\n");
    console.error(stillTodolist.join("\n"));
  }

  if (passedList.length != 0 ) {
    console.error("The files passed:");
    console.error(passedList.join("\n"));
  }
}
