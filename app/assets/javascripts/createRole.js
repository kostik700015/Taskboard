document.addEventListener('DOMContentLoaded', function () {
  const client_btn = document.getElementById('client_btn');
  const tasker_btn = document.getElementById('tasker_btn');
  const client = document.getElementById('client');
  const tasker = document.getElementById('tasker');
  if (client_btn) {
    client_btn.addEventListener("click", function(event) {
      event.preventDefault();
      tasker.style.display = "none";
      client.style.display = "block";
    });
  }
  
  if (tasker_btn) {
    tasker_btn.addEventListener("click", function(event) {
      event.preventDefault();
      client.style.display = "none";
      tasker.style.display = "block";
    });
  }
});