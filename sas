#hhhhhhhhhh
<!DOCTYPE html>
<html>
<head>
    <title>Рандомайзер числа</title>
    <script>
        function getRandomNumber() {
            var min = parseInt(document.getElementById("min").value);
            var max = parseInt(document.getElementById("max").value);

            // Проверяем, что введенные значения являются числами
            if (isNaN(min) || isNaN(max)) {
                alert("Пожалуйста, введите числа!");
                return;
            }

            // Проверяем, что минимальное значение меньше максимального
            if (min >= max) {
                alert("Максимальное значение должно быть больше минимального!");
                return;
            }

            // Генерируем случайное число в заданном диапазоне
            var randomNumber = Math.floor(Math.random() * (max - min + 1)) + min;

            // Отображаем результат на странице
            document.getElementById("result").innerHTML = "Случайное число: " + randomNumber;
        }
    </script>
</head>
<body>
    <h1>Рандомайзер числа</h1>
    <label for="min">Минимальное значение:</label>
    <input type="number" id="min">
    <br>
    <label for="max">Максимальное значение:</label>
    <input type="number" id="max">
    <br>
    <button onclick="getRandomNumber()">Сгенерировать</button>
    <br>
    <div id="result"></div>
</body>
</html>
