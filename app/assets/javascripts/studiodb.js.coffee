jQuery ->

  weekday=new Array(7);
  weekday[0]="Sun";
  weekday[1]="Mon";
  weekday[2]="Tues";
  weekday[3]="Wed";
  weekday[4]="Thurs";
  weekday[5]="Fri";
  weekday[6]="Sat";


  currentTime = new Date()
  month = ('0' + (currentTime.getMonth() + 1)).slice(-2)
  day = ('0' + currentTime.getDate()).slice(-2)
  # dayOfWeek = currentTime.getDay()
  dayOfWeek = weekday[currentTime.getDay()];
  year = currentTime.getFullYear()
  hours = currentTime.getHours()
  minutes = currentTime.getMinutes()
  if minutes < 10
    minutes = "0" + minutes
  # console.log(hours + ":" + minutes + " ")
  fullDate = year + "-" + month + "-" + day + " " + dayOfWeek + " " + hours + ":" + minutes + " "
  if hours > 11 
    fullDate += "PM"
  else
    fullDate += "AM"
  

  $('.datepicker').val(fullDate).datepicker()

