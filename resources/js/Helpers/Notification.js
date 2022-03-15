class Notification{

  success(){
  	new Noty({
    type: 'success',
    layout: 'topRight',
    text: 'Successfully Done!',
    timeout: 1000,
       }).show();
  } 
  alert(){
  	new Noty({
    type: 'alert',
    layout: 'topRight',
    text: 'Are you Sure?',
    timeout: 1000,
       }).show();
  } 
  successchangedlang(){
    new Noty({
    type:'success',
    layout: 'topRight',
    text: 'Ustunlikli uytgedi',
    timeout:1000,
    }).show();
  }


  image_validation(){
    new Noty({
    type: 'error',
    layout: 'topRight',
    text: 'Upload Image less then 1MB ',
    timeout: 1000,
       }).show();
  } 

}

export default Notification = new Notification()