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

function compileTsUsingLocalUsc(filename) {

  const compileDir = path.join(__dirname, "compiler");
  const basedir = filename.split("/")[filename.split("/").length - 2]
  let abi = path.join(compileDir, basedir, basedir + ".abi");
  let wasm = path.join(compileDir, basedir, basedir + ".wasm");

  // console.log(`abi: ${abi}. wasm: ${wasm}`)

  let cmds = [
    "usc", filename,
    "-g", abi,
    "-b", wasm,
    "-l",
    "--validate"
  ];


  let cmd = cmds.join(" ");
  // console.log(cmd);
  process.execSync(cmd);

}

compileTs("./tests");
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
    console.error(error.errorList.join("\n"));
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
