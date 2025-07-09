window.onload = function(){
    let h1 = document.querySelector('h1');
    h1.onclick(() => {alert("OK")})
    h1.addEventListener('click',function (){alert('ok')})
}