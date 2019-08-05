const fs = require("fs");
const path = require("path");
const process = require('child_process');

var config = {
  errorList: [],
  todoList: []
}

function compileTs(filePath) {

  let files = fs.readdirSync(filePath);
  for (let i = 0; i < files.length; i++) {
    let fileName = files[i];

    let aFile = path.join(filePath, fileName)
    // console.log(`fileName: ${aFile}`);

    let stat = fs.statSync(aFile);
    if (stat.isDirectory()) {
      compileTs(aFile);
    } else if (aFile.endsWith("ts")) {
      // console.log(`file: ${aFile}`);
      try {
        compileTsUsingLocalUsc(aFile)
      } catch (e) {
        config.errorList.push(aFile);
      }
    }
  }
}

function compileTsUsingLocalUsc(filePath) {

  const compileDir = path.join(__dirname, "compiler");
  const filename = path.basename(filePath, ".ts");
  let abi = path.join(compileDir, filename, filename + ".abi");
  let wasm = path.join(compileDir, filename, filename + ".wasm");
  abi = path.isAbsolute(abi) ? path.relative(__dirname, abi) : abi;
  wasm = path.isAbsolute(wasm) ? path.relative(__dirname, wasm) : wasm;
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

compileTs("./tests");
compileTs("./demos");
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
