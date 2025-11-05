<!DOCTYPE html>
<html lang="hi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>कैलकुलेटर</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background: #f3f4f6;
      font-family: Arial, sans-serif;
    }
    .calculator {
      background: white;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
      width: 250px;
    }
    #display {
      width: 100%;
      height: 50px;
      margin-bottom: 10px;
      font-size: 20px;
      text-align: right;
      padding: 5px;
      border: 1px solid #ccc;
      border-radius: 8px;
    }
    .buttons {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 10px;
    }
    button {
      height: 50px;
      font-size: 18px;
      border: none;
      border-radius: 8px;
      background: #e5e7eb;
      cursor: pointer;
    }
    button:active {
      background: #d1d5db;
    }
    .equal {
      grid-column: span 2;
      background: #4f46e5;
      color: white;
    }
  </style>
</head>
<body>
  <div class="calculator">
    <input type="text" id="display" disabled>
    <div class="buttons">
      <button onclick="clearDisplay()">C</button>
      <button onclick="appendValue('/')">÷</button>
      <button onclick="appendValue('*')">×</button>
      <button onclick="appendValue('-')">-</button>
      <button onclick="appendValue('7')">7</button>
      <button onclick="appendValue('8')">8</button>
      <button onclick="appendValue('9')">9</button>
      <button onclick="appendValue('+')">+</button>
      <button onclick="appendValue('4')">4</button>
      <button onclick="appendValue('5')">5</button>
      <button onclick="appendValue('6')">6</button>
      <button onclick="appendValue('.')">.</button>
      <button onclick="appendValue('1')">1</button>
      <button onclick="appendValue('2')">2</button>
      <button onclick="appendValue('3')">3</button>
      <button onclick="deleteLast()">⌫</button>
      <button onclick="appendValue('0')">0</button>
      <button onclick="calculate()" class="equal">=</button>
    </div>
  </div>

  <script>
    const display = document.getElementById("display");

    function appendValue(value) {
      display.value += value;
    }
    function clearDisplay() {
      display.value = "";
    }
    function deleteLast() {
      display.value = display.value.slice(0, -1);
    }
    function calculate() {
      try {
        display.value = eval(display.value);
      } catch {
        display.value = "Error";
      }
    }
  </script>
</body>
</html>
