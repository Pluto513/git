	function index(n){
				var index = 0; 
				function scrollImg(index){
					
					var imgWidth = document.getElementById("img11").width;
					
					document.getElementById("section-list").style.marginLeft = -imgWidth *index +"px";
					
					var menu = document.getElementById("section-menu").getElementsByTagName("li");
					for(var i=0;i<menu.length;i++){
						if(i == index){
							menu[i].className = "active";
						}else{
							menu[i].className = "";
						}
						
						menu[i].addEventListener("click",(function(a){
							return function(){scrollImg(a)}
						})(i))
					}
					
					var data = document.getElementsByTagName("img")[index].title;
					document.getElementById("slider_title").innerHTML = data;
				}
				
				num = 0;
				setInterval(function(){
					num ++;
					if(num == n){
						num = 0
					}
					scrollImg(num)
				},4000)
			}
			index(5) 