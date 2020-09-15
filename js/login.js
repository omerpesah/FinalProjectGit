$('#signInBtn').on('click', (event)=>{
    sessionStorage.setItem('userName', $('#userName').val());
})