<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
    <h2>Simple Calculator</h2>
    <h3>Enter First Number:</h3>
    <input id="firstNumber" type="number">
    <h3>Enter Second Number:</h3>
    <input id="secondNumber" type="number">
    <h3>Select Operation:</h3>
    <select id="operation">
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
    </select>
    <br><br>
    <button onClick="calculate()">Calculate</button>
    <h3>Result:</h3>
    <p id="sol"></p>

    <script>
        function calculate() {
            let a = parseFloat(document.getElementById("firstNumber").value);
            let b = parseFloat(document.getElementById("secondNumber").value);
            let operation = document.getElementById("operation").value;
            let result;

            if (isNaN(a) || isNaN(b)) {
                result = "Please enter valid numbers.";
            } else {
                switch (operation) {
                    case "+":
                        result = a + b;
                        break;
                    case "-":
                        result = a - b;
                        break;
                    case "*":
                        result = a * b;
                        break;
                    case "/":
                        result = b !== 0 ? a / b : "Division by zero is not allowed.";
                        break;
                    default:
                        result = "Invalid operation.";
                }
            }

            document.getElementById("sol").innerHTML = result;
        }
    </script>
</body>
</html>
