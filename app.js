const grid = document.querySelector('.grid')

const createGrid = () => {
  for (let i = 0; i < 42; i++) {
    const square = document.createElement('div')
    square.textContent = 'hello'
    grid.appendChild(square)
  }
  for (let i = 0; i < 7; i++) {
    const square = document.createElement('div')
    square.classList.add('taken')
    square.textContent = 'taken'
    grid.appendChild(square)
  }
}

createGrid()