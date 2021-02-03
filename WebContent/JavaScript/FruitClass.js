/**
 * 
 */

Fruit=function(){
	this.msg="맛있는";			// 멤버변수에는 반드시 this 선언해야 함
};

Fruit.prototype.taste=function(){
	var str="과일";
	alert(this.msg + str);
};

Fruit.prototype.disp=function(){
	alert("disp Funciton");
};