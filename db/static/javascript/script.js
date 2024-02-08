
const menuBtn = document.getElementById("menuBtn")
const navUl = document.getElementById("dropMenu")

const xSrc = "./icons/close.svg"
const menuSrc ="./icons/Menu.svg"

let isOpen = false
let isClosed = false

const handleMenu = () =>{
  if(isOpen){
      menuBtn.src = menuSrc
      isOpen = false
      navUl.style.display ="none"
  }else{
      menuBtn.src = xSrc
      isOpen = true
      navUl.style.display ="flex"
  }
}

const swiperCore = new Swiper(".swiperCore", {
  slidesPerView: 1,
  centeredSlides: true,
  spaceBetween: 30,
  loop:true,
  navigation: {
    nextEl: '.swiperCore__button--next',
    prevEl: '.swiperCore__button--prev',
  },
  breakpoints:{
    1000:{
      slidesPerView: 3
    }
  }
  
  
})

const swiperCore2Slide = new Swiper(".swiperCore2Slide", {
  slidesPerView: 1,
  spaceBetween: 30,
  loop:true,
  navigation: {
    nextEl: '.swiperCore2Slide__button--next',
    prevEl: '.swiperCore2Slide__button--prev',
  },
  breakpoints:{
    1000:{
      slidesPerView: 2
    }
  }
})

const swiperPaginationGrid = new Swiper(".swiperPagination",{
  slidesPerView:1,
  spaceBetween: 30,
  loop: true,
 
  breakpoints:{

    1000:{
      
      slidesPerView:3, 
      grid:{
        fill:"row",
        rows:2,
      },
    }
  },


  pagination:{
    el:".swiperPagination__bullets",
  },
})

const swiper2Slide = new Swiper(".swiper2Slide",{
  slidesPerView:1,
  spaceBetween: 30,
  loop: true,
  breakpoints:{
    750:{
      
      slidesPerView: 2,
    }
    
  },

  pagination:{
    el:".swiper2Slide__bullets",
  },
})

const swiperPaginationFlex = new Swiper(".swiperFlex",{
  slidesPerView:1,
  spaceBetween: 30,
  loop: true,
  breakpoints:{
    750:{
      loop: true,
      slidesPerView: 2,
    },
    1000:{
      slidesPerView: 3,
    }
    
  },

  pagination:{
    el:".swiperFlex__bullets",
  },
})

const swiperColumn = new Swiper(".swiperColumn",{
  slidesPerView: 1,
  loop: true,
  spaceBetween:30,
  grid:{
    fill:"row",
    rows:3,
  },
  breakpoints:{
    1000:{
      slidesPerView: 2,
    
    },
  },
  navigation: {
    nextEl: '.swiperColumn__button--next',
    prevEl: '.swiperColumn__button--prev',
  },
})

const swiperFoodPhotos = new Swiper (".swiperFoodPhotos",{
  slidesPerView:1,
  
  loop: true,

  pagination:{
    el:".swiperFoodPhotos__pagination"
  },
  breakpoints:{
    1000:{
      slidesPerView: 3,
      spaceBetween: 30,
    }
  },
})


menuBtn.addEventListener('click',handleMenu)