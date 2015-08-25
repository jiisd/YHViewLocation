# YHViewLocation
Objective-C中一个直接对控件的frame/bounds/center进行属性值快速更改的工具类

### * 在 Swift 中可以直接对结构体的数据进行更改
### * 但是在 Objective-C 中每次更改控件的位置属性进行更改的时候都需要如下“三部曲”，比较麻烦
```
1>将结构体取出

2>改变取出后的结构体对应的数据

3>将修改后的结构体赋值给控件

	CGRect frame = self.redView.frame;  
    // your code...  
    frame.origin.x = 100;  
    // your code...  
    self.redView.frame = frame; 
```

### * 使用这个工具类可以在计算完尺寸后对控件进行快速的赋值，对效率会有一定的提升 ；）


### * 使用方法：
```
1>在需要使用的地方引入头文件
	#import "UIView+YHLocation.h"
	
2>类似于 Swift 直接赋值即可
	self.redView.frameX = 100;
```