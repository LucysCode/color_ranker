console.log("JS loaded");

function getRandomColor() {
    const letters = '0123456789ABCDEF';
    let color = '#';
    for (let i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  }
  
  function randomizeColor() {
    const square = document.getElementById('color-square');
    if (square) {
      square.style.backgroundColor = getRandomColor();
    } else {
      console.error("No element with id 'color-square' found.");
    }
  }

window.onload = randomizeColor;