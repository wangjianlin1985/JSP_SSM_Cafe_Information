utils = {
    setParam : function (name,value){
        localStorage.setItem(name,value)
    },
    getParam : function(name){
        return localStorage.getItem(name)
    },
    clearParam : function(){
    	localStorage.clear();
    }
}

wine={
    id:0,
    cateId:0,
    name:"",
    price:0.0,
    discount:0.0,
    num:0,
    pic:"",
};

cart = {
    //向购物车中添加商品
    addWine:function(wine){
        var ShoppingCart = utils.getParam("ShoppingCart");
       // alert("shoppingCart"+ShoppingCart);
        if(ShoppingCart==null||ShoppingCart==""){
			//第一次加入商品
            var jsonstr = {"wineList":[{"id":wine.id,"cateId":wine.cateId,"name":wine.name,"price":wine.price,
            							"discount":wine.discount,"num":wine.num,"pic":wine.pic}],
            				"totalNumber":wine.num,"totalAmount":(wine.discount*wine.num)};
            utils.setParam("ShoppingCart","'"+JSON.stringify(jsonstr));
        }else{
            var jsonstr = JSON.parse(ShoppingCart.substr(1,ShoppingCart.length));
            var wineList = jsonstr.wineList;
            var result=false;
			//查找购物车中是否有该商品
            for(var i in wineList){
                if(wineList[i].id==wine.id){
                	wineList[i].num=parseInt(wineList[i].num)+parseInt(wine.num);
                    result = true;
                }
            }
            
            if(!result){
				//没有该商品就直接加进去
            	wineList.push({"id":wine.id,"cateId":wine.cateId,"name":wine.name,"price":wine.price,"discount":wine.discount,
            					"num":wine.num,"pic":wine.pic});
            }
			//重新计算总价
            jsonstr.totalNumber=parseInt(jsonstr.totalNumber)+parseInt(wine.num);
            jsonstr.totalAmount=parseFloat(jsonstr.totalAmount)+(parseInt(wine.num)*parseFloat(wine.discount));
         
            //保存购物车
            utils.setParam("ShoppingCart","'"+JSON.stringify(jsonstr));
        }
    },
    //修改购买商品数量
    updateWineNum:function(index,num){
        var ShoppingCart = utils.getParam("ShoppingCart");
        var jsonstr = JSON.parse(ShoppingCart.substr(1,ShoppingCart.length));
        var wineList = jsonstr.wineList;
        
        for(var i in wineList){
            if(i==index){
                jsonstr.totalNumber=parseInt(jsonstr.totalNumber)+(parseInt(num)-parseInt(wineList[i].num));
                jsonstr.totalAmount=parseFloat(jsonstr.totalAmount)+((parseInt(num)*parseFloat(wineList[i].discount))-parseInt(wineList[i].num)*parseFloat(wineList[i].discount));
                wineList[i].num=parseInt(num);
                
            
                utils.setParam("ShoppingCart","'"+JSON.stringify(jsonstr));
                return;
            }
        }
    },
    //获取购物车中的所有商品
    getWineList:function(){
        var ShoppingCart = utils.getParam("ShoppingCart");
        if(ShoppingCart==null||ShoppingCart==""){
        	return false;
        }
        var jsonstr = JSON.parse(ShoppingCart.substr(1,ShoppingCart.length));
        console.log(ShoppingCart.length);
        var wineList = jsonstr.wineList;
 
        return wineList;
        
    },
    //判断购物车中是否存在商品
    existWine:function(id){
        var ShoppingCart = utils.getParam("ShoppingCart");
        var jsonstr = JSON.parse(ShoppingCart.substr(1,ShoppingCart.length));
        var wineList = jsonstr.wineList;
        var result=false;
        for(var i in wineList){
            if(wineList[i].id==id){
                result = true;
            }
        }
        return result;
    },
    //删除购物车中商品
    deleteWine:function(index){
        var ShoppingCart = utils.getParam("ShoppingCart");
        var jsonstr = JSON.parse(ShoppingCart.substr(1,ShoppingCart.length));
        var wineList = jsonstr.wineList;
        var list=[];
        for(var i in wineList){
            if(i==index){
                jsonstr.totalNumber=parseInt(jsonstr.totalNumber)-parseInt(wineList[i].num);
                jsonstr.totalAmount=parseFloat(jsonstr.totalAmount)-parseInt(wineList[i].num)*parseFloat(wineList[i].discount);
            }else{
                list.push(wineList[i]);
            }
        }
        jsonstr.wineList = list;
  
        utils.setParam("ShoppingCart","'"+JSON.stringify(jsonstr));
    },
    //清空购物车中商品
    clearWine:function(){
        utils.clearParam();
    
    }
};



//加入到购物车
function addCart(num){
	var wineId = $("#wineId").html();
	//alert("wineId"+wineId);
	var cateId = $("#cateId").html();
	var wineName = $("#wineName").html(); 
	var winePrice = $("#winePrice").html();
	var wineDiscount = $("#wineDiscount").html();
	var pic = $("#pic").html();
	//alert(wineId+"  "+wineName+"  "+winePrice+"  "+wineDiscount+"    "+pic);

	var wine = { 
	    'id': wineId,     
	    'cateId':cateId,
	    'name': wineName, 
	    'price':winePrice, 
	    'discount':wineDiscount,
	    'num':num,
	    'pic':pic	    
	}; 

	//商品加入到购物车 
	cart.addWine(wine); 
	$("#msgTitle").html("添加成功");
	$("#msgBody").html("已将商品加入到购物车");
	$("#msgModal").modal(); 

	

}


