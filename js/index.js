var qromap = document.getElementById("qro-map"),
	provinceInfo = document.getElementById("provinceInfo"),
	allProvinces = qromap.querySelectorAll("g");
	qromap.addEventListener("click", function(e){ 
		var province = e.target.parentNode;
		if(e.target.nodeName == "path") {
		for (var i=0; i < allProvinces.length; i++) {
			allProvinces[i].classList.remove("active");
		}
		province.classList.add("active");
		var provinceName = province.querySelector("title").innerHTML,
		provincePara = province.querySelector("desc p").innerHTML,
		sourceImg = province.querySelector("img");
		//imgPath = 'http://prueba2s.senado.gob.mx/gilberto-herrera/images/galeria/educacion/';
		provinceInfo.innerHTML = "";
		//provinceInfo.insertAdjacentHTML("afterbegin", "<img src="+imgPath+sourceImg.getAttribute('xlink:href')+" alt='"+sourceImg.getAttribute('alt')+"'><h1>"+provinceName+"</h1><p>"+provincePara.innerHTML+"</p>");
		provinceInfo.insertAdjacentHTML("afterbegin", "<img src='"+sourceImg.getAttribute('xlink:href')+"'><h1>"+provinceName+"</h1><p>"+provincePara+"</p>");
		provinceInfo.classList.add("show");
		}
	})