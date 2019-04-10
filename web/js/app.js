const carouselSlide = document.querySelector('.card-container');
const carouselImages = document.querySelectorAll('.card-container img');

//Buttons
const prevBtn = document.querySelector('#prevBtn');
const nextBtn = document.querySelector('#nextBtn');

//Counte 
let counter =1;
const size = carouselImages[0].clientWidth;

carouselSlide.style.transform = 'translateX('+ ( -size *counter) + 'px)';

//Button listeners
nextBtn.addEventListener('click', ()=>{ 
    if(counter >= carouselImages.length - 1) return;
    carouselSlide.style.transition = "transform 0.5s ease-in-out";
    counter++;   
    carouselSlide.style.transform = 'translateX('+ ( -size * counter) + 'px)';
});
prevBtn.addEventListener('click', ()=>{
    if(counter<=0) return;
    carouselSlide.style.transition = "transform 0.5s ease-in-out";
    counter--;
    carouselSlide.style.transform = 'translateX('+ ( -size *counter) + 'px)';
});
////https://www.youtube.com/watch?v=KcdBOoK3Pfw
carouselSlide.addEventListener('transitionend', ()=>{
      
    if(carouselImages[counter].id ==='lastClone'){
        carouselSlide.style.transition ="none";
        counter = carouselImages.length -2;
        carouselSlide.style.transform = 'translateX('+ ( -size *counter) + 'px)';
    }
     if(carouselImages[counter].id ==='firstClone'){
        carouselSlide.style.transition ="none";
        counter = carouselImages.length - counter;
        carouselSlide.style.transform = 'translateX('+ ( -size *counter) + 'px)';
    }
    
});



