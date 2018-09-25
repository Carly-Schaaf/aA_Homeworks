document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas')
  canvas.width = 500;
  canvas.height = 500;
  let centerX = canvas.width / 2;
  let centerY = canvas.height / 2;

  const ctx = canvas.getContext('2d');
  ctx.fillStyle = 'yellow';
  ctx.fillRect(10, 10, 500, 500);

  ctx.beginPath();
  ctx.arc(centerX, centerY, 50, 0, 2 * Math.PI, true);
  ctx.strokeStyle = "red";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();
});
