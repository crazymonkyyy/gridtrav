import basic;
int inversetrianglefunc(int x){
	x+=1;
	import std.math; import std.conv;
	float x_=x*float(2);
	x_=sqrt(x_)+.5;
	x_=floor(x_);
	int y=x_.to!int;
	return y;
}
int trianglefunc(int x){
	return x*(x+1)/2;
}

struct pos{
	int a;
	float b;
	float c;
}

pos findpos(float x){
	pos o;
	o.a=x.ceil.to!int.inversetrianglefunc;
	float f=x-trianglefunc(o.a)+o.a+1;
	o.b=min(f,1);
	o.c=f-o.b;
	o.a--;
	return o;
}
unittest{
	foreach(i;0..30){
		(i/float(4)).findpos.writeln;
	}
}

struct vec{
	int x;
	int y;
}
vec findsimple(int x){
	//x-=1;
	vec o;
	o.x=inversetrianglefunc(x);
	o.y=x-trianglefunc(o.x)+o.x;
	o.x--;
	return o;
}
//unittest{
//	foreach(i;0..15){
//		i.findsimple.writeln;
//	}
//}