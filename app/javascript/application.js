// Entry point for the build script in your package.json
import React from "react";
import ReactDOM from "react-dom";
import HelloWorld from "./components/HelloWorld";

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<HelloWorld />, document.getElementById("react-component"));
});
