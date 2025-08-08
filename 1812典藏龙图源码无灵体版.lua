

















vibra = context:getSystemService(Context.VIBRATOR_SERVICE)
function 获取图片(txt)
ntxt=string.sub(string.gsub(txt,"/","."),-10,-1)
if string.find(tostring(txt),"http")~=nil then
    if panduan("/sdcard/长安/图片/"..ntxt)==false then
    file.download(txt,"/sdcard/长安/图片/"..ntxt)
    end
    txt="/sdcard/长安/图片/"..ntxt
    --txt="https://www.baidu.com/img/flexible/logo/pc/result.png"
end
return luajava.getBitmapDrawable(txt)
end
-----------------------------------------------------------------------------------------------------------

RG = {}
local RG = RG
local android = import('android.*')
function write(fileName, content)
file.write(fileName, content)
end
function panduan(rec) fille,err = io.open(rec) if fille == nil then return false else return true end end
function pdcf(lujing) rec = "/sdcard/长安/配置文件/"..lujing fille,err = io.open(rec) if fille == nil then return false else return true end end
sleep = gg.sleep
function read(fileName) f = assert(io.open(fileName, 'r')) content = f:read("*all") f:close() return content end
function wtcf(lujing,neirong)
write("/sdcard/长安/配置文件/"..lujing,neirong)
end
function rdcf(lujing)
return read("/sdcard/长安/配置文件/"..lujing)
end

开 = "开" 关 = "关"
function checkimg(tmp)
if panduan("/sdcard/长安/图片/"..tmp) ~= true then
gg.toast("正在下载资源"..tmp.."\n请耐心等待")
download("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/"..tmp,"/sdcard/长安/图片/"..tmp)
end
end
file.getdirs("/sdcard/长安/状态读取/")
ckimg = {
	"checkonred",
	"checkoffred",
	"genshin",
	"genshinmp3"
}
for i = 1,#ckimg do
jindu = i
checkimg(ckimg[i])
end
context = app.context
window = context:getSystemService("window") -- 获取窗口管理器
function getLayoutParams()
LayoutParams = WindowManager.LayoutParams
layoutParams = luajava.new(LayoutParams)
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams.type = LayoutParams.TYPE_APPLICATION_OVERLAY
else
	layoutParams.type = LayoutParams.TYPE_PHONE
end

layoutParams.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE -- 焦点设置Finish
layoutParams.gravity = Gravity.TOP|Gravity.LEFT -- 重力设置
layoutParams.width = LayoutParams.WRAP_CONTENT -- 布局宽度
layoutParams.height = LayoutParams.WRAP_CONTENT -- 布局高度

return layoutParams
end
function getj6()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({
	0xff2F3032,0xff2F3032
})
jianbian6:setStroke(0,"0xddffffff")--边框宽度和颜色
return jianbian6
end
function getj7()
jianbian6 = luajava.new(GradientDrawable)
jianbian6:setCornerRadius(20)
jianbian6:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian6:setColors({
	0x002F3032,0x002F3032
})
jianbian6:setStroke(3,"0xff0091FE")--边框宽度和颜色
return jianbian6
end
RG.controlFlip = function(control,time)
	luajava.runUiThread(function()
  import "android.view.animation.Animation"
  import "android.animation.ObjectAnimator"
  xuanzhuandonghua = ObjectAnimator:ofFloat(control, "rotationY", {0, 360})
  xuanzhuandonghua:setRepeatCount(0)
  xuanzhuandonghua:setRepeatMode(Animation.REVERSE)
  xuanzhuandonghua:setDuration(time)
  xuanzhuandonghua:start()
end) end
slctb = luajava.loadlayout {
	GradientDrawable,
	color = "#00ffffff",
	cornerRadius = 0
}
slcta = luajava.loadlayout {
	GradientDrawable,
	color = "#55ffffff",
	cornerRadius = 8
}
slctc = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 8
}
slctd = luajava.loadlayout {
	GradientDrawable,
	color = "#55ffffff",
	cornerRadius = 8
}
slcte = luajava.loadlayout {
	GradientDrawable,
	color = "#11ffffff",
	cornerRadius = 12
}
slctf = luajava.loadlayout {
	GradientDrawable,
	color = "#aa1E1C27",
	cornerRadius = 12
}
function getSelector3()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, luajava.loadlayout {
	GradientDrawable,
	color = "#feeeed",
	cornerRadius = 10
}) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, getShape3()) -- 没点击的背景
return selector
end
hanshu = function(v, event)
local Action = event:getAction()
if Action == MotionEvent.ACTION_DOWN then
isMove = false
RawX = event:getRawX()
RawY = event:getRawY()
x = mainLayoutParams.x
y = mainLayoutParams.y
elseif Action == MotionEvent.ACTION_MOVE then
isMove = true
mainLayoutParams.x = tonumber(x) + (event:getRawX() - RawX)
mainLayoutParams.y = tonumber(y) + (event:getRawY() - RawY)
window:updateViewLayout(floatWindow, mainLayoutParams)
end
end

function getSelector()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slcta) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctb) -- 没点击的背景
return selector
end
function getSelector2()
selector = luajava.getStateListDrawable()
selector:addState({
	android.R.attr.state_pressed
}, slctd) -- 点击时候的背景
selector:addState({
	-android.R.attr.state_pressed
}, slctc) -- 没点击的背景
return selector
end

jianbian = luajava.new(GradientDrawable)
jianbian:setCornerRadius(30)
jianbian:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbian2 = luajava.new(GradientDrawable)
jianbian2:setCornerRadius(30)
jianbian2:setGradientType(GradientDrawable.LINEAR_GRADIENT)

local isswitch
YoYoImpl = luajava.getYoYoImpl()
RG.menu = function(sview)
if isswitch then
return false
end
isswitch = true
cebian = {
	LinearLayout,
	id = "侧边",
	visibility = "gone",
	layout_height = "37dp",
	layout_width = "80dp",--侧边按钮宽
	orientation = "vertical",
	--background="#88000000",
	}
for i = 1,#stab do
cebian[#cebian+1] = {
	FrameLayout,
	id = "jm"..i,
layout_height = "33dp",--侧边按钮底面高
layout_width = "80dp",--侧边按钮底面宽
	layout_marginTop = "2.1dp",--侧边按钮间隔
	layout_marginBottom = "2.1dp",--侧边按钮间隔
	background = getSelector(),
	{
		TextView,
		text = stab[i],
		layout_gravity="center",
		gravity = "center",
		layout_height = "80dp",
		layout_width = "136dp",
		onClick = function() 切换(i) end,
		onTouch=hanshu,
	},{
		TextView,
		text = ">",
		id="jmj"..i,
		textColor="#ffffff",
		layout_gravity = "right|center",
		textSize="15sp",
	layout_marginTop="-3dp",
		layout_marginRight="5dp",
		layout_height = "wrap_content",
		layout_width = "wrap_content",
		onClick = function() 切换(i) end,
		onTouch=hanshu,
	}}
end
cebian = luajava.loadlayout(cebian)
gund=luajava.loadlayout({ScrollView,
		cebian})
for i = 1,#stab do
_ENV["layout"..i] = luajava.loadlayout({
	ScrollView,
	fillViewport = true,
--padding = "10dp",
	id = "layout"..i,
	visibility = "gone",
	gravity = "center",
	layout_width = "350dp",
	layout_height = "320dp",
	orientation = "horizontal",
	background="#808080",
	{
		LinearLayout,
		id = "layoutm"..i,
		--background = getj6(),
		layout_marginRight = "5dp",
		layout_marginLeft = "5dp",
		layout_width = "330dp",
		orientation = "vertical",
		gravity = "center_horizontal",
		background="#808080",
	}
})
end
wxbg=获取图片("https://escape2020-1303126286.cos.ap-shenzhen-fsi.myqcloud.com/wxbg")
ckou = {
	LinearLayout,
	visibility = "visible",
	layout_width = "wrap_content",
	layout_height = "wrap_content",
	orientation = "horizontal",
	{
		LinearLayout,
		id="ckbg",
		visibility="gone",
		background="#808080",--侧边栏颜色
		orientation = "vertical",
		padding = "2dp",
		layout_height="320dp",--背景板和侧边栏高
		layout_width="80dp",  --侧边栏宽
	},
}
for i = 1,#stab do
ckou[#ckou+1] = _ENV["layout"..i]
end
ckou = luajava.loadlayout(ckou)
floatWindow = {
	FrameLayout,
	id = "motion",
	layout_width = "wrap_content",
	orientation = "vertical",
	layout_height = "wrap_content",
	ckou,
	{
		LinearLayout,
		id="wxbgv",
		orientation = "vertical",
		--padding = "2dp",
		layout_height="wrap_content",
		{
		LinearLayout,
		id = "control",
		gravity = "center",
		layout_height = "30dp",--悬浮条高
		layout_width = "80dp",--悬浮条宽
		background="#808080",--悬浮条背景颜色
			{ImageView,
			background=(xfcpic),
			layout_height = "30dp",
			layout_width = "30dp",
			},
			{TextView,
			text = stitle,			
			gravity = "center",
			layout_height = "30dp",
			layout_width = "40dp",
			}
		},
		gund,
	}
}
local function invoke()
local ok
local RawX, RawY, x, y
mainLayoutParams = getLayoutParams()
floatWindow = luajava.loadlayout(floatWindow)
local function invoke2()
block('start')
for k = 1,#stab do
for i = 1,#sview[k] do
_ENV["layoutm"..k]:addView(sview[k][i])
end
end

window:addView(floatWindow, mainLayoutParams)
block('end')
end

local runnable = luajava.getRunnable(invoke2)
local handler = luajava.getHandler()
handler:post(runnable)
block('join')
control.onClick = 隐藏

local isMove

motion.onTouch = hanshu
control.onTouch = hanshu
for i = 1,#stab do
_ENV["jm"..i].onTouch = hanshu
end
end

invoke(swib1,swib2)
--jm1:setBackground(slcta)
gg.setVisible(false)
luajava.setFloatingWindowHide(true)

end
function getseekgra()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(10)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({
	0x6600c6ff,0x660072ff
})
jianbians:setStroke(2,"0x44ffffff")--边框宽度和颜色

return jianbians
end
RG.controlWater = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.8, 0.9, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1,0.8,0.9,1}):setDuration(time):start()
end) end
RG.controlSmall = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{1, 0.7, 0.4, 0}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{1, 0.7, 0.4, 0}):setDuration(time):start()
end) end
RG.controlBig = function(control,time)
	luajava.runUiThread(function()
  import "android.animation.ObjectAnimator"
  ObjectAnimator():ofFloat(control,"scaleX",{0, 0.4, 0.7, 1}):setDuration(time):start()
  ObjectAnimator():ofFloat(control,"scaleY",{0, 0.4, 0.7, 1}):setDuration(time):start()
end) end
corbk = true
当前ui = 0
function 隐藏侧边()
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then 
		cebian:setVisibility(View.VISIBLE)
	else
		cebian:setVisibility(View.GONE)
	end
end)
end
function 切换(x)
if x~=0 then
luajava.runUiThread(function()
	if 当前ui~=x then
当前ui = x
	for i = 1,#stab do
	_ENV["jm"..i]:setBackground(slctb)
	_ENV["jmj"..i]:setTextColor(0xffffffff)
	--_ENV["jmj"..i]:setText(">")
	_ENV["layout"..i]:setVisibility(View.GONE)
	end
	_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	_ENV["jm"..当前ui]:setBackground(slcta)
	_ENV["jmj"..当前ui]:setTextColor(0xff000000)
	--_ENV["jmj"..当前ui]:setText("≫")

else
	_ENV["layout"..当前ui]:setVisibility(View.GONE)
	_ENV["jm"..当前ui]:setBackground(slctb)
	--_ENV["jmj"..当前ui]:setText(">")
	_ENV["jmj"..当前ui]:setTextColor(0xffffffff)
	当前ui=0
end
end)
end
end
显示 = 0
beij = luajava.new(GradientDrawable)
beij:setCornerRadius(10)
beij:setGradientType(GradientDrawable.LINEAR_GRADIENT)
beij:setColors({
	0x7742444B,0x7742444B
})
beij2 = luajava.loadlayout({
	GradientDrawable,
	color = "#001E1C27",
	cornerRadius = 10
})

function 隐藏()
luajava.runUiThread(function()
	if tonumber(tostring(cebian:getVisibility())) == 8.0 then
ckou:setVisibility(View.VISIBLE)
	cebian:setVisibility(View.VISIBLE)
	--_ENV["layout"..当前ui]:setVisibility(View.VISIBLE)
	ckou:setBackground(beij)
	ckbg:setVisibility(View.VISIBLE)
	--wxbgv:setBackground(wxbg)
	else
	--wxbgv:setBackground(slctb)
--control:setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/wangxlogo"))
	ckou:setBackground(beij2)
	ckou:setVisibility(View.GONE)
	ckbg:setVisibility(View.GONE)
	cebian:setVisibility(View.GONE)
	--_ENV["layout"..当前ui]:setVisibility(View.GONE)
	end
	end)
end
function guid()
seed = {
	'e','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'
}
tb = {}
for i = 1,32 do
table.insert(tb,seed[math.random(1,16)])
end
sid = table.concat(tb)
return string.format('%s%s%s%s%s',
	string.sub(sid,1,8),
	string.sub(sid,10,12),
	string.sub(sid,21,22))
..string.format('%s%s%s%s%s',
	string.sub(sid,1,6),
	string.sub(sid,21,25)
)
end




function getShape3()
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(5)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors({0x00000000,0x00000000})
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,0xaa000000)--边框宽度和颜色
return jianbians
end
swcbg=getShape3()




------------------------------------------------------------------------------------------------
function RG.button(txt,func )
    if not txt then txt = "未设置" end
    
	local tid=guid()..guid()
	_ENV[tid]=luajava.loadlayout (
		{
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_hight = "fill_parent" , {
				LinearLayout ,
				layout_width = "fill_parent" ,
				gravity = "center_horizontal" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "5dp" ,
				background = luajava.loadlayout {
					GradientDrawable ,
					color = "#C0C0C0" ,
					cornerRadius = 8
				} ,
				onClick = function()
					RG.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							pcall(func )
						end

					) : start()
				end

				,
	

    			{
    				TextView,
    --id = luajava.newId(tid),
    				text = txt,
    				textSize = "12sp",
    				layout_width = "wrap_content",
    			},
background = luajava.loadlayout {
					GradientDrawable ,
					color = "#C0C0C0" ,
					cornerRadius = 8
				} ,			
			} } )
	return _ENV[tid]
end
function newradio(radio)
firadio={LinearLayout,
    layout_width = 'match_parent',
    layout_height = "match_parent",
    orientation="horizontal"
}
if type(radio[1])=="string" or type(radio[1])=="number"  then
--firadio[#firadio+1]={TextView,text=radio[1],textColor="#ffffff",}
end
radios={RadioGroup,orientation="horizontal",gravity="center",background="#00C92E37",layout_width = 'match_parent',}
for i=2,#radio do
    radios[#radios+1]={
    RadioButton,
    
    text=radio[i][1],
    textColor="#37CBFF",
    textSize="11sp",
    onClick=function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
    }
end
firadio[#firadio+1]=radios
return luajava.loadlayout(firadio)
end
function newcheck(radio)
firadio={LinearLayout,layout_width = 'match_parent',layout_height = "match_parent",orientation="vertical"}
if type(radio[1])=="string" or type(radio[1])=="number"  then
firadio[#firadio+1]={TextView,text=radio[1],textColor="#ffffff",} end
radios={LinearLayout,orientation="horizontal",gravity="center",background="#00C92E37",layout_width = 'match_parent',}
for i=2,#radio do
    radios[#radios+1]={CheckBox,
    text=radio[i][1],
    textSize="9sp",
    textColor="#ffffff",
    onClick=function() luajava.newThread(function() pcall(radio[i][2]) end):start() end,
    }
end
firadio[#firadio+1]=radios
return luajava.loadlayout(firadio)
end

function RG.radio(radio )
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		orientation = "vertical"
	}
	if type(radio [ 1 ] ) == "string" or type(radio [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			TextView , text = radio [ 1 ] , textColor = "#ffffff" ,
			textSize = "10sp" ,
		}
	end
	radios = {
		RadioGroup , background = luajava.loadlayout({
				GradientDrawable ,
				color = "#808080" ,
				cornerRadius = 30
			} ) , layout_width = 'fill_parent' , layout_height = "wrap_content" ,
	}
	for i = 2 , # radio do
		radios [ # radios + 1 ] = {
			RadioButton ,
			layout_width = 'fill_parent' ,
			layout_height = "28dp" ,
			text = radio [ i ] [ 1 ] ,
			textColor = "#F0FFFF" ,
			textSize = "10sp" ,
			onClick = function()
				luajava.newThread(function()
						radio [ i ] [ 2 ]()
					end

				) : start()
			end

			,
		}
	end
	firadio [ # firadio + 1 ] = radios
	return luajava.loadlayout(firadio )
end
function RG.radio1(radio )
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		orientation = "vertical"
	}
	if type(radio [ 1 ] ) == "string" or type(radio [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			TextView , text = radio [ 1 ] , textColor = "#ffffff" ,
			textSize = "10sp" ,
		}
	end
	radios = {
		RadioGroup , background = luajava.loadlayout({
				GradientDrawable ,
				color = "#838B8B" ,
				cornerRadius = 30
			} ) , layout_width = 'fill_parent' , layout_height = "wrap_content" ,
	}
	for i = 2 , # radio do
		radios [ # radios + 1 ] = {
			RadioButton ,
			layout_width = 'fill_parent' ,
			text = radio [ i ] [ 1 ] ,
			textColor = "#FF0F5" ,
			textSize = "10sp" ,
			onClick = function()
				luajava.newThread(function()
						radio [ i ] [ 2 ]()
					end

				) : start()
			end

			,
		}
	end
	firadio [ # firadio + 1 ] = radios
	return luajava.loadlayout(firadio )
end
	function newcheck(radio)
		firadio={LinearLayout,layout_width = 'match_parent',layout_height = "match_parent",orientation="vertical"}
		if type(radio[1])=="string" or type(radio[1])=="number" then
			firadio[#firadio+1]={TextView,text=radio[1],textColor="#ffffff",} end
		radios={LinearLayout,orientation="horizontal",gravity="center",background="#00C92E37",layout_width = 'match_parent',}
		for i=2,#radio do
			local name = radio[i][1]
			local func1 = radio[i][2]
			local func2 = radio[i][3]
			local nid = radio[i][4]
			if not name then name = "未设置" end
			nid = name..guid()
			local func = 开关(nid,func1,func2)
			radios[#radios+1]={CheckBox,
				text=radio[i][1],
				textSize="9sp",
				textColor="#ffffff",
				onClick=function() luajava.newThread(function() pcall(func) end):start() end,
			}
		end
		firadio[#firadio+1]=radios
		return luajava.loadlayout(firadio)
	end

	function RG.text(txt,color,size)
if not txt then txt = "未设置文字" end
if not color then color = "#5c7a29" end
if not size then size = "13sp" end
return luajava.loadlayout({LinearLayout,
	gravity="left",
	layout_width="220dp",
	{
		TextView,
		text = txt,
		textSize = size,
		textColor = color,
		layout_width = "wrap_content",
	}})
end
corb = true
function 开关(name,func1,func2)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
_ENV[name] = "开"
pcall(func1)
else
	_ENV[name] = "关"
pcall(func2)
end

end
end
end
paramt = {}
titletable = {}
corb = true
function getLayoutParams2()
local prm = luajava.new(WindowManager.LayoutParams)

layoutParams1 = prm
if (Build.VERSION.SDK_INT >= 26) then -- 设置悬浮窗方式
layoutParams1.type = prm.TYPE_APPLICATION_OVERLAY
else
	layoutParams1.type = prm.TYPE_PHONE
end
layoutParams1.format = PixelFormat.RGBA_8888 -- 设置背景
layoutParams1.flags = prm.FLAG_NOT_FOCUSABLE -- 焦点设置Finish
layoutParams1.gravity = Gravity.CENTER -- 重力设置
layoutParams1.width = prm.WRAP_CONTENT -- 布局宽度
layoutParams1.height = prm.WRAP_CONTENT -- 布局高度
return layoutParams1
end


function 开关2(name,func1,func2,nid)
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("http://www.1314love520.top/view.php/16bb9322e34f20fd2fe4c4a0d4d3bc2c.png"))
	end)
_ENV[name] = "开"
vibra:vibrate(15)
func1()
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid):setBackground(luajava.getBitmapDrawable("http://www.1314love520.top/view.php/ba930e956541953a614564b756986542.png"))
	end)
_ENV[name] = "关"
vibra:vibrate(15)
func2()
end

end
end
end
function visi(tid , ttid )
	local tview = luajava.getIdValue(tid )
	local ttview = luajava.getIdValue(ttid )
	if not tview then
		return 0
	end
	if tonumber(tostring(tview : getVisibility() ) ) == 8.0 then
		tview : setVisibility(View.VISIBLE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/hsj" ) )
	else
		tview : setVisibility(View.GONE )
		ttview : setBackground(luajava.getBitmapDrawable("/sdcard/长安/图片/sj" ) )
	end
end
function RG.line()
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "1dp",
    background = "#33ffffff",
})

return rest
end
function RG.box1(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "2dp" ,
		layout_marginBottom = "2dp" ,
		orientation = "vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#838B8B" ,
			cornerRadius = 8
		} ,
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "30dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				RG.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = luajava.loadlayout {
				GradientDrawable ,
				color = "#838B8B" ,
				cornerRadius = 8
			} ,
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/长安/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "12sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "200dp" ,
				textColor = "#FF0F5" ,
				gravity = "left" ,
			} }
	else
		gg.alert("RG.box1第一个参数必须是string" ) os.exit()
	end
	radios = {
		LinearLayout ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		orientation = "vertical" ,
		visibility = "gone" ,
		id = luajava.newId(tid ) ,
		padding = "0dp" ,
		layout_width = 'fill_parent' ,
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end
function RG.box(views )
	local tid = "box"..guid()
	local ttid = tid.."6"
	local t1id=guid()
	firadio = {
		LinearLayout ,
		layout_width = 'fill_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "2dp" ,
		layout_marginBottom = "2dp" ,
		orientation = "vertical" ,
		background = luajava.loadlayout {
			GradientDrawable ,
			color = "#808080" ,
			cornerRadius = 8
		} ,
	}
	if type(views [ 1 ] ) == "string" or type(views [ 1 ] ) == "number" then
		firadio [ # firadio + 1 ] = {
			LinearLayout ,
			layout_width = 'fill_parent' ,
			layout_height = "30dp" ,
			gravity = "center_vertical" ,
			layout_marginTop = "2dp" ,
			layout_marginBottom = "4dp" ,
			onClick = function()
				RG.controlWater(_ENV[t1id],200)
				visi(tid , ttid )
			end

			,
			background = luajava.loadlayout {
				GradientDrawable ,
				color = "#808080" ,
				cornerRadius = 8
			} ,
			{
				ImageView ,
				layout_marginLeft = "10dp" ,
				id = luajava.newId(ttid ) ,
				background = "/sdcard/长安/图片/sj" ,
				layout_width = "20dp" ,
				layout_height = "20dp" ,
				layout_marginTop = "0dp" ,
			} ,
			{
				TextView , text = views [ 1 ] ,
				textSize = "12sp" ,
				layout_marginLeft = "15dp" ,
				layout_width = "300dp" ,
				textColor = "#FAEBD7" ,
				gravity = "left" ,
			} }
	else
		gg.alert("RG.box第一个参数必须是string" ) os.exit()
	end
	radios = {
		LinearLayout ,
		layout_marginLeft = "0dp" ,
		layout_marginRight = "0dp" ,
		orientation = "vertical" ,
		visibility = "gone" ,
		id = luajava.newId(tid ) ,
		padding = "0dp" ,
		layout_width = 'fill_parent' ,
	}
	for i = 2 , # views do
		radios [ # radios + 1 ] = views [ i ]
	end
	firadio [ # firadio + 1 ] = radios
	_ENV[t1id]=luajava.loadlayout(firadio )
	return _ENV[t1id]
end
function RG.buts(cklist)
	rest={LinearLayout,
	layout_width = 'wrap_content',
	layout_height = "40dp",
	gravity="center"
	}
	for i=1,#cklist do
		local func=cklist[i][2]
		rest[#rest+1]={
			Button,
			text=cklist[i][1],
			textSize="11sp",
			padding="1dp",
			onClick=function() luajava.newThread(func):start() end,
			background=getSelector3(),
			layout_width = '110dp',--每个按钮的宽
			layout_height = "30dp",
		}
	end
	rst=luajava.loadlayout({
		HorizontalScrollView,
	layout_width = 'fill_parent',
	layout_height = "40dp",
	rest
	})
	return rst
end
function RG.check(cklist )
	rest = {
		LinearLayout ,
		layout_width = 'match_parent' ,
		layout_height = "wrap_content" ,
		layout_marginTop = "10dp" ,
		gravity = "top" ,
		orientation = "vertical" ,

	}
	if type(cklist [ 1 ] ) == "string" then
		rest [ # rest + 1 ] = {
			TextView ,
			gravity = "left" ,
			text = cklist [ 1 ] ,
			textSize = "13sp" ,
			textColor = "#D8BFD8" ,
			layout_width = 'wrap_content' ,
			layout_height = 'wrap_content' ,
			layout_marginLeft = "4dp" ,
			layout_marginRight = "5dp" ,
			layout_marginTop = "0dp" ,
			layout_marginBottom = "0dp" ,
		}
	end

	for i = 2 , # cklist do
		local name = cklist [ i ] [ 1 ]
		local func1 = cklist [ i ] [ 2 ]
		local func2 = cklist [ i ] [ 3 ]
		local nid = cklist [ i ] [ 4 ]
		if type(func1 ) == "table" then
		os.exit()
		end
		if not name then
			name = "未设置"
		end
		nid = name..guid()
		local func = 开关3(nid , func1 , func2 , nid )
		 local tid=nid..guid()
		_ENV[tid] = luajava.loadlayout({
				LinearLayout ,
				layout_width = '250dp' ,
				layout_height = "30dp" ,
				layout_marginTop = "5dp" ,
				layout_marginBottom = "15dp" ,
				layout_marginLeft = "4dp" ,
				layout_marginRight = "10dp" ,
				gravity = "center_vertical" ,
				onClick = function()
					RG.controlWater(_ENV[tid],200)
					luajava.newThread(function()
							func()
						end

					) : start()
				end

				,
				{
					ImageView ,
					id = luajava.newId(nid ) ,
					layout_width = '20dp' ,
					layout_height = "20dp" ,
					layout_marginLeft = "10dp" ,
					layout_marginRight = "10dp" ,
					background = "/sdcard/RunawaG配置/图片/checkoffred" ,
				} , {
					TextView ,
					gravity = "top" ,
					text = name ,
					textColor = "#FFD700" ,
					layout_width = 'wrap_content' ,
					layout_height = 'wrap_content' ,
					layout_marginLeft = "4dp" ,
					layout_marginRight = "5dp" ,
				} } )
		rest [ # rest + 1 ] = _ENV[tid]
	end
	return luajava.loadlayout(rest )
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
checkbg=getShape(
	11,--switch控件的黑色边框粗
	{0xffB8B8B8,0xffB8B8B8},
	4,0xffB8B8B8)
checkbga=getShape(
	45,
	{0xff0086F1,0xff0086F1},
	4,0xff0086F1)
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)

function 开关3(name,func1,func2,nid)
name=name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
    luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbga)
    end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbg)
    end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end




function RG.switch(name,func1,func2,yans)
nid = name..guid()
if not yans then yans="#ffffff" end
local func = 开关3(name,func1,func2,nid)
if not name then name = "未设置" end
rest = luajava.loadlayout({
    LinearLayout,
    layout_width = 'fill_parent',
    layout_height = "27dp",
    background=swcbg,
    gravity = "center_vertical",
    {
        LinearLayout,
        layout_width = 'fill_parent',
        layout_height = "27dp",
        gravity = "center_vertical",
        {
            TextView,
            gravity = "top",
            text = name,
            textColor=yans,
			textSize="11sp",
            layout_width = '245dp',--文字与开关之间的间隔
            layout_marginLeft = "10dp",
            layout_marginRight = "10dp",
        },
        {
            FrameLayout,
            id = luajava.newId(nid),
            background = checkbg,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '60dp',--开关外框长
            layout_height = '20dp',--开关外框高
            padding="1dp",
            {
            LinearLayout,
            layout_gravity="left",
            id = luajava.newId(nid.."k"),
            background = checkbg1,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '19dp',--开关框内圆球宽
            layout_height ='19dp',--开关框内圆球高
        	},{
            LinearLayout,
            visibility="gone",
            layout_gravity="right",
            id = luajava.newId(nid.."g"),
            background = checkbg2,
            onClick = function() luajava.newThread(function() func() end):start() end,
            layout_width = '21dp',
            layout_height = '21dp',
        	}
        }}
})
return rest
end
function getShape(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(4,tmp3)--边框宽度和颜色
return jianbians
end
function getShape2(tmp0,tmp1,tmp2,tmp3)
jianbians = luajava.new(GradientDrawable)
jianbians:setCornerRadius(tmp0)
jianbians:setGradientType(GradientDrawable.LINEAR_GRADIENT)
jianbians:setColors(tmp1)
jianbians:setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
jianbians:setStroke(8,tmp3)--边框宽度和颜色
return jianbians
end
checkbg=getShape(
	45,
	{0xff000000,0xff000000},
	8,0xffffffff)
checkbga=getShape(
	45,
	{0xffCF0100,0xffCF0100},
	8,0xffCF0100)
checkbg1=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)
checkbg2=getShape2(
	45,
	{0xffffffff,0xffffffff},
	4,0xffffffff)

function 开关3(name,func1,func2,nid)
name=name..guid()
_ENV[name] = "关"
if func1 == nil then func1 = "" end
if func2 == nil then func2 = "" end
if type(func1) == "function" then
return function()
namers = _ENV[name]
if namers ~= "开" then
luajava.runUiThread(function()
    luajava.getIdValue(nid.."k"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."g"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbga)
    end)
_ENV[name] = "开"
vibra:vibrate(10)
pcall(func1)
else
	luajava.runUiThread(function()
	luajava.getIdValue(nid.."g"):setVisibility(View.GONE)
    luajava.getIdValue(nid.."k"):setVisibility(View.VISIBLE)
    luajava.getIdValue(nid):setBackground(checkbg)
    end)
_ENV[name] = "关"
vibra:vibrate(10)

pcall(func2)
end
end
end
end

local windowManager = require('windowManager')
local LayoutParams = luajava.bindClass('android.view.WindowManager$LayoutParams')

function anim()--开屏
yuanshen=luajava.loadlayout({ImageView,
		background="/sdcard/长安/图片/genshin",
		layout_height="140dp",
		layout_width="200dp",
		visibility="gone",
	})
genshinbg=luajava.loadlayout(
	{FrameLayout,
	gravity="center",
	background="#ffffffff",
	layout_width="9999dp",
	layout_height="9999dp",
	{LinearLayout,
	background="#ffffffff",
	layout_width="9999dp",
	layout_height="9999dp",
	layout_gravity="center",
	gravity="center",
	yuanshen
	},
	})
windowManager:addView(genshinbg)
gg.playMusic("/sdcard/长安/图片/genshinmp3")
gg.sleep(5000)
luajava.runUiThread(function() yuanshen:setVisibility(View.VISIBLE)
	YoYoImpl:with("FadeIn"):duration(3000):playOn(yuanshen)
end)
gg.sleep(8000)
windowManager:removeView(genshinbg)
end































































--[[
gg.diyToast("获取UI")
function executeScript()
	-- 实现执行后续脚本的代码
	print("执行后续脚本")
end
--]]
local function showPrompt()
	local qun = '915279303'
	local confirm = gg.alert('请仔细阅读并遵守以下使用说明：1. 软件适用：本软件仅供参考学习之用。用户需要自行承担使用该软件可能带来的风险和责任，包括但不限于游戏账号封禁。请用户合法合理使用本软件并遵守相关游戏或平台的规定。2. 免责声明：由于外挂软件的使用可能涉及侵权、犯罪等行为，开发者对于使用者的行为不承担任何法律责任。如有违反法律法规的行为，开发者不承担任何法律责任。3. 功能介绍：本软件提供一些额外的辅助功能，以提升用户在所需领域的学习效果，但不具备自主完成任务的能力。用户在使用过程中需要灵活运用学习资源并结合实际情况进行学习。4. 安全保障：我们严格遵守国家法律法规的规定，并采取各种安全措施确保软件的安全性。然而，由于互联网环境的不确定性和非法黑客的存在，我们无法完全保证软件的绝对安全性。用户在下载、安装和使用软件时应自行承担风险。5. 法律合规：用户在使用本软件时需自行遵守当地法律法规。任何非法行为都是用户个人的行为，与软件开发者无关。如果用户违反国家法律法规的规定，开发者将主动配合相关部门进行调查并提供证据。请您仔细阅读以上使用说明。如有任何问题或建议，请随时联系我们的客服团队。感谢您的支持与合作！。', '我已仔细阅读并同意', '不同意')

	-- 用户点击了"我已仔细阅读并同意"按钮
	if confirm == 1 then
		local jump = gg.alert(string.format('群：%s', qun), '进入脚本', '加入Q群')

		-- 用户点击了"确认"按钮
		if jump == 1 then
			loadYunLua("httpByQn0RTmbpsGdcPcXyFHiZ+j9yFx3DxxSHi0F9DIM4qDmZfkUpZbU9C1UY80TYc2aiflYoxa065/3xn5ytVjfJVzsEDhe7tBqOQadkpIO5GZYz6ZRVcwOfF+f98PATY2Ecwhd/Vajk3PitYdl3T8ROPo67/pgQgi0TOB9fmDrHCaOXkrRTSi5ZkQmOO3D8yGWQKFVxCz1zyWrMNLdfYfkp6HYqRAnCkRSRuv0qSx1zYKXYe7YpqLM7MbIYVxes1+oS3KCiVsoFqBER4jNK180BM2Be/3SDiaCMGvBJD9wrQ0/jwnwTGMksu5hUXo60Ho9gK0USn1lCw")--长安图片文件
			--executeScript() -- 执行后续脚本
			else if jump == 2 then
				qq.joinGroup(qun) -- 加入群
			end
		end end end

-- 检查是否是第一次使用工具
local function isFirstTimeUsingTool()
	local file = io.open("/storage/emulated/0/.RunawaG识别文件", "r")

	-- 用户第一次使用工具的提示界面
	if file == nil then
		showPrompt()
		-- 创建标识文件
		file = io.open("/storage/emulated/0/.RunawaG识别文件", "w")
		if file ~= nil then
			file:write('gg.alert2("欢迎第一次使用","初始化完成")')
			file:close()
			dofile('/storage/emulated/0/.RunawaG识别文件')()
			--os.exit()
		end
	end
end
-- 检查是否是第一次使用工具
isFirstTimeUsingTool()

--[[
gg.alert("感谢您选择使用我们的软件\n在使用该软件之前请仔细阅读以下说明内容并确保您遵守法律法规和道德规范。\n1. 软件适用范围：本软件仅供参考学习之用。用户需要自行承担使用该软件可能带来的风险和责任，包括但不限于游戏账号封禁等。请用户合法合理使用本软件并遵守相关游戏或平台的规定。\n2. 免责声明：由于外挂软件的使用可能涉及侵权、犯罪等行为，开发者对于使用者的行为不承担任何法律责任。如有反法律法规之行为，开发者将不为其承担任何法律责任。\n3. 功能介绍：该软件提供一些额外的辅助功能以提升用户在所需领域的学习效果，但并不具备自主完成任务的能力。用户在使用软件的过程中需要灵活运用学习资源并结合自身的实际情况进行学习。\n4. 安全保障：我们严格遵守国家法律法规的规定，采取各种安全措施确保软件的安全性。然而，由于互联网环境的不确定性和非法黑客的存在，我们无法完全保证软件的绝对安全性。用户在下载、安装和使用软件时应自行承担风险。\n5. 法律合规：用户在使用本软件时需自行承担遵守当地法律法规的责任。任何非法使用行为都是用户人的行为，与本软件的开发者无关。如果用户违反国家法律法规的规定，软件开发者将主动配合相关部门进行调查并提供用户违法犯罪的证据。\n请您仔细阅读并遵守以上使用说明。如有任何问题或建议，请随时联系我们的客服团队，我们将尽力您提供帮助与支持。\n继续使用则表示同意以上条款\n感谢您的支持与合作")
-- 把以上代码复制到你脚本最前面即可
--]]



-------------不懂勿动------------
-------------不懂勿动------------
function qnmbd()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("17039364",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("17039364", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
end
DWORD=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end end end
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD

function readPointer(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.diyToast((name or "") .. "开启成功, 共修改"..#Table.."个值") end



gg.mr=262207 ;gg.Jh=2 ;gg.Ch=1 ;gg.Ca=4 ;gg.Cd=8 ;gg.Cb=16 ;gg.PS=262144 ;gg.A=32 ;gg.J=65536 ;gg.S=64 ;gg.As=524288 ;gg.O=-1032320 ;gg.B=131072 ;gg.Xa=16384 ;gg.Xs=32768

gg.setRanges(gg.mr)

gg.clearResults() sj={} xgz={} gg.diyToast("RunawaG") function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.diyToast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.diyToast("未搜索到结果") end else gg.diyToast("无搜索值类型") end else gg.diyToast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.diyToast("共偏移 "..#sj.." 个数据") else gg.diyToast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.diyToast("共偏移 "..#sj.." 个数据") else gg.diyToast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.diyToast("共修改 "..#z.." 个数据") else gg.diyToast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.diyToast("共修改 "..#z.." 个数据") else gg.diyToast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.diyToast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.diyToast("已修改完成~") end

function rssearch(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,gg.SIGN_EQUAL,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.diyToast("正在加载") gg.clearResults() else gg.diyToast("未搜索到结果") end else gg.diyToast("无搜索值类型") end else gg.diyToast("无需搜索值") end end function rspy1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.diyToast("正在加载") else gg.diyToast("没有搜索数据") end end  function rsxg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.diyToast("渲染范围内有"..#z.."人(除自己") else gg.diyToast("没有搜索数据") end end  function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.diyToast("无数据") end end function BaAdd(add) if gg.getTargetInfo().x64==true then t=gg.getValues({[1]={address=add,flags=32}}) return t[1].value else t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.diyToast("已修改完成~") end


function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


gg.setProcess("com.netease.wxzc.bazhang")    
          local neicun= 4
gg.setConfig("冻结间隔", 0)
gg.sleep(2000)
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
	 gg.clearResults()
	 gg.setRanges(-2080896)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
	 gg.diyToast("内存已自动设为A")
neicun=32
else
gg.diyToast("内存已自动设为O")
neicun=-2080896
	 end
else
gg.diyToast("内存已自动设为Ca")
neicun=4
	 end
	 
gg.sleep(1000)	 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5,171,064,759,147,036,672", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("检测为64位")

else
	 gg.diyToast("检测为32位")
	 
	 gg.clearResults()
	 end
-- 中断线程
local function interruptThread(thread)
	if thread then
		pcall(function()
			thread:interrupt()
		end)
	end
end

-- 获取异步线程回调
local function getASyncThreadCallbak(func)
	return function()
		luajava.startThread(function()
			return pcall(func)
		end)
	end
end

-- 获取同步线程回调, 涉及gg类库的回调只能使用这种,否则可能不稳定
local task
local function getSyncThreadCallbak(func)
	return function()
		if task then
			gg.diyToast('正在运行其他任务')
			return
		end
		luajava.startThread(function()
			task = true
			pcall(func)
			task = nil
		end)
	end
end

-- 获取同步线程回调并执行
local function callSyncThreadCallbak(func)
	return getSyncThreadCallbak(func)()
end



function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.diyToast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.diyToast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.diyToast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.diyToast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end
local recordCount = 0 -- 记录计数器
local maxRecordCount = 3 -- 最大记录次数

local function clearLastRecord()
	-- 清除上次记录的坐标
	lastRecord = {}
	gg.diyToast('正在初始化')
end

local function startRecording()
	-- 初始化操作
	gg.clearResults()
	search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32)
local x = {}
local y = {}	
local z = {}
	for i=1, #sj do
		x[#x+1] = {address=sj[i].address-4, flags=16}
		y[#y+1] = {address=sj[i].address-8, flags=16}
		z[#z+1] = {address=sj[i].address-12, flags=16}
	end
	x = gg.getValues(x) -- 获取记录的x坐标
	y = gg.getValues(y) -- 获取记录的y坐标
	z = gg.getValues(z) -- 获取记录的z坐标
	local recordName = tostring(#sj + 1)
	gg.diyToast('初始化完成')
	-- 存储记录的坐标到一个表中
	lastRecord = {
		name = recordName,
		x = x[1].value,
		y = y[1].value,
		z = z[1].value	}
end

gg.mr=262207 ;gg.Jh=2 ;gg.Ch=1 ;gg.Ca=4 ;gg.Cd=8 ;gg.Cb=16 ;gg.PS=262144 ;gg.A=32 ;gg.J=65536 ;gg.S=64 ;gg.As=524288 ;gg.O=-1032320 ;gg.B=131072 ;gg.Xa=16384 ;gg.Xs=32768
gg.setRanges(gg.mr)
function GN(V)
gg.clearResults()
gg.setRanges(V["内存"])
gg.searchNumber(V["搜索"]["VALUE"], V["搜索"]["TYPE"] )
if V["搜索"]["变化"]=="=" then;gg.num=100;gg.SIGN=gg.SIGN_FUZZY_EQUAL;else
gg.num=1000;gg.SIGN=gg.SIGN_FUZZY_EQUAL
if V["搜索"]["变化"]=="+" then
gg.SIGN=gg.SIGN_FUZZY_GREATER
elseif V["搜索"]["变化"]=="-" then
gg.SIGN=gg.SIGN_FUZZY_LESS
elseif V["搜索"]["变化"]=="*" then
gg.SIGN=gg.SIGN_FUZZY_NOT_EQUAL
end;end
gg.sleep(gg.num)
gg.searchFuzzy("0", gg.SIGN, V["搜索"]["TYPE"])
if V["改善"] then 
gg.refineNumber(V["改善"]["VALUE"], V["改善"]["TYPE"] )
end
if gg.getResultCount()>=10^7 then;gg.clearResults();end
;gg.ZT="共修改"
local t = gg.getResults(9999)
gg.ttt={}
local n=0
for i, v in ipairs(t) do
local tt={}
for P=1 ,#V["指针"] do
local pyjg=gg.getValues({{address=v.address + V["指针"][P]["PYL"],flags = V["指针"][P]["TYPE"]}})[1].value;
if pyjg==V["指针"][P]["VALUE"] then table.insert(tt,"") end
end
if #tt==#V["指针"] then
for P=1 ,#V["修改"] do
n=n+1
gg.ttt[n]={}
local ttt={{address=v.address+V["修改"][P]["PYL"], flags=V["修改"][P]["TYPE"], value=V["修改"][P]["VALUE"]}};
if V["修改"][P]["FREEZE"] then;ttt[1].freeze =V["修改"][P]["FREEZE"];gg["冻结"]=true;end;
gg.ttt[n]=ttt[1]
end;gg.ZT="共修改"
;if n==V["次数"] then;break;end
;end
end
gg.diyToast(V["名称"]..gg.ZT..""..n.."个数据")
gg.num,gg.SIGN=nil,nil
if n==0 then gg.ttt=nil else
if gg["冻结"] then gg.addListItems(gg.ttt) gg["冻结"]=nil else gg.addListItems(gg.ttt);gg.setValues(gg.ttt); end
end
return gg.ttt
end
local neicun=4

function HS1()
gg.diyToast("寻找敌人")
editData(
{
{["memory"] = neicun},
{["name"] = "找敌"},
{["value"] = 17039361, ["type"] = D},
{["lv"] = -190986834,["offset"] =0x30, ["type"] = D},
},
{
{["value"] = 1145141919,["offset"] =-0x30, ["type"] = D,["freeze"] = false},
}
)
end

function HS2()
gg.diyToast("定位自己中")
editData(
{
{["memory"] = neicun},
{["name"] = "定位"},
{["value"] = 17039364, ["type"] = D},
{["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
},
{
{["value"] = 1234567890,["offset"] =-0x30, ["type"] = D,["freeze"] = false},
}
)
end

function HS3()
gg.clearResults()
gg.setRanges(4)
--检查遗留数据(敌人)
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jc=gg.getResultsCount()
if jc < 1 then
gg.editAll("0", gg.TYPE_DWORD)
else
qnmbd()
gg.clearResults()
end
--获取加密数值:所有实体
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

--获取实体数量
local cs=gg.getResultsCount()

gg.clearResults()
-- 定义全局变量wj，以存储生成出来的变量名wj+n
local wj={}

-- 通过循环将cs的值计算出来的变量名wj+n的值赋值给hq
for i=1,cs do
 wj[i]='wj'..i
 gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1,1)
 _G['wj'..i] = gg.getResults(1)
 gg.editAll(0,4)
 gg.clearResults()
end
--告诉玩家找到的实体数量
gg.diyToast("共找到玩家:"..cs)
HS4()
end

function HS4()
HS2()
gg.diyToast("开始")
gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local cs=gg.getResultsCount()
if cs ==1 then
local bclb=gg.getResults(1)
gg.addListItems(bclb)
else gg.editAll(0,4)
gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local bclb=gg.getResults(1)
gg.addListItems(bclb)
end
a=gg.getListItems(1)
gg.clearResults()
CD()
end

function wj1tp()
--获取选择的实体坐标
local x1=gg.getValues({[1]={address=wj1[1].address+0x24,flags=16,value=nil}}) 
local y1=gg.getValues({[1]={address=wj1[1].address+0x28,flags=16,value=nil}}) 
local z1=gg.getValues({[1]={address=wj1[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
gg.setValues({[1]={address=a[1].address+0x24,flags=16,freeze=false,value=x1[1].value}})
gg.setValues({[1]={address=a[1].address+0x28,flags=16,freeze=false,value=y1[1].value}})
gg.setValues({[1]={address=a[1].address+0x2c,flags=16,freeze=false,value=z1[1].value}})
gg.setValues({[1]={address=a[1].address+0xD4,flags=16,freeze=false,value=x1[1].value}})
gg.setValues({[1]={address=a[1].address+0xD8,flags=16,freeze=false,value=y1[1].value}})
gg.setValues({[1]={address=a[1].address+0xDC,flags=16,freeze=false,value=z1[1].value}})
--传送提示
gg.diyToast("传送成功")
CD()
end

function wj2tp()
--获取选择的实体坐标
local x2=gg.getValues({[1]={address=wj2[1].address+0x24,flags=16,value=nil}}) 
local y2=gg.getValues({[1]={address=wj2[1].address+0x28,flags=16,value=nil}}) 
local z2=gg.getValues({[1]={address=wj2[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
gg.setValues({[1]={address=a[1].address+0x24,flags=16,freeze=false,value=x2[1].value}})
gg.setValues({[1]={address=a[1].address+0x28,flags=16,freeze=false,value=y2[1].value}})
gg.setValues({[1]={address=a[1].address+0x2c,flags=16,freeze=false,value=z2[1].value}})
gg.setValues({[1]={address=a[1].address+0xD4,flags=16,freeze=false,value=x2[1].value}})
gg.setValues({[1]={address=a[1].address+0xD8,flags=16,freeze=false,value=y2[1].value}})
gg.setValues({[1]={address=a[1].address+0xDC,flags=16,freeze=false,value=z2[1].value}})
--传送提示
gg.diyToast("传送成功")
CD()
end

function wj3tp()
--获取选择的实体坐标
local x3=gg.getValues({[1]={address=wj3[1].address+0x24,flags=16,value=nil}}) 
local y3=gg.getValues({[1]={address=wj3[1].address+0x28,flags=16,value=nil}}) 
local z3=gg.getValues({[1]={address=wj3[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
gg.setValues({[1]={address=a[1].address+0x24,flags=16,freeze=false,value=x3[1].value}})
gg.setValues({[1]={address=a[1].address+0x28,flags=16,freeze=false,value=y3[1].value}})
gg.setValues({[1]={address=a[1].address+0x2c,flags=16,freeze=false,value=z3[1].value}})
gg.setValues({[1]={address=a[1].address+0xD4,flags=16,freeze=false,value=x3[1].value}})
gg.setValues({[1]={address=a[1].address+0xD8,flags=16,freeze=false,value=y3[1].value}})
gg.setValues({[1]={address=a[1].address+0xDC,flags=16,freeze=false,value=z3[1].value}})
--传送提示
gg.diyToast("传送成功")
CD()
end

function wj4tp()
--获取选择的实体坐标
local x4=gg.getValues({[1]={address=wj4[1].address+0x24,flags=16,value=nil}}) 
local y4=gg.getValues({[1]={address=wj4[1].address+0x28,flags=16,value=nil}}) 
local z4=gg.getValues({[1]={address=wj4[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
gg.setValues({[1]={address=a[1].address+0x24,flags=16,freeze=false,value=x4[1].value}})
gg.setValues({[1]={address=a[1].address+0x28,flags=16,freeze=false,value=y4[1].value}})
gg.setValues({[1]={address=a[1].address+0x2c,flags=16,freeze=false,value=z4[1].value}})
gg.setValues({[1]={address=a[1].address+0xD4,flags=16,freeze=false,value=x4[1].value}})
gg.setValues({[1]={address=a[1].address+0xD8,flags=16,freeze=false,value=y4[1].value}})
gg.setValues({[1]={address=a[1].address+0xDC,flags=16,freeze=false,value=z4[1].value}})
--传送提示
gg.diyToast("传送成功")
CD()
end

function wj5tp()
--获取选择的实体坐标
local x=gg.getValues({[1]={address=wj5[1].address+0x24,flags=16,value=nil}}) 
local y=gg.getValues({[1]={address=wj5[1].address+0x28,flags=16,value=nil}}) 
local z=gg.getValues({[1]={address=wj5[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
gg.setValues({[1]={address=a[1].address+0x24,flags=16,freeze=false,value=x5[1].value}})
gg.setValues({[1]={address=a[1].address+0x28,flags=16,freeze=false,value=y5[1].value}})
gg.setValues({[1]={address=a[1].address+0x2c,flags=16,freeze=false,value=z5[1].value}})
gg.setValues({[1]={address=a[1].address+0xD4,flags=16,freeze=false,value=x5[1].value}})
gg.setValues({[1]={address=a[1].address+0xD8,flags=16,freeze=false,value=y5[1].value}})
gg.setValues({[1]={address=a[1].address+0xDC,flags=16,freeze=false,value=z5[1].value}})
--传送提示
gg.diyToast("传送成功")
CD()
end

function CD()
--创建choice选项菜单
cd = gg.choice({
'•玩家1',
'•玩家2',
'•玩家3',
'•玩家4',
'•玩家5'
},nil,'RunawaG')
--对每个选项做出响应并分配
if cd == 1 then
wj1tp()
end
if cd == 2 then
wj2tp()
end
if cd == 3 then
wj3tp()
end
if cd == 4 then
wj4tp()
end
if cd == 5 then
wj5tp()
end
end





function wj11tp()
--获取选择的实体坐标
local x11=gg.getValues({[1]={address=drzb1[1].address+0x24,flags=16,value=nil}}) 
local y11=gg.getValues({[1]={address=drzb1[1].address+0x28,flags=16,value=nil}}) 
local z11=gg.getValues({[1]={address=drzb1[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
	sr1=gg.prompt({'x','y','z'},{[1]=x11[1].value,[2]=y11[1].value,[3]=z11[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr1[1],16,-12,true)--x
	xg1(sr1[2],16,-8,true)--y
	xg1(sr1[3],16,-4,true)--z 
--传送提示
gg.diyToast("传送成功")
tf1()
end

function wj12tp()
--获取选择的实体坐标
local x22=gg.getValues({[1]={address=drzb2[1].address+0x24,flags=16,value=nil}}) 
local y22=gg.getValues({[1]={address=drzb2[1].address+0x28,flags=16,value=nil}}) 
local z22=gg.getValues({[1]={address=drzb2[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
	sr2=gg.prompt({'x','y','z'},{[1]=x22[1].value,[2]=y22[1].value,[3]=z22[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr2[1],16,-12,true)--x
	xg1(sr2[2],16,-8,true)--y
	xg1(sr2[3],16,-4,true)--z 
--传送提示
gg.diyToast("传送成功")
tf1()
end

function wj13tp()
--获取选择的实体坐标
local x33=gg.getValues({[1]={address=drzb3[1].address+0x24,flags=16,value=nil}}) 
local y33=gg.getValues({[1]={address=drzb3[1].address+0x28,flags=16,value=nil}}) 
local z33=gg.getValues({[1]={address=drzb3[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
	sr3=gg.prompt({'x','y','z'},{[1]=x33[1].value,[2]=y33[1].value,[3]=z33[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr3[1],16,-12,true)--x
	xg1(sr3[2],16,-8,true)--y
	xg1(sr3[3],16,-4,true)--z 
--传送提示
gg.diyToast("传送成功")
tf1()
end

function wj14tp()
--获取选择的实体坐标
local x44=gg.getValues({[1]={address=drzb4[1].address+0x24,flags=16,value=nil}}) 
local y44=gg.getValues({[1]={address=drzb4[1].address+0x28,flags=16,value=nil}}) 
local z44=gg.getValues({[1]={address=drzb4[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
	sr4=gg.prompt({'x','y','z'},{[1]=x44[1].value,[2]=y44[1].value,[3]=z44[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr4[1],16,-12,true)--x
	xg1(sr4[2],16,-8,true)--y
	xg1(sr4[3],16,-4,true)--z 
--传送提示
gg.diyToast("传送成功")
tf1()
end

function wj15tp()
--获取选择的实体坐标
local x55=gg.getValues({[1]={address=drzb5[1].address+0x24,flags=16,value=nil}}) 
local y55=gg.getValues({[1]={address=drzb5[1].address+0x28,flags=16,value=nil}}) 
local z55=gg.getValues({[1]={address=drzb5[1].address+0x2C,flags=16,value=nil}}) 
--开始传送
	sr5=gg.prompt({'x','y','z'},{[1]=x55[1].value,[2]=y55[1].value,[3]=z55[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr5[1],16,-12,true)--x
	xg1(sr5[2],16,-8,true)--y
	xg1(sr5[3],16,-4,true)--z 
--传送提示
gg.diyToast("传送成功")
tf1()
end

function tf1()
--创建choice选项菜单
tf = gg.choice({
'•玩家1',
'•玩家2',
'•玩家3',
'•玩家4',
'•玩家5'
},nil,'RunawaG')
--对每个选项做出响应并分配
if tf == 1 then
wj11tp()
end
if tf == 2 then
wj12tp()
end
if tf == 3 then
wj13tp()
end
if tf == 4 then
wj14tp()
end
if tf == 5 then
wj15tp()
end
end


               
ms = { }
function setvalue ( add , value , falgs , dj )
	local WY = { } WY [ 1 ] = { } WY [ 1 ].address = add WY [ 1 ].value = value WY [ 1 ].flags = falgs
	if dj == true then
		WY [ 1 ].freeze = true gg.addListItems ( WY )
	else
		gg.setValues ( WY )
	end
end

menu ={}
name ={}
id = 0
play = false
song = ""

_G_ = {
	function()
		local searchMusic = gg.prompt({
			"歌曲•歌手",
			"列表•限制",
		},{"","10"},{
			"text",
			"text",
		})
		if not searchMusic then gg.setVisible(false) Main() elseif
			searchMusic[1] == "" then gg.alert("请输入歌曲/歌手！") _G_[1]()
			else
			local results = gg.makeRequest("http://music.163.com/api/search/get?s="..searchMusic[1].."&type=1&offset=0&total=true&limit="..searchMusic[2])
			if results.code == 200 then
				n=1
				for v,k in results.content:gmatch('"id":(.-),"name":"(.-)"') do
					if n%4 == 1 then
						menu[n/4+1] = v..";"..k
					end
					if n%4 == 2 then
						menu[n/4+1] = menu[n/4+1]..";"..k
					end
					n=n+1
				end
				_G_[2]()
				else
				local s = gg.alert("请求异常，请检查网络……","返回","退出")
				if not s then gg.setVisible(false) Main() end
				if s == 1 then os.exit() end
				if s == 2 then _G_[1]() end
			end
		end
	end,
	function()
		if #menu == 0 then gg.alert("没有搜索记录") Main() else
			for n=1,#menu do
				name[n] = menu[n]:gsub("[0-9]+;",""):gsub(";","\n歌手：")
			end
			local mu = gg.choice(name,0,"歌单")
			if not mu then _G_[1]() else
				song = name[mu]
				local sn=gg.choice({"播放","查看歌词"},nil,"歌曲："..name[mu])
				if not sn then _G_[1]() end
				if sn == 1 then
					id = menu[mu]:match("(.-);")
					gg.diyToast("正在播放音乐："..name[mu],true)
					gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
					play = true
				end
				if sn == 2 then id = menu[mu]:match("(.-);") song = name[mu] _G_[3]() end
			end
		end
	end,
	function()
		if id == 0 then gg.alert("未有播放记录") Main() else
			local results = gg.makeRequest("http://music.163.com/api/song/media?id="..id).content
			rs = results:match('"lyric":"(.-)","code'):gsub("\\n","\n"):gsub("[[!-z]+]","")
			gg.alert("\n《"..song:gsub("\n","》\n").."\n\n"..rs)
			gg.setVisible(false)
		end
	end,
	function()
		if play then
			play = false
			gg.diyToast("正在停止播放...")
			for i=1,100 do
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
				gg.playMusic("stop")
			end
			gg.diyToast("停止播放")
			else
			gg.diyToast("无正在播放的音乐")
		end
	end,
	function()
		gg.setVisible(false)
		if play then _G_[4]() end
		LSP()
	end
}
function WTYY()
	local emo = gg.choice({
		"⊙搜索歌曲",
		"⊙搜索列表",
		"⊙显示歌词",
		"⊙暂停播放",
	},nil,"音乐功能")
	if not emo then gg.setVisible(false) end
	if emo then
		_G_[emo]()
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------















--anim()


--http://www.1314love520.top/view.php/3149d34a555e1f37ef5e556c6e4ab098.jpg


----UI配置区
xfcpic = "http://www.1314love520.top/view.php/c32143ccdef2f22bf619f78b70caad32.png"--悬浮条前的图标
stitle = "R.G."--图标后的图片
stab = {
--菜单名字，添加即可加页数，需要与结尾配置表对应
	"战斗类",
	"坐标类",
	"娱乐类",
	"其它类",
	"演技类",	
	"3 2 位",
	"变态类",
	"设置类",
}



---check内容数量不限，可随意扩充
RG.menu(
	{
		{--1
RG.text("RunawaG","#FAEBD7","17sp"),--后两个参数可省略	

RG.check({"  适配64位重装",}),
RG.button("检测进程位数",
function() luajava.newThread(function() 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5,171,064,759,147,036,672", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("检测为64位")

else
	 gg.diyToast("检测为32位")
	 	 gg.clearResults()
	 end 
end):start() end
),
RG.button('显示附近人数',
function() luajava.newThread(function() 
rssearch(17039361,4,4)
rspy1(16777215,4,-36)
rspy1(1065353216,4,16)
rsxg1(999,16,-8,false)  
end):start() end),
RG.check({"设置速度",}),
RG.switch("不漂移加速",
            function() luajava.newThread(function()  fw1=false
local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 2.4}})



local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x8, 0x18, 0x20, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value =2.4}})



local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 2.4}})
gg.diyToast("已开启") 
end):start() end,
function()
local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x8, 0x18, 0x20, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})
gg.diyToast("已关闭")
end
),  
RG.box({"物理加速",
			RG.radio({
					"物理加速 ",
					{
						"一级物理加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
 py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-0.35,16,76,true)
						end):start() end
					}, {
						"二级物理加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
 py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-0.45,16,76,true)
						end):start() end					
					},{
						"三级物理加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
 py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-0.50,16,76,true)
						end):start() end					
					},
					{
						"恢复物理加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
 py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-0.35,16,76,false)	
	end):start() end					
					}
				}),
				}),
RG.box({"惯性加速",
			RG.radio({
					"惯性加速 ",
					{
						"开启加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-1.5,16,76,true)
 
    
--开启惯性加速")
    
						end):start() end
					}, {
						"关闭加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-0.55,16,76,false)
 
    
--关闭惯性加速")
    
						end):start() end					
					}
				}),
				}),
	RG.box({"不稳定加速",
			RG.radio({
					"不稳定加速 ",
					{
						"开启加速",
						function() luajava.newThread(function()  fw1=false
 search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32)
xg1(-15,16,76,true)
 
    
--开启瞬移不稳定加速")
    
						end):start() end
					}, {
						"关闭加速",
						function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(-0.55,16,76,false)
 
    
--关闭瞬移不稳定加速")
    
						end):start() end					
					}
				}),
				}),			
			RG.box({"硬核加速",
RG.box1({"普通",
RG.radio1({" ",
{"腿车专用加速" ,
function() luajava.newThread(function()  fw1=false
search(1072693248,4,neicun)
py1(745,4,-20)
xg1(1.9,64,-28,true)
 
    
--开启腿车专用加速")
    
      end):start() end
}, 
{"风声加速" ,
function() luajava.newThread(function()  fw1=false
search(1072693248,4,neicun)
py1(745,4,-20)
xg1(9,64,-28,true) 
    
--开启风声加速")
    
      end):start() end
}, 
{"风声加速Plus",
function() luajava.newThread(function()  fw1=false
search(1072693248,4,neicun)
py1(745,4,-20)
xg1(12.3,64,-28,true) 
    
--开启风声加速plus")
    
      end):start() end
}			

,{"恢复速度",
function() luajava.newThread(function()  fw1=false
search(1072693248,4,neicun)
py1(745,4,-20)
xg1(0.85,64,-28,false) 
    
--恢复速度")
    
      end):start() end},      

}),

}),
RG.box1({"基址",
RG.radio1({" ",
{"腿车专用加速" ,
function() luajava.newThread(function()  fw1=false
 
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 1.9, freeze = true}})
gg.diyToast("开启成功,请解体修复") 
    
--开启基址腿车专用加速")
    
      end):start() end,

}, 
{"风声加速" ,
function() luajava.newThread(function()  fw1=false
 
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 9, freeze = true}})
gg.diyToast("开启成功,请解体修复") 
    
--开启基址风声加速")
    
      end):start() end
}, 
{"风声加速Plus",
function() luajava.newThread(function()  fw1=false

local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 12, freeze = true}})
gg.diyToast("开启成功,请解体修复") 
    
--开启基址风声加速plus")
    
      end):start() end
}			
	,
{"恢复速度",
function() luajava.newThread(function()  fw1=false
 
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 0.79, freeze = true}})
gg.diyToast("开启成功,请解体修复") 
    
--基址恢复速度")
    
      end):start() end},  
      }),

}),
}),
RG.line(),
RG.check({"踏空",}),
RG.box({"设置踏空",---box示例 可以删掉
RG.switch("普通车体踏空",
            function() luajava.newThread(function()  fw1=false
gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('0.85',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('27.6427787',gg.TYPE_DOUBLE)
gg.diyToast("开启成功,请解体修复") 
    
--开启普通车体踏空")
    
end):start() end,
    function() luajava.newThread(function() 
gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('27.6427787',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0.85',gg.TYPE_DOUBLE)
gg.diyToast("恢复成功,请解体修复") 
    
--关闭普通车体踏空")
    
                end):start() end),  
   RG.switch("高级车体踏空",
    function() luajava.newThread(function() 
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 72, freeze = true}})
gg.sleep(500)
gg.diyToast("请使用腾越    请解体修复")
editData(
      {
        {["memory"] = gg.REGION_C_ALLOC},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 0,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 0,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      ) 
    
--开启高级车体踏空")
    
    end):start() end,
    function() luajava.newThread(function() 
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 0.85, freeze = true}})
gg.diyToast("请解体修复") 
    
--关闭高级车体踏空")
    
	end):start() end
     ),
RG.switch("核心踏空",
    function() luajava.newThread(function() 
search(1077805056,4,4)
py1(-1889785610,4,44)
xg1(555,64,164,true)--踏空
search(1078034432,4,4)
py1(77,4,4)
xg1(10,64,236,true)--加速
gg.sleep(500)
gg.diyToast("请解体")
editData(
      {
        {["memory"] = gg.REGION_C_ALLOC},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 0,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 0,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      ) 
    
--开启核心踏空")
    
    end):start() end,
    function() luajava.newThread(function() 
search(1077805056,4,4)
py1(-1889785610,4,44)
xg1(0.5,64,164,true)
local t = {"libclient.so:bss", "Cb"}
local tt = {0xC7E798, 0x40, 0x30, 0x28,0x70,0x10}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 64, value = 0.79, freeze = true}}) 
    
--关闭核心踏空")
    
	end):start() end
     ),
                }),  
RG.line(),
	
RG.check({"范围伤害",}),
RG.box({"设置循环范围",
RG.radio({"",
    {"核心范围",
        function() luajava.newThread(function()  fw1=false
search(1083668903,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1084043454,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1083048146,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1094692163,4,4)
xg1(499,16,-4,false)
xg1(499,16,-8,false)

search(1077925642,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1084030452,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1088866275,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)

search(1079392810,4,4)
xg1(499,16,0,false)
xg1(499,16,-4,false)
 end):start() end,
    },
{"不挡秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
fw1=true
while fw1==true do 
gg.diyToast("Start execution") 
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(1.0,16,40)
py1(0.0,16,44)
py1(0.0,16,48)
py1(0.0,16,52)
py1(1.0,16,312)
py1(0.19999998807907104,16,328)
py1(1.0,16,352)
xg1(99999,16,76,false)
xg1(0,16,80,false)
xg1(9999,16,72,false)
		sleep(200)
	 end 
end):start() end
},      {"执行迅速秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
	fw1=true
	while fw1==true do
gg.diyToast("Start execution")
search(1024.0000000000007,64,4)
py1(0.0,64,-24)
py1(0.0,64,-20)
xg1(114514,16,8,false)
xg1(114514,16,4,false)
		 		      end 
end):start() end
},{"极小秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
gg.diyToast("为极小的频率优化秒杀范围") 
fw1=true
while fw1==true do 
gg.diyToast("Start execution") 
search(7.707281683632926E-41,16,neicun)
py1(1.0,16,24)
py1(0.0,16,36)
py1(4.5,16,60)
xg1(90,16,60,false)
xg1(90,16,56,false)
sleep(200)
	 end 
end):start() end
}, 
              }),

RG.button("停止循环" ,
function() luajava.newThread(function() 
fw1=false
fw1=false 
gg.sleep(4200)    
end):start() end),
}),
RG.line(),
RG.check({"后坐力",}),
RG.box({"设置后坐",
RG.radio({"",
{"反后坐(会穿墙)" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-3.5,16,96,true) 
    end):start() end
}, 
{"反后坐plus" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-9,16,96,true) 
    
--开启反后坐plus")
    
          end):start() end
}, 
{"无重力反后坐" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-35,16,96,true) 
    
--开启无重力反后坐")
    
          end):start() end
}, 
{"高后坐",
function() luajava.newThread(function()  fw1=false  
   search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
xg1(3.5,16,96,true) 
    
--开启高后坐")
    
          end):start() end},
{"高后坐plus",
function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)    
xg1(9,16,96,true) 
    
--开启高后坐plus")
    
          end):start() end},
{"恢复后坐",
function() luajava.newThread(function()  fw1=false
gg.clearList() 
gg.setValues(z) 
gg.diyToast("请解体修复") 
           
    
--恢复后坐")
    end):start() end},
})
}),
RG.line(),
RG.check({"高度",}),
RG.box({"设置高度",
RG.box1({"普通",
RG.radio1({"",
{"低空" ,

function() luajava.newThread(function()  fw1=false
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(3200,16,-8,true)
       
    
--开启低空")
    end):start() end}, 
{"高空" ,
function() luajava.newThread(function()  fw1=false
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(6100,16,-8,true)

       
    
--开启高空")
    end):start() end
}, {"极高" ,
function() luajava.newThread(function()  fw1=false
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(999999,16,-8,true)

--开启极高空")
    end):start() end
}, 
{"地下",
function() luajava.newThread(function()  fw1=false

search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(-1300,16,-8,true)

       
    
--开启地下")
    end):start() end},
{"返回地面",
function() luajava.newThread(function()  fw1=false
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(4000,16,-8,false)


       
    
--开启返回地面")
    end):start() end},
}),

}),

RG.box1({"基址",
RG.radio1({"",
{"低空" ,

function() luajava.newThread(function()  fw1=false

	 


local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 3000, freeze = true}})
gg.diyToast("↑")


       
    
--开启基址低空")
    end):start() end
}, 
{"高空" ,
function() luajava.newThread(function()  fw1=false
	 


local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 6100, freeze = true}})
gg.diyToast("↑↑")

       
    
--开启基址高空")
    end):start() end
}, {"极高" ,
function() luajava.newThread(function()  fw1=false
	 

local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 999000, freeze = true}})
gg.diyToast("↑↑↑")

       
    
--开启基址极高空")
    end):start() end
}, 
{"地下",
function() luajava.newThread(function()  fw1=false
	 


local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = -1300, freeze = true}})
gg.diyToast("↓")

       
    
--开启基址地下")
    end):start() end},

{"返回地面",
function() luajava.newThread(function()  fw1=false
	     	 


local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 4000, freeze = true}})

 


local t = {"libclient.so:bss", "Cb"}
local tt = {0xDCBC30, 0xD30, 0x10, 0xA4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 4000, freeze = false}})
gg.diyToast("•")

       
    
--开启基址返回地面")
    end):start() end},   
}),

}),



}),
RG.line(),
RG.check({"锁核心",}),
RG.box({"锁核",
RG.box1({"坐标锁核",
RG.radio1({"",
{"初始化坐标锁核" ,
function() luajava.newThread(function()  fw1=false 
            HS1()
            HS3()
               
    
--初始化坐标锁核")
    end):start() end
}, 
{"打开锁核菜单" ,
function() luajava.newThread(function()  fw1=false 
            CD()
               
    
--打开锁核菜单")
    end):start() end
}, 
{"清除锁核残留",
function() luajava.newThread(function()  fw1=false 
            editData(
{
{["memory"] = neicun},
{["name"] = ""},
{["value"] = 1234567890, ["type"] = D},
{["lv"] = 1234567890,["offset"] =0, ["type"] = D},
},
{
{["value"] = 0,["offset"] =0, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
               
    
--清除锁核残留")
    end):start() end},
}),
}),
RG.box1({"天罚锁核",
RG.radio1({"",
{"初始化天罚锁核" ,
function() luajava.newThread(function()  fw1=false 
            gg.diyToast("正在初始化") 
gg.diyToast('初始化1')
    editData(
{
{["memory"] = neicun},
{["name"] = "找敌"},
{["value"] = 17039361, ["type"] = D},
{["lv"] = -190986834,["offset"] =0x30, ["type"] = D},
},
{
{["value"] = 1145141919,["offset"] =-0x30, ["type"] = D,["freeze"] = false},
}
)
gg.diyToast('初始化2')
gg.clearResults()
gg.setRanges(4)
--检查遗留数据(敌人)
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jc=gg.getResultsCount()
if jc < 1 then
gg.editAll("0", gg.TYPE_DWORD)
else
qnmbd()
gg.clearResults()
end
--获取加密数值:所有实体
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

--获取实体数量
local cs=gg.getResultsCount()

gg.clearResults()
-- 定义全局变量drzb，以存储生成出来的变量名drzb+n
local drzb={}

-- 通过循环将cs的值计算出来的变量名drzb+n的值赋值给hq
for i=1,cs do
 drzb[i]='drzb'..i
 gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1,1)
 _G['drzb'..i] = gg.getResults(1)
 gg.editAll(0,4)
 gg.clearResults()
end
--告诉玩家找到的实体数量
gg.diyToast("共找到玩家:"..cs)

gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local cs=gg.getResultsCount()
if cs ==1 then
local bclb=gg.getResults(1)
gg.addListItems(bclb)
else gg.editAll(0,4)
gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local bclb=gg.getResults(1)
gg.addListItems(bclb)
end
a=gg.getListItems(1)
gg.clearResults()
gg.diyToast('初始化完成')
               
    
--初始化天罚锁核")
    end):start() end
}, 
{"天罚锁核菜单" ,
function() luajava.newThread(function()  fw1=false 
            tf1()
               
    
--天罚锁核菜单")
    end):start() end
}, 
{"直接锁核",
function() luajava.newThread(function()  fw1=false 
            local x1=gg.getValues({[1]={address=drzb1[1].address+0x24,flags=16,value=nil}}) 
local y1=gg.getValues({[1]={address=drzb1[1].address+0x28,flags=16,value=nil}}) 
local z1=gg.getValues({[1]={address=drzb1[1].address+0x2C,flags=16,value=nil}}) 
	sr=gg.prompt({'x','y','z'},{[1]=x1[1].value,[2]=y1[1].value,[3]=z1[1].value})
search(17039620,4,4)--准备好天罚的值
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(sr[1],16,-12,true)--x
	xg1(sr[2],16,-8,true)--y
	xg1(sr[3],16,-4,true)--z 
               
    
--直接锁核")
    end):start() end},
}),
}),
}),
RG.check({"全局速度",}),
RG.box({"设置全局速度",
RG.buts({
{"全局加速" ,
               function() luajava.newThread(function() 
                    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("500", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	if gg.getResultCount() == 0 then
		gg.diyToast("开启失败")
		else
		gg.searchNumber("500",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("-99999999114514", FLOAT)
		gg.diyToast("开启成功")
		gg.clearResults()
	end
                 
    
--全局加速")
    end):start() end
},
{"恢复全局" ,
function() luajava.newThread(function() 

		gg.clearResults()
	gg.searchNumber("-99999999114514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("500", FLOAT)
		gg.diyToast("恢复")
				gg.clearResults()
	
                 
    
--恢复全局")
    end):start() end
}, 
}),

}),
RG.line(),
RG.check({"天线",}),
RG.box({"天线功能",---box示例 可以删掉
			 RG.button("添加模块天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-5",FLOAT , false, gg.SIGN_EQUAL, 0, -1)

gg.editAll("114514", FLOAT)
gg.clearResults()
end
                 
    
--添加模块天线")
    end):start() end),
            RG.button("关闭模块天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("114514", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("114514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)

gg.editAll("-5", FLOAT)
gg.clearResults()
end
                 
    
--关闭模块天线")
    end):start() end),
RG.button("添加特殊天线",
            function() luajava.newThread(function()  fw1=false
search(-943501312,4,4)
py1(2,4,-436)
py1(-257,4,-432)
py1(-943501312,4,-52)
py1(-943501312,4,-48)
py1(-943501312,4,-44)
py1(-943501312,4,-8)
py1(-943501312,4,-4)
py1(1203982336,4,4)
py1(1203982336,4,8)
py1(1203982336,4,12)
py1(112,4,556)
xg1(114514,16,-480,true)
                 
    
--添加特殊天线")
    end):start() end),                                
RG.button("添加萌新天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.65025615692", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99.64384", gg.TYPE_FLOAT)
	 gg.diyToast("开启")
	 gg.clearResults()
                 
    
--添加萌新天线")
    end):start() end),
            RG.button("关闭萌新天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("99.64384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.65025615692", gg.TYPE_FLOAT)
	 gg.diyToast("关闭")
	 gg.clearResults()
                 
    
--关闭萌新天线")
    end):start() end),                
                }),												
			
		}, {--2
RG.box({"获取个人坐标",
RG.button("初始化自身坐标",
function() luajava.newThread(function()  fw1=false
gg.diyToast("初始化需约15秒")       
    gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16777215;257;17039364::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("17039364", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 zszb=gg.getResults(1)--初始化个人坐标
gg.diyToast('获取完成')
 
    
--初始化自身坐标")
    end):start() end), 
   RG.button("获取自身坐标",
function() luajava.newThread(function()  fw1=false
 x=gg.getValues({[1]={address=zszb[1].address-0xc,flags=16,value=nil}}) 
 y=gg.getValues({[1]={address=zszb[1].address-0x8,flags=16,value=nil}}) 
 z=gg.getValues({[1]={address=zszb[1].address-0x4,flags=16,value=nil}}) 
	gg.diyToast('x:'..x[1].value..'\ny:'..y[1].value..'\nz:'..z[1].value)
 
    
--获取自身坐标")
    end):start() end),  
RG.button("循环显示自身坐标",
function() luajava.newThread(function()  fw1=false
    zszs=true
while zszs==true do gg.sleep(400)
 x=gg.getValues({[1]={address=zszb[1].address-0xc,flags=16,value=nil}}) 
 y=gg.getValues({[1]={address=zszb[1].address-0x8,flags=16,value=nil}}) 
 z=gg.getValues({[1]={address=zszb[1].address-0x4,flags=16,value=nil}}) 
	gg.diyToast('x:'..x[1].value..'\ny:'..y[1].value..'\nz:'..z[1].value)
	end
 
    
--循环显示自身坐标")
    end):start() end),    
RG.button("结束循环显示自身坐标",
function() luajava.newThread(function()  fw1=false
zszs=false
 
    
--结束循环显示自身坐标")
    end):start() end),    
RG.button("自定义自身坐标",
function() luajava.newThread(function()  fw1=false
    x=gg.getValues({[1]={address=zszb[1].address-0xc,flags=16,value=nil}}) 
    y=gg.getValues({[1]={address=zszb[1].address-0x8,flags=16,value=nil}}) 
    z=gg.getValues({[1]={address=zszb[1].address-0x4,flags=16,value=nil}}) 
	sr=gg.prompt({'x','y','z'},{[1]=x[1].value,[2]=y[1].value,[3]=z[1].value})
	gg.setValues({[1]={address=zszb[1].address-0xC,flags=16,freeze = true,value=sr[1]}}) --x
	gg.setValues({[1]={address=zszb[1].address-0x8,flags=16,freeze = true,value=sr[2]}}) --y
	gg.setValues({[1]={address=zszb[1].address-0x4,flags=16,freeze = true,value=sr[3]}}) --z        
 
    
--自定义自身坐标")
    end):start() end),    
}), 
RG.line(), 
RG.box({"获取他人坐标",
RG.button("初始化他人坐标",
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在初始化")       
    editData(
{
{["memory"] = neicun},
{["name"] = "找敌"},
{["value"] = 17039361, ["type"] = D},
{["lv"] = -190986834,["offset"] =0x30, ["type"] = D},
},
{
{["value"] = 1145141919,["offset"] =-0x30, ["type"] = D,["freeze"] = false},
}
)

gg.clearResults()
gg.setRanges(4)
--检查遗留数据(敌人)
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local jc=gg.getResultsCount()
if jc < 1 then
gg.editAll("0", gg.TYPE_DWORD)
else
qnmbd()
gg.clearResults()
end
--获取加密数值:所有实体
gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

--获取实体数量
local cs=gg.getResultsCount()

gg.clearResults()
-- 定义全局变量drzb，以存储生成出来的变量名drzb+n
local drzb={}

-- 通过循环将cs的值计算出来的变量名drzb+n的值赋值给hq
for i=1,cs do
 drzb[i]='drzb'..i
 gg.searchNumber("1145141919", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1,1)
 _G['drzb'..i] = gg.getResults(1)
 gg.editAll(0,4)
 gg.clearResults()
end
--告诉玩家找到的实体数量
gg.diyToast('目前仅支持一个玩家')
gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local cs=gg.getResultsCount()
if cs ==1 then
local bclb=gg.getResults(1)
gg.addListItems(bclb)
else gg.editAll(0,4)
gg.clearResults()
gg.searchNumber("1234567890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local bclb=gg.getResults(1)
gg.addListItems(bclb)
end
a=gg.getListItems(1)
gg.clearResults()
gg.diyToast('初始化完成')
 
    
--初始化他人坐标")
    end):start() end), 
   RG.button("获取他人坐标",
function() luajava.newThread(function()  fw1=false
local x1=gg.getValues({[1]={address=drzb1[1].address+0x24,flags=16,value=nil}}) 
local y1=gg.getValues({[1]={address=drzb1[1].address+0x28,flags=16,value=nil}}) 
local z1=gg.getValues({[1]={address=drzb1[1].address+0x2C,flags=16,value=nil}}) 
	gg.diyToast('x:'..x1[1].value..'\ny:'..y1[1].value..'\nz:'..z1[1].value)
 
    
--获取他人坐标")
    end):start() end),  
RG.button("循环显示敌人坐标",
function() luajava.newThread(function()  fw1=false
    drdr=true
while drdr==true do gg.sleep(400)
local x1=gg.getValues({[1]={address=drzb1[1].address+0x24,flags=16,value=nil}}) 
local y1=gg.getValues({[1]={address=drzb1[1].address+0x28,flags=16,value=nil}}) 
local z1=gg.getValues({[1]={address=drzb1[1].address+0x2C,flags=16,value=nil}}) 
	gg.diyToast('x:'..x1[1].value..'\ny:'..y1[1].value..'\nz:'..z1[1].value)
	end
 
    
--循环显示敌人坐标")
    end):start() end),    
RG.button("结束循环显示敌人坐标",
function() luajava.newThread(function()  fw1=false
drdr=false
 
    
--结束循环显示敌人坐标")
    end):start() end), 
RG.button("传送到此人身上",
function() luajava.newThread(function()  fw1=false
local x1=gg.getValues({[1]={address=drzb1[1].address+0x24,flags=16,value=nil}}) 
local y1=gg.getValues({[1]={address=drzb1[1].address+0x28,flags=16,value=nil}}) 
local z1=gg.getValues({[1]={address=drzb1[1].address+0x2C,flags=16,value=nil}}) 
	sr=gg.prompt({'x','y','z'},{[1]=x1[1].value,[2]=y1[1].value,[3]=z1[1].value})
	gg.setValues({[1]={address=zszb[1].address-0xC,flags=16,freeze = true,value=sr[1]}}) --x
	gg.setValues({[1]={address=zszb[1].address-0x8,flags=16,freeze = true,value=sr[2]}}) --y
	gg.setValues({[1]={address=zszb[1].address-0x4,flags=16,freeze = true,value=sr[3]}}) --z        
 
    
--传送到此人身上")
    end):start() end),       
}),
RG.line(),  
RG.check({"以下为传送",}),
RG.button("初始化传送",
function() luajava.newThread(function()  fw1=false
	recordCount = recordCount + 1
	if recordCount <= maxRecordCount then
		-- 正常记录坐标
		clearLastRecord()
		startRecording()
		else
		-- 第三次点击，清除上次坐标，并重新开始
		clearLastRecord()
		recordCount = 1
		startRecording()
	      end
 
    
--初始化传送")
    end):start() end),
RG.line(),    
RG.box({"自定义坐标",
    RG.button("手动输入自定义坐标传送",
function() luajava.newThread(function()  fw1=false
zdyzb=gg.prompt({"X轴","Y轴","Z轴"},{"0","0","0"},{"text","text","text"})
if zdyzb==nil then
elseif zdyzb[1]=="" then
gg.diyToast("X轴不能为空") 
elseif zdyzb[2]=="" then
gg.diyToast("Y轴不能为空") 
elseif zdyzb[3]=="" then
gg.diyToast("Z轴不能为空")
else
gg.diyToast("准备传送")
xg1(zdyzb[1], 16, -4, false)
xg1(zdyzb[2], 16, -8, false)
xg1(zdyzb[3], 16, -12, false)
      end
     
    
--手动输入自定义坐标传送")
    end):start() end),
RG.line(),    

  }),
RG.line(),  
    RG.box({"超级风暴",
RG.buts({

    {"大业殿",
    function() luajava.newThread(function()  fw1=false
    	xg1(730,16,-8,true)--y
	xg1(500,16,-4,true)
	xg1(-3517,16,-12,true)
	gg.sleep(500)
	xg1(730,16,-8,false)--y
	xg1(500,16,-4,false)
	xg1(-3517,16,-12,false)
       
    
--大业殿")
    end):start() end
        ,
    },   {"可汗石头",
    function() luajava.newThread(function()  fw1=false
   	xg1(0,16,-8,true)
	xg1(-14571,16,-4,true)
	xg1(-4057,16,-12,true)
	gg.sleep(500)
	xg1(0,16,-8,false)
	xg1(-14571,16,-4,false)
	xg1(-4057,16,-12,false)
       
    
--可汗石头")
    end):start() end

,
    },    {"玉皇宫",
    
    function() luajava.newThread(function()  fw1=false
    xg1(17720,16,-8,true)
xg1(1700,16,-4,true)
xg1(9320,16,-12,true)
	gg.sleep(500)
	xg1(1380,16,-8,false)--y
	xg1(-11745,16,-4,false)
	xg1(9276,16,-12,false)
       
    
--玉皇宫")
    end):start() end
        ,
    },
    }),   RG.buts({
    {"菩提枫",
        function() luajava.newThread(function()  fw1=false
   	xg1(-200,16,-8,true)
	xg1(-2028,16,-4,true)
	xg1(9627,16,-12,true)
	gg.sleep(500)	 
	xg1(-200,16,-8,false)
	xg1(-2028,16,-4,false)
	xg1(9627,16,-12,false)
       
    
--菩提枫")
    end):start() end,
    },    {"北岸高架",
    function() luajava.newThread(function()  fw1=false
    xg1(1600,16,-8,true)--y
	xg1(9825,16,-4,true)
	xg1(11275,16,-12,true)
	gg.sleep(500)
	xg1(1600,16,-8,false)--y
	xg1(9825,16,-4,false)
	xg1(11275,16,-12,false)
       
    
--北岸高架")
    end):start() end
        ,
    },    {"长滩房子",
    
        function() luajava.newThread(function()  fw1=false
            
	 
	xg1(-429,16,-8,true)
	xg1(-11405.460,16,-4,true)
	xg1(-1871.13,16,-12,true)
	gg.sleep(500)
	xg1(-429,16,-8,false)
	xg1(-11405.460,16,-4,false)
	xg1(-1871.13,16,-12,false)
       
    
--长滩房子")
    end):start() end
,
    },
                }),   RG.buts({ 
    {"太平门房子",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(410,16,-8,true)--y
	xg1(-5424,16,-4,true)
	xg1(-13166,16,-12,true)
	gg.sleep(500)
	xg1(410,16,-8,false)--y
	xg1(-5424,16,-4,false)
	xg1(-13166,16,-12,false)
       
    
--太平门房子")
    end):start() end
        ,
    },    {"大草原",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(3600,16,-8,true)--y
	xg1(7046.460,16,-4,true)
	xg1(-10906,16,-12,true)
	gg.sleep(500)
	xg1(3600,16,-8,false)--y
	xg1(7046.460,16,-4,false)
	xg1(-10906,16,-12,false)
       
    
--大草原")
    end):start() end
        ,
    },    {"荷塘房子",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(500,16,-8,true)--y
	xg1(-25.4606,16,-4,true)
	xg1(-11460,16,-12,true)
	gg.sleep(500)
	xg1(500,16,-8,false)--y
	xg1(-25.4606,16,-4,false)
	xg1(-11460,16,-12,false)
       
    
--荷塘房子")
    end):start() end
        ,
    },
                }),   RG.buts({ 
    {"菩提枫房子",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(-420,16,-8,true)--y
	xg1(806.46063,16,-4,true)
	xg1(10701,16,-12,true)
	gg.sleep(500)
	xg1(-420,16,-8,false)--y
	xg1(806.46063,16,-4,false)
	xg1(10701,16,-12,false)
       
    
--菩提枫房子")
    end):start() end
        ,
    },    {"美食街车",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(-500,16,-8,true)
xg1(-9261.46063232531875,16,-4,true)
xg1(5181.13671875,16,-12,true)
	gg.sleep(500)
xg1(-500,16,-8,false)
xg1(-9261.46063232531875,16,-4,false)
xg1(5181.13671875,16,-12,false)
       
    
--美食街车")
    end):start() end
        ,
    },    {"北岸木头",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(-228,16,-8,true)--y
	xg1(11391.460,16,-4,true)
	xg1(9863,16,-12,true)
	gg.sleep(500)
	xg1(-228,16,-8,false)--y
	xg1(11391.460,16,-4,false)
	xg1(9863,16,-12,false)
       
    
--北岸木头")
    end):start() end
        ,
    },                }),   RG.buts({ 
            {"天鹤山房子",
            function() luajava.newThread(function()  fw1=false
                
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(1400,16,-8,false)--y
	xg1(5651.46,16,-4,false)
	xg1(204,16,-12,false)
       
    
--天鹤山房子")
    end):start() end
        ,
    }, 
            {"可汗中心",
            function() luajava.newThread(function()  fw1=false
            
                
	 
xg1(455,16,-8,true)--y
	xg1(-11707.46,16,-4,true)
	xg1(-10474,16,-12,true)
	gg.sleep(500)
	xg1(455,16,-8,false)--y
	xg1(-11707.46,16,-4,false)
	xg1(-10474,16,-12,false)
       
    
--可汗中心")
    end):start() end
        ,
    },         {"地龟山石头",
    function() luajava.newThread(function()  fw1=false
        
	 
xg1(516.3,16,-8,true)--y
	xg1(-4983.4606,16,-4,true)
	xg1(-6715,16,-12,true)
	gg.sleep(500)
	xg1(516.3,16,-8,false)--y
	xg1(-4983.4606,16,-4,false)
	xg1(-6715,16,-12,false)
       
    
--地龟山石头")
    end):start() end
        ,
    }, 
                }),
            }),   
       RG.box({"单人风暴",
RG.buts({
   

     {"中心枢纽",
        function() luajava.newThread(function()  fw1=false
  	xg1(3031,16,-8,true)
	xg1(791,16,-4,true)
	xg1(-297,16,-12,true)
	gg.sleep(500)
	py1(16777215,4,-36)
	py1(257,4,-32)
	py1(17039364,4,0)
	xg1(3031,16,-8,false)
	xg1(791,16,-4,false)
	xg1(-297,16,-12,false)
       
    
--中心枢纽")
    end):start() end,
    },    {"灰色工厂",
        function() luajava.newThread(function()  fw1=false
            
	 
	xg1(999,16,-8,true)
	xg1(-5324,16,-4,true)
	xg1(-1950,16,-12,true)
	gg.sleep(500)
	xg1(999,16,-8,false)
	xg1(-5324,16,-4,false)
	xg1(-1950,16,-12,false)
       
    
--灰色工厂")
    end):start() end
,
    },    {"守望台",
        function() luajava.newThread(function()  fw1=false    
	 
	xg1(1594,16,-8,true)
	xg1(-5739,16,-4,true)
	xg1(2004,16,-12,true)
	gg.sleep(500)
	xg1(1594,16,-8,false)
	xg1(-5739,16,-4,false)
	xg1(2004,16,-12,false)
       
    
--守望台")
    end):start() end,
    },
}),   RG.buts({
    {"零号仓库",
        function() luajava.newThread(function()  fw1=false    
	 
	xg1(50,16,-8,true)
	xg1(6712,16,-4,true)
	xg1(-5863,16,-12,true)
	gg.sleep(500)
	py1(16777215,4,-36)
	py1(257,4,-32)
	py1(17039364,4,0)
	xg1(50,16,-8,false)
	xg1(6712,16,-4,false)
	xg1(-5863,16,-12,false)
       
    
--零号仓库")
    end):start() end,
    },    {"小试验场",
    function() luajava.newThread(function()  fw1=false    
	 
	xg1(575,16,-8,true)--y
	xg1(-4525.46063,16,-4,true)
	xg1(-2259,16,-12,true)
	gg.sleep(500)
	xg1(575,16,-8,false)--y
	xg1(-4525.46063,16,-4,false)
	xg1(-2259,16,-12,false)
       
    
--小试验场")
    end):start() end
        ,
        
    },    {"灰工集装箱",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(102,16,-8,true)--y
	xg1(-2474.4606,16,-4,true)
	xg1(-6128,16,-12,true)
	gg.sleep(500)
	xg1(102,16,-8,false)--y
	xg1(-2474.4606,16,-4,false)
	xg1(-6128,16,-12,false)
       
    
--灰工集装箱")
    end):start() end
        ,
        
    },    
                })
            }),    
            RG.box({"乱斗",
RG.buts({
   

         {"空投点1",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(799,16,-8,true)--y
	xg1(2932.199,16,-4,true)
	xg1(-4221,16,-12,true)
	gg.sleep(500)
	xg1(799,16,-8,false)--y
	xg1(2932.199,16,-4,false)
	xg1(-4221,16,-12,false)
       
    
--空投点1")
    end):start() end
        ,
    
        
    },    {"空投点2",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(1500,16,-8,true)--y
	xg1(-5937.941,16,-4,true)
	xg1(3917,16,-12,true)
	gg.sleep(500)
	xg1(1500,16,-8,false)--y
	xg1(-5937.941,16,-4,false)
	xg1(3917,16,-12,false)
       
    
--空投点2")
    end):start() end
        ,
        
    },    
                })
            }),  

            RG.box({"单点占领",
RG.buts({

    {"远征进点",
    
    function() luajava.newThread(function()  fw1=false    
	 
xg1(300,16,-8,true)--y
	xg1(-51.941,16,-4,true)
	xg1(-2015,16,-12,true)
	gg.sleep(500)
	xg1(300,16,-8,false)--y
	xg1(-51.941,16,-4,false)
	xg1(-2015,16,-12,false)
       
    
--远征进点")
    end):start() end
        ,
        
    },       {"远征高台1",
      function() luajava.newThread(function()  fw1=false    
	 
xg1(633,16,-8,true)--y
	xg1(-254,16,-4,true)
	xg1(-603,16,-12,true)
	gg.sleep(500)
	xg1(633,16,-8,false)--y
	xg1(-254,16,-4,false)
	xg1(-603,16,-12,false)
       
    
--远征高台1")
    end):start() end
        ,  
    },     {"远征高台2",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(509,16,-8,true)--y
	xg1(0.75161904,16,-4,true)
	xg1(-3474,16,-12,true)
	gg.sleep(500)
	xg1(509,16,-8,false)--y
	xg1(0.75161904,16,-4,false)
	xg1(-3474,16,-12,false)
       
    
--远征高台2")
    end):start() end
        ,       
    },
    }),  
RG.buts({
{"红石进点",function() luajava.newThread(function()  fw1=false    
	 
xg1(300,16,-8,true)--y
	xg1(-1181.941,16,-4,true)
	xg1(-247,16,-12,true)
	gg.sleep(500)
	xg1(300,16,-8,false)--y
	xg1(-1181.941,16,-4,false)
	xg1(-247,16,-12,false)
       
    
--红石进点")
    end):start() end
        ,
        
    },     {"红石高台1",
 function() luajava.newThread(function()  fw1=false    
	 
	xg1(1394,16,-8,true)--y
	xg1(218,16,-4,true)
	xg1(3164,16,-12,true)
	gg.sleep(500)
	xg1(1394,16,-8,false)--y
	xg1(218,16,-4,false)
	xg1(3164,16,-12,false)
       
    
--红石高台1")
    end):start() end
        ,       
    },   {"红石高台2",
function() luajava.newThread(function()  fw1=false    
	 
xg1(470,16,-8,true)--y
	xg1(77.41,16,-4,true)
	xg1(-1738,16,-12,true)
	gg.sleep(500)
	xg1(470,16,-8,false)--y
	xg1(77.41,16,-4,false)
	xg1(-1738,16,-12,false)
       
    
--红石高台2")
    end):start() end
        ,        
    },}),   RG.buts({{"盖亚进点",
       function() luajava.newThread(function()  fw1=false    
	 
xg1(120,16,-8,true)--y
	xg1(151.941,16,-4,true)
	xg1(-1193,16,-12,true)
	gg.sleep(500)
	xg1(120,16,-8,false)--y
	xg1(151.941,16,-4,false)
	xg1(-1193,16,-12,false)
       
    
--盖亚进点")
    end):start() end
        , 
    },
    
  {"盖亚高台1",
function() luajava.newThread(function()  fw1=false    
	 
xg1(390,16,-8,true)--y
	xg1(-235.941,16,-4,true)
	xg1(-2510,16,-12,true)
	gg.sleep(500)
	xg1(390,16,-8,false)--y
	xg1(-235.941,16,-4,false)
	xg1(-2510,16,-12,false)
       
    
--盖亚高台1")
    end):start() end
        ,        
    },
   
  {"盖亚高台2",
function() luajava.newThread(function()  fw1=false    
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(1400,16,-8,false)--y
	xg1(5651.46,16,-4,false)
	xg1(204,16,-12,false)
       
    
--盖亚高台2")
    end):start() end
        ,        
    },
     
                })
            }),   
            RG.box({"多点占领",
RG.buts({

         {"暗黑星云进点1",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(5745,16,-8,true)--y
	xg1(-303,16,-4,true)
	xg1(-239,16,-12,true)
	gg.sleep(500)
	xg1(5745,16,-8,false)--y
	xg1(-303,16,-4,false)
	xg1(-239,16,-12,false)
       
    
--暗黑星云进点1")
    end):start() end
        ,       
    },    {"暗黑星云进点2",
  function() luajava.newThread(function()  fw1=false    
	 
xg1(8018,16,-8,true)--y
	xg1(7150,16,-4,true)
	xg1(-255,16,-12,true)
	gg.sleep(500)
	xg1(8018,16,-8,false)--y
	xg1(7150,16,-4,false)
	xg1(-255,16,-12,false)
       
    
--暗黑星云进点2")
    end):start() end
        ,      
    },        {"暗黑星云辅助位",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(4073,16,-8,true)--y
	xg1(10309,16,-4,true)
	xg1(-16878,16,-12,true)
	gg.sleep(500)
	xg1(4073,16,-8,false)--y
	xg1(10309,16,-4,false)
	xg1(-16878,16,-12,false)
       
    
--暗黑星云辅助位")
    end):start() end
        ,     
    },
}),   RG.buts({
  
    {"陨星基地进点1",
function() luajava.newThread(function()  fw1=false    
	 
xg1(1000,16,-8,true)--y
	xg1(-1404,16,-4,true)
	xg1(1389,16,-12,true)
	gg.sleep(500)
	xg1(1000,16,-8,false)--y
	xg1(-1404,16,-4,false)
	xg1(1389,16,-12,false)
       
    
--陨星基地进点1")
    end):start() end
        ,        
    },       {"陨星基地进点2",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(100,16,-8,true)--y
	xg1(1626,16,-4,true)
	xg1(2071,16,-12,true)
	gg.sleep(500)
	xg1(100,16,-8,false)--y
	xg1(1626,16,-4,false)
	xg1(2071,16,-12,false)
       
    
--陨星基地进点2")
    end):start() end
        ,     
    },     {"陨星基地进点3",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(202,16,-8,true)--y
	xg1(234,16,-4,true)
	xg1(-2906,16,-12,true)
	gg.sleep(500)
	xg1(202,16,-8,false)--y
	xg1(234,16,-4,false)
	xg1(-2906,16,-12,false)
       
    
--陨星基地进点3")
    end):start() end
        ,       
    },
}),   RG.buts({  
    {"乐园进点1",
  function() luajava.newThread(function()  fw1=false    
	 
xg1(190,16,-8,true)--y
	xg1(103,16,-4,true)
	xg1(-1509,16,-12,true)
	gg.sleep(500)
	xg1(190,16,-8,false)--y
	xg1(103,16,-4,false)
	xg1(-1509,16,-12,false)
       
    
--乐园进点1")
    end):start() end
        ,      
    },
    


  
    {"乐园进点2",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(99,16,-8,true)--y
	xg1(2116,16,-4,true)
	xg1(281,16,-12,true)
	gg.sleep(500)
	xg1(99,16,-8,false)--y
	xg1(2116,16,-4,false)
	xg1(281,16,-12,false)
       
    
--乐园进点2")
    end):start() end
        ,       
    },  


  
    {"乐园进点3",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(98,16,-8,true)--y
	xg1(-2125,16,-4,true)
	xg1(1834,16,-12,true)
	gg.sleep(500)
	xg1(98,16,-8,false)--y
	xg1(-2125,16,-4,false)
	xg1(1834,16,-12,false)
       
    
--乐园进点3")
    end):start() end
        ,    
    },
                })
            }),
RG.box({"无限擂台",
RG.buts({
   
       {"中心",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(130,16,-8,true)--y
	xg1(28,16,-4,true)
	xg1(227,16,-12,true)
	gg.sleep(500)
	xg1(130,16,-8,false)--y
	xg1(28,16,-4,false)
	xg1(227,16,-12,false)
       
    
--中心")
    end):start() end
        ,     
    },  
   
      {"高台1",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(803,16,-8,true)--y
	xg1(-2245.1,16,-4,true)
	xg1(272,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(-2245.1,16,-4,false)
	xg1(272,16,-12,false)
       
    
--高台1")
    end):start() end
        ,     
    },    {"高台2",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(803,16,-8,true)--y
	xg1(1185,16,-4,true)
	xg1(-1718,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(1185,16,-4,false)
	xg1(-1718,16,-12,false)
       
    
--高台2")
    end):start() end
        ,       
    }, 
}),   RG.buts({
    {"高台3",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(1169,16,-4,false)
	xg1(2253,16,-12,false)
       
    
--高台3")
    end):start() end
        ,       
	}, { "地下小空间",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(-95.5,16,-8,true)--y
	xg1(-1452.46,16,-4,true)
	xg1(1185,16,-12,true)
	gg.sleep(500)
xg1(-45.5,16,-8,false)--y
	xg1(-1452.46,16,-4,false)
	xg1(1185,16,-12,false)
       
    
--地下小空间")
    end):start() end
        ,       
	},{"柱子里",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(10,16,-8,false)--y
	xg1(547,16,-4,false)
	xg1(-616,16,-12,false)
	gg.sleep(500)
	xg1(10,16,-8,false)--y
	xg1(547,16,-4,false)
	xg1(-616,16,-12,false)
       
    
--柱子里")
    end):start() end
        ,       
	},
}),   RG.buts({
	{"斜坡旁(建议解体",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(-90,16,-8,true)--y
	xg1(1028,16,-4,true)
	xg1(789,16,-12,true)
	gg.sleep(500)
	xg1(-90,16,-8,false)--y
	xg1(1028,16,-4,false)
	xg1(789,16,-12,false)
       
    
--斜坡旁(建议解体")
    end):start() end
        ,       
	},  
                })
            }),      
           RG.box({"试验场",
RG.buts({

 {"雷达",
  function() luajava.newThread(function()  fw1=false    
	 
xg1(1546,16,-8,true)
xg1(1649.94140625,16,-4,true)
xg1(-3236.765625,16,-12,true)
	gg.sleep(500)
	xg1(1546,16,-8,false)
xg1(1649.94140625,16,-4,false)
xg1(-3236.765625,16,-12,false)
       
    
--雷达")
    end):start() end
        ,      
    },        {"车库",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(-50,16,-8,true)--y
	xg1(2280,16,-4,true)
	xg1(-4875,16,-12,true)
	gg.sleep(500)
	xg1(-50,16,-8,false)--y
	xg1(2280,16,-4,false)
	xg1(-4875,16,-12,false)
       
    
--车库")
    end):start() end
        ,     
    },

  
    {"禁闭小屋",
function() luajava.newThread(function()  fw1=false    
	 
xg1(427,16,-8,true)
xg1(986.94140625,16,-4,true)
xg1(-2060.765625,16,-12,true)
	gg.sleep(500)
	xg1(427,16,-8,false)
xg1(986.94140625,16,-4,false)
xg1(-2060.765625,16,-12,false)
       
    
--禁闭小屋")
    end):start() end
        ,        
    },    
}),   RG.buts({
          {"雷达旁",
   function() luajava.newThread(function()  fw1=false    
	 
xg1(1210,16,-8,true)--y
	xg1(426,16,-4,true)
	xg1(-2630,16,-12,true)
	gg.sleep(500)
xg1(1210,16,-8,false)--y
	xg1(426,16,-4,false)
	xg1(-2630,16,-12,false)
       
    
--雷达旁")
    end):start() end
        ,     
    },     {"发射仓",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(220,16,-8,true)--y
	xg1(-4458,16,-4,true)
	xg1(-825,16,-12,true)
	gg.sleep(500)
	xg1(220,16,-8,false)--y
	xg1(-4458,16,-4,false)
	xg1(-825,16,-12,false)
       
    
--发射仓")
    end):start() end
        ,       
    },
    {"大圆环",
  function() luajava.newThread(function()  fw1=false    
	 
xg1(578,16,-8,true)--y
	xg1(-2255,16,-4,true)
	xg1(2614,16,-12,true)
	gg.sleep(500)
	xg1(578,16,-8,false)--y
	xg1(-2255,16,-4,false)
	xg1(2614,16,-12,false)
       
    
--大圆环")
    end):start() end
        ,      
    },
}),   RG.buts({
    {"猫爬架",
 function() luajava.newThread(function()  fw1=false    
	 
xg1(448.6,16,-8,true)--y
	xg1(-2007,16,-4,true)
	xg1(1435,16,-12,true)
	gg.sleep(500)
	xg1(448.6,16,-8,false)--y
	xg1(-2007,16,-4,false)
	xg1(1435,16,-12,false)
       
    
--猫爬架")
    end):start() end
        ,       
    },  


    {"地图右上角斜坡",
 function() luajava.newThread(function()  fw1=false    
	 
	xg1(10,16,-8,true)--y
	xg1(1156,16,-4,true)
	xg1(1357,16,-12,true)
	gg.sleep(500)
	xg1(3,16,-8,false)--y
	xg1(1156,16,-4,false)
	xg1(1357,16,-12,false)
       
    
--地图右上角斜坡")
    end):start() end
        ,       
    },   
                })
            }),
RG.check({"注意:进入游戏约7秒后传送才可以使用",}),             
 RG.box1({"教程模式",           
            RG.box({"建造模式新手教程",
RG.buts({

         {"建造规则",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(4,16,-8,false)--y
	xg1(752.199,16,-4,false)
	xg1(-102,16,-12,false)
	gg.sleep(500)
xg1(4,16,-8,false)--y
	xg1(752.199,16,-4,false)
	xg1(-102,16,-12,false)
	
xg1(244,16,-8,true)--y
	xg1(2509,16,-4,true)
	xg1(-109,16,-12,true)
	gg.sleep(500)
xg1(244,16,-8,false)--y
	xg1(2509,16,-4,false)
	xg1(-109,16,-12,false)
       
    
--建造规则")
    end):start() end
        ,
    
        
    },    {"摧毁规则",
    function() luajava.newThread(function()  fw1=false    
	 
xg1(8,16,-8,true)--y
	xg1(-867.941,16,-4,true)
	xg1(-112,16,-12,true)
	gg.sleep(500)
	xg1(8,16,-8,true)--y
	xg1(-867.941,16,-4,true)
	xg1(-112,16,-12,true)
	
xg1(5,16,-8,false)--y
	xg1(727,16,-4,false)
	xg1(-106,16,-12,false)	
	gg.sleep(500)
	xg1(5,16,-8,false)--y
	xg1(727,16,-4,false)
	xg1(-106,16,-12,false)	
       
    
--摧毁规则")
    end):start() end
        ,
        
    },    
                })                }),
 RG.box({"占点模式新手教程",
RG.buts({
   
         {"快速进点",
 function() luajava.newThread(function()  fw1=false	
  xg1(-13,16,-8,false)--y
	xg1(-14.199,16,-4,false)
	xg1(-1652,16,-12,false)
	gg.sleep(500)
xg1(-13,16,-8,false)--y
	xg1(-14.199,16,-4,false)
	xg1(-1652,16,-12,false)
	 
    
--快速进点")
    end):start() end
	 },    
                })    
                            })               
            }),  
    
      

},

{
RG.box({"设置重力",---box示例 可以删掉
RG.button("自身反重力plus",
            function() luajava.newThread(function()  fw1=false
    search(17039360,4,4)
py1(17039360,4,416)
xg1(-100,16,48,true)
 
    
--自身反重力plus")
    end):start() end), 
RG.button("自身反重力",
            function() luajava.newThread(function()  fw1=false
    search(17039360,4,4)
py1(17039360,4,416)
xg1(-3,16,48,true)
                 
    
--自身反重力")
    end):start() end),  
 RG.button("自身无重力",
            function() luajava.newThread(function()  fw1=false
    search(17039360,4,4)
py1(17039360,4,416)
xg1(0,16,48,true)
    end):start() end),                
RG.button("自身高重力",
            function() luajava.newThread(function()  fw1=false
    search(17039360,4,4)
py1(17039360,4,416)
xg1(3,16,48,true)
    end):start() end), 
RG.button("自身高重力plus",
            function() luajava.newThread(function()  fw1=false
    search(17039360,4,4)
py1(17039360,4,416)
xg1(100,16,48,true)
    end):start() end), 
RG.button("恢复重力",
            function() luajava.newThread(function()  fw1=false
search(17039360,4,4)
py1(17039360,4,416)
xg1(0.2,16,48,false)
    end):start() end),
                }),
 RG.line(),           
RG.box({"设置视角(有时开启失败",---box示例 可以删掉
RG.button("极广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
xg1(4.3,16,-400,true)
    end):start() end),  
RG.button("超广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
xg1(3.75,16,-400,true)
    end):start() end),  
    RG.button("广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
xg1(3,16,-400,true)
    end):start() end),
RG.button("近角",
            function() luajava.newThread(function()  fw1=false
                    search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
xg1(-2,16,-400,true)
    end):start() end),  
RG.button("超近角",
            function() luajava.newThread(function()  fw1=false
         search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)

xg1(-4,16,-400,true)
    end):start() end),    
RG.button("核心视角",
            function() luajava.newThread(function()  fw1=false
                    search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)
xg1(-0.01,16,-400,true)
    end):start() end), 

RG.button("恢复视角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)
xg1(1.875,16,-400,false)
    end):start() end),
                }),
 RG.line(),               
RG.box({"设置视角(硬核",---box示例 可以删掉
RG.button("极广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(90.114514,16,-40,true)
    end):start() end),  
RG.button("超广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(60.114514,16,-40,true)
    end):start() end),  
    RG.button("广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(10.114514,16,-40,true)
    end):start() end),
RG.button("近角",
            function() luajava.newThread(function()  fw1=false
                    search(-1.2566370964050293,16,neicun)
xg1(-10.114514,16,-40,true)
    end):start() end),  
RG.button("超近角",
            function() luajava.newThread(function()  fw1=false
     search(-1.2566370964050293,16,neicun)
xg1(-60.114514,16,-40,true)
 
    
--超近角")
    end):start() end),    
RG.button("核心视角",
            function() luajava.newThread(function()  fw1=false
                    search(-1.2566370964050293,16,neicun)
xg1(-0.01,16,-40,true)
    end):start() end),    
RG.button("恢复视角",
            function() luajava.newThread(function()  fw1=false
search(59.11451,3,16,neicun)
xg1(-1.2566370964050293,16,-40,false)
    end):start() end),
                }),
                RG.line(),
 RG.box({"设置光照",   
RG.button("爆亮",
            function() luajava.newThread(function()  fw1=false
            gz='999.96355'
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.editAll("999.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--爆亮")
    end):start() end),
 RG.button("明亮",
            function() luajava.newThread(function()  fw1=false
                        gz='1899.96355'
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.editAll("1899.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--明亮")
    end):start() end),                               
                RG.button("阴暗",
            function() luajava.newThread(function()  fw1=false
                        gz='-1899.96355'
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前200个代码
gg.editAll("-1899.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--阴暗")
    end):start() end),            
RG.button("黑暗",
            function() luajava.newThread(function()  fw1=false
            gz='-999.96355'
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前200个代码
gg.editAll("-999.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--黑暗")
    end):start() end),
      
RG.button("恢复光照",
            function() luajava.newThread(function()  fw1=false
            gg.diyToast("正在恢复")
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber(gz,FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(12100)--修改前1200个代码
gg.editAll("-1", FLOAT)
gg.diyToast("恢复完成")
 
    
--恢复光照")
    end):start() end),                
                
                }),
                RG.line(),
RG.box({"设置透视",
  RG.button("地面透视",
function() luajava.newThread(function() 
toushi='31,165,001,600'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,165,001,600',gg.TYPE_QWORD)
   
    
--地面透视")
    end):start() end),    
RG.button("地面透视 Pro",
function() luajava.newThread(function() 
toushi='31,215,001,600'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,215,001,600',gg.TYPE_QWORD)
   
    
--地面透视 Pro")
    end):start() end),
  RG.button("全透视",
function() luajava.newThread(function() 
toushi='31,215,001,900'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,215,001,900',gg.TYPE_QWORD)
   
    

    end):start() end),
RG.button("透视+特效增大",
function() luajava.newThread(function() 
toushi='31,200,030,000'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,200,030,000',gg.TYPE_QWORD)
   
    

    end):start() end),  
  RG.button("恢复透视",
            function() luajava.newThread(function()  fw1=false
 gg.diyToast("正在恢复")           
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber(toushi,gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,138,512,896',gg.TYPE_QWORD)
gg.diyToast("恢复完成")  
 
    

    end):start() end),                
              
                }), 
                RG.line(),              
RG.box({'天罚功能',
RG.button("天罚加速",
 function() luajava.newThread(function()  fw1=falsegg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(-0.8,16,76,true)
       
    

    end):start() end)
        ,
RG.button("天罚减速",
 function() luajava.newThread(function()  fw1=falsegg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(1,16,76,true)
       
    

    end):start() end)
        ,
RG.button("天罚无速度",
 function() luajava.newThread(function()  fw1=falsegg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(100,16,76,true)
       
    

    end):start() end)
        ,
RG.button("天罚龟速",
 function() luajava.newThread(function()  fw1=falsegg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(1.65,16,76,true)
       
    

    end):start() end)
        ,
RG.button("天罚瞬速",
            function() luajava.newThread(function()  fw1=false 
 gg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)             
search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
    xg1(-15,16,76,true)
       
    

    end):start() end)
,
RG.button("天罚旋转",
 function() luajava.newThread(function()  fw1=falsegg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(999,16,56,true)
       
    

    end):start() end
      )  ,
RG.button("天罚传送至高空",
    
     function() luajava.newThread(function()  fw1=false          gg.diyToast("请使用天罚并保证视角在天罚上")
          gg.sleep(1200)
	search(17039620,4,4)
	py1(16777215,4,-36)
	py1(259,4,-32)
	py1(17039620,4,0)
	xg1(3200,16,-8,false)
       
    

    end):start() end

    ),
          
              }),
RG.line(),    
 RG.box({"设置核心跳跃高度",---box示例 可以删掉

RG.button("15 (极高",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(15,16,96,true)
                 
    

    end):start() end),  
RG.button("10 (高",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(10,16,96,true)
                 
    

    end):start() end),  
    RG.button("5 (略高",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(5,16,96,true)
                 
    

    end):start() end),
RG.button("1 (正常",
            function() luajava.newThread(function()  fw1=false
                    search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(1,16,96,true)
 
    

    end):start() end),  
RG.button("0.5 (低",
            function() luajava.newThread(function()  fw1=false
                    search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(0.5,16,96,true)
 
    

    end):start() end),    
RG.button("0.1 (极低",
            function() luajava.newThread(function()  fw1=false
                    search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(0.1,16,96,true)
     
    

    end):start() end),       
RG.button("恢复跳跃高度",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(1,16,96,false)
                 
    

    end):start() end),
                }),   
RG.line(),    
 RG.box({"设置拖拽感",---box示例 可以删掉
RG.button("极大",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(899.62,16,184,true)
                 
    

    end):start() end),  
RG.button("大",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(399.62,16,184,true)
                 
    

    end):start() end),  
RG.button("反方向",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(-599.62,16,184,true)
 
    

    end):start() end),  
RG.button("固定位置",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(9399.62,16,184,true)
 
    

    end):start() end),    
         
RG.button("恢复",
            function() luajava.newThread(function()  fw1=false
search(17039364, 4, 4)
	py1(16777215, 4, -36)
	py1(257, 4, -32) 
xg1(0,16,184,false)
                 
    

    end):start() end),
                }), 
    RG.line(),
 RG.box({"音效延迟(不可恢复",---box示例 可以删掉
RG.button("10秒",
            function() luajava.newThread(function()  fw1=false
    
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("10.114514", gg.TYPE_FLOAT)
	 gg.diyToast("音效延迟")
	 gg.clearResults()
                 
    

    end):start() end),  
RG.button("5秒",
            function() luajava.newThread(function()  fw1=false
     
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("5.114514", gg.TYPE_FLOAT)
	 gg.diyToast("音效延迟")
	 gg.clearResults()
                 
    

    end):start() end),  
    RG.button("2秒",
            function() luajava.newThread(function()  fw1=false
     
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("3.114514", gg.TYPE_FLOAT)
	 gg.diyToast("音效延迟")
	 gg.clearResults()
                 
    

    end):start() end),                            
                }),   
RG.line(),                    
RG.box({"需解体功能",---box示例 可以删掉

    RG.button("翻滚",
            function() luajava.newThread(function()  fw1=false
 search(992204554, 4, 4)
 py1(992204554, 4, 0)
 py1(1956496814, 4, 8)
xg1(99,16,-40,true)
                 
    

    end):start() end),
RG.button("发癫",
            function() luajava.newThread(function()  fw1=false
                    search(992204554, 4, 4)
    py1(992204554, 4, 0)
    py1(1956496814, 4, 8)
xg1(55,16,0,true)
 
    

    end):start() end),  
RG.button("转向Q弹",
            function() luajava.newThread(function()  fw1=false
     search(992204554, 4, 4)
    py1(992204554, 4, 0)
    py1(1956496814, 4, 8)
xg1(0,16,100,true)
 
    

    end):start() end),    
RG.button("失控",
            function() luajava.newThread(function()  fw1=false
search(992204554, 4, 4)
    py1(992204554, 4, 0)
    py1(1956496814, 4, 8)
xg1(-55,11,100,true)
 
    

    end):start() end),    
RG.button("磁悬浮核心",   
function() luajava.newThread(function() 
search(992204554, 4, 4)
 py1(992204554, 4, 0)
 py1(1956496814, 4, 8)
xg1(0,16,92,true)
xg1(0,16,84,true)             
     
    

    end):start() end),                                                        
RG.button("恢复以上功能",
            function() luajava.newThread(function()  fw1=false
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
xg1(1,16,96,false)
                 
    

    end):start() end),
                }),
                RG.line(),  
RG.box({"地图功能",---box示例 可以删掉
RG.button("虚空世界",
            function() luajava.newThread(function()  fw1=false
    search(1203982336,4,4)
py1(1065353216,4,-468)
py1(-257,4,-420)
py1(-943501312,4,-32)
py1(1203982336,4,-28)
py1(-943501312,4,12)
py1(1203982336,4,16)
xg1(99999,16,-352,true)
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(3000,16,168,false)
 
    

    end):start() end),  
    
 RG.button("崩坏世界(闪退",
            function() luajava.newThread(function()  fw1=false
search(1203982336,4,4)
py1(1065353216,4,-468)
py1(-257,4,-420)
py1(-943501312,4,-32)
py1(1203982336,4,-28)
py1(-943501312,4,12)
py1(1203982336,4,16)
xg1(9999,16,-352,true)
 
    

    end):start() end),  

              
RG.button("迷雾世界",
            function() luajava.newThread(function()  fw1=false
search(1203982336,4,4)
py1(1065353216,4,-468)
py1(-257,4,-420)
py1(-943501312,4,-32)
py1(1203982336,4,-28)
py1(-943501312,4,12)
py1(1203982336,4,16)
xg1(-19999,16,-352,true)
search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(3000,16,168,false)
 
    

    end):start() end),  
RG.button("•恢复世界",
            function() luajava.newThread(function()  fw1=false
search(1203982336,4,4)
py1(1065353216,4,-468)
py1(-257,4,-420)
py1(-943501312,4,-32)
py1(1203982336,4,-28)
py1(-943501312,4,12)
py1(1203982336,4,16)
xg1(0,16,-352,false)
 
    

    end):start() end),  
RG.switch("绿色世界",
            function() luajava.newThread(function() 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1200)--设置修改前200个代码
gg.editAll("3.468814637", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
                 
    

    end):start() end,
function() luajava.newThread(function() 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.468814637",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1200)--设置修改前200个代码
gg.editAll("2", FLOAT)
gg.diyToast("恢复成功")
gg.clearResults()
 
    

    end):start() end
                ),                
                }),
                RG.line(),   
RG.box({"设置速度显示数值",---box示例 可以删掉

RG.button("100000000",
            function() luajava.newThread(function()  fw1=false
        search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(100000000,16,4,true)
 
    

    end):start() end),   
    
RG.button("10",
            function() luajava.newThread(function()  fw1=false
    search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(10,16,4,true)
 
    

    end):start() end),  
    
 RG.button("3",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(3,16,4,true)
 
    

    end):start() end),  

              
RG.button("-3",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(-3,16,4,true)
 
    

    end):start() end),  
RG.button("0",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(0,16,4,false)
 
    

    end):start() end),  


                }),
RG.line(),                    
RG.box({"设置UI崩坏",---box示例 可以删掉
RG.button("设置（不可恢复",
            function() luajava.newThread(function()  fw1=false
search(1650667016,4,4)
py1(1650667016,4,0)
xg1(0.8,16,-56,true)
 
    

    end):start() end),  
                }),
RG.line(),                   
RG.box({"设置枪口上抬(后坐力",---box示例 可以删掉
RG.button("无上抬",
            function() luajava.newThread(function()  fw1=false
search(1077149696,4,4)
py1(1071644672,4,-96)
py1(1202590843,4,-52)
xg1(0,64,236,true)
                 
    

    end):start() end),  
RG.button("严重上抬",
            function() luajava.newThread(function()  fw1=false
search(1077149696,4,4)
py1(1071644672,4,-96)
py1(1202590843,4,-52)
xg1(25,64,236,true)
                 
    

    end):start() end),  
    



                }), 
RG.line(),                
RG.box({"设置视角朝向",---box示例 可以删掉
RG.button('不抬不低',
            function() luajava.newThread(function()  fw1=false
                    search(-1079977604,4,4)
		py1(-1079977604,4,0)
		py1(1067506044,4,4)
		xg1(0,16,-8,true)
 
    

    end):start() end),    
RG.button('仰望天空',
            function() luajava.newThread(function()  fw1=false
                    search(-1079977604,4,4)
		py1(-1079977604,4,0)
		py1(1067506044,4,4)
		xg1(-1,16,-8,true)
 
    

    end):start() end),    
RG.button("抬不起头",
            function() luajava.newThread(function()  fw1=false
                    search(-1079977604,4,4)
		py1(-1079977604,4,0)
		py1(1067506044,4,4)
		xg1(1,16,-8,true)
     
    

    end):start() end),       
RG.button("恢复视角",
            function() luajava.newThread(function()  fw1=false
search(-1079977604,4,4)
		py1(-1079977604,4,0)
		py1(1067506044,4,4)
		xg1(0,16,-8,false)
                 
    

    end):start() end),
                }),
                  
 RG.line(),            
RG.box({'内增高',
RG.button("细微",
 function() luajava.newThread(function()  fw1=falsegg.clearResults()
search(-687194767,4,4)
py1(54,4,8)
py1(858993459,4,24)
xg1(1.2,64,408,true)
gg.diyToast("开启成功,请解体修复")
       
    

    end):start() end)
        ,
RG.button("略高",
 function() luajava.newThread(function()  fw1=falsegg.clearResults()
search(-687194767,4,4)
py1(54,4,8)
py1(858993459,4,24)
xg1(2.1,64,408,true)
gg.diyToast("开启成功,请解体修复")
       
    

    end):start() end)
        ,
RG.button("高",
 function() luajava.newThread(function()  fw1=falsegg.clearResults()
search(-687194767,4,4)
py1(54,4,8)
py1(858993459,4,24)
xg1(3.1,64,408,true)
gg.diyToast("开启成功,请解体修复")
       
    

    end):start() end)
        ,

RG.button("恢复",
    
     function() luajava.newThread(function()  fw1=false          gg.clearResults()
search(-687194767,4,4)
py1(54,4,8)
py1(858993459,4,24)
xg1(0.88,64,408,true)
gg.diyToast("恢复成功,请解体修复")
       
    

    end):start() end

    ),
          
              }),
RG.line(),    
RG.switch("枪斗术",
    function() luajava.newThread(function() 
if gg.getRangesList("libclient.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libclient.so")[1]["start"] + 0x1FDF7E4; -- 数值地址:0x7C5C9B17E4
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 16,
			value = 99999,
		},
	})
end
gg.diyToast("开启")
     
    

    end):start() end,
    function() luajava.newThread(function() 
if gg.getRangesList("libclient.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libclient.so")[1]["start"] + 0x1FDF7E4; -- 数值地址:0x7C5C9B17E4
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 16,
			value = -185,
		},
	})
end
gg.diyToast("恢复")
	 
    

    end):start() end
     ),
RG.switch(
		"打核心特效放大",
		function()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1.2;1.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('9.1973451344',gg.TYPE_FLOAT)
end,
function()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('9.1973451344',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('1.2',gg.TYPE_FLOAT)
		end),

RG.radio({
   "娱乐功能",
  {"破隐",
    function() luajava.newThread(function()  fw1=false
 local t = {"libclient.so:bss", "Cb"}
local tt = {0x459C50, 0x10, 0x18, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1145, freeze = true}})
gg.diyToast("开启成功")
 
    

    end):start() end
        ,
    },
{"地面透明",
    function() luajava.newThread(function()  fw1=false
local t = {"libclient.so:bss", "Cb"}
local tt = {0x459C50, 0x10, 0x18, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 32, value = 9999}})
gg.diyToast("开启成功")
 
    

    end):start() end
        ,
    },
    
        {"隐藏UI",
 function() luajava.newThread(function()  fw1=false        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("114511.634", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	       end
     
    

    end):start() end
        ,
    },    {"恢复UI",
 function() luajava.newThread(function()  fw1=false        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("114511.634", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("恢复失败")
else
	 gg.searchNumber("114511.634", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.diyToast("恢复成功")
	 gg.clearResults()
	       end
     
    

    end):start() end


,
    },    {"无法移动",
    
 function() luajava.newThread(function()  fw1=false        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-0.958", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	       end
     
    

    end):start() end
        ,
    },
    
    {"恢复移动",
     function() luajava.newThread(function()  fw1=false        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-0.958", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("-0.958", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	       end
     
    

    end):start() end,
    },
    {"视角锁定",
 function() luajava.newThread(function()  fw1=false
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("114514", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	       end
     
    

    end):start() end
        ,
    },    {"恢复视角",
 function() luajava.newThread(function()  fw1=false
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("0.03", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	       end
     
    

    end):start() end
        ,
    },    {"特效加速",
 function() luajava.newThread(function()  fw1=false
	
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.clearResults()
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("特效加速失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(85)
	 gg.editAll("250", gg.TYPE_FLOAT)
	 gg.diyToast("特效加速成功")
	 gg.clearResults()
	       end 
				
 
    

    end):start() end 
        ,
    },  {"特效减速",
    function() luajava.newThread(function()  fw1=false
        

				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.clearResults()
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("特效减速失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(85)
	 gg.editAll("0.00115", gg.TYPE_FLOAT)
	 gg.diyToast("特效减速成功")
	 gg.clearResults()
	       end 
				
 
    

    end):start() end
        ,
    },    {"恢复特效速度",
    function() luajava.newThread(function()  fw1=false
gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
	 
gg.searchNumber("0.00115", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(85)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("恢复成功")
	 gg.clearResults()
	 
else
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("恢复成功")
	 gg.clearResults()
	 end
				
 
    

    end):start() end
        ,
    },

 {"穿墙(推荐解体" ,
function() luajava.newThread(function()  fw1=false
search(8.2795719786463182E-41,16,neicun)
py1(5.739718509874451E-42,16,12)
xg1(0,64,40)
xg1(0,64,72)
xg1(0,64,76)
xg1(0,64,72)
xg1(0,64,76)
       
    

    end):start() end,
},{"转圈圈",
    function() luajava.newThread(function()  fw1=false   
    search(17039364,4,neicun)
py1(16777215,4,-36)
py1(257,4,-32)
xg1(969.37,16,56,true)
       
    

    end):start() end
        ,
    },   {"恢复",
function() luajava.newThread(function()  fw1=false
gg.clearList() 
gg.setValues(z) 
 
    

    end):start() end  ,
    },
                }),
       
},{
RG.box({"仿gg变速自瞄炮(不是)",---box示例 可以删掉
			 RG.button("开启",
            function() luajava.newThread(function() 
                    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("500", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	if gg.getResultCount() == 0 then
		gg.diyToast("开启失败")
		else
		gg.searchNumber("500",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(200)--设置修改前200个代码
		gg.editAll("-9999999999929194514", FLOAT)
		gg.diyToast("开启成功")
		gg.clearResults()
	end
                 
    

    end):start() end),
                RG.button("关闭",
                function() luajava.newThread(function() 
  gg.searchNumber("-9999999999929194514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
		gg.editAll("500", FLOAT)
		gg.diyToast("恢复成功")
		gg.clearResults()
				 
    

    end):start() end),
                }),
RG.box({
'其它外挂',
RG.radio({
   "———均有改动———",
    {"Hexago汉化",
    function() luajava.newThread(function()  fw1=false 
 loadYunLua("http://jiami.guimei.work/a/1694026713.txt")       
     
    

    end):start() end
        ,
   }, {"64位ARM hunter",
    function() luajava.newThread(function()  fw1=false 
 loadYunLua("http://jiami.guimei.work/a/1695945268.txt")       
     
    

    end):start() end
        ,
    }, {"ARMSpro.V3.0",
    function() luajava.newThread(function()  fw1=false 
 loadYunLua("http://jiami.guimei.work/a/1694026727.txt")       
     
    

    end):start() end
        ,
    }, 
  }  ),

                }),
RG.line(),
RG.box({"闪退功能",---box示例 可以删掉
RG.button("进入虚幻世界",
            function() luajava.newThread(function()  fw1=false
	gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("进入失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.1115616", gg.TYPE_FLOAT)
	 gg.diyToast("进入成功")
	 gg.clearResults()
	       end		
                 
    

    end):start() end),  
RG.button("回到现实(有后遗症",

            function() luajava.newThread(function()  fw1=false
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2.1115616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("返回失败")
else
	 gg.searchNumber("2.1115616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("返回成功,会有后遗症")
	 gg.clearResults()
	       end	
                 
    

    end):start() end),  
    RG.button("薄雾",
            function() luajava.newThread(function()  fw1=false
            szwq='-0.55641'
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-0.55641", gg.TYPE_FLOAT)
	 gg.diyToast("薄雾")
	 gg.clearResults()
                 
    

    end):start() end),
RG.button("浓雾",
            function() luajava.newThread(function()  fw1=false
 szwq='999.346621'           
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("999.346621", gg.TYPE_FLOAT)
	 gg.diyToast("浓雾")
	 gg.clearResults()
 
    

    end):start() end),  
RG.button("除雾",
            function() luajava.newThread(function()  fw1=false
            szwq='0.000000000000000000000001'
     gg.diyToast("清除天边的雾")
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0.000000000000000000000001", gg.TYPE_FLOAT)
	 gg.diyToast("除雾")
	 gg.clearResults()
 
    

    end):start() end),    
RG.button("恢复雾气",
            function() luajava.newThread(function()  fw1=false
             gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(szwq, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 	 gg.getResults(99999)
	 gg.editAll("0.00999999978", gg.TYPE_FLOAT)
	 gg.diyToast("恢复完成")
	 gg.clearResults()
 
    

    end):start() end),    

RG.button("地图背景转换",   
function() luajava.newThread(function() 
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	  gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 
	 gg.clearResults()
            
    

    end):start() end),                                          
                              }),                      
RG.line(),
RG.radio({
   "较实用功能",

    {"不倒翁",
    function() luajava.newThread(function()  fw1=false 
        
            editData(
      {
        {["memory"] = neicun},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 0,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 0,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      )
      gg.diyToast('function go')
               
    

    end):start() end
        ,
    },    {"反向不倒翁",
    function() luajava.newThread(function()  fw1=false 
        
            editData(
      {
        {["memory"] = neicun},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 1,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 1,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      )
      gg.diyToast('function go')
               
    

    end):start() end
,
    },       {"爬墙",
    
    function() luajava.newThread(function()  fw1=false
gg.sleep(300)
	search(17039360,4,4)
		py1(65792,4,56)
		xg1(900,16,-8,true)
       
    

    end):start() end
        ,
    },   {"远程捡队友核心",
    
    function() luajava.newThread(function()  fw1=false
search(1083668903,4,4)
xg1(1114514,16,0,false)
xg1(114514,16,-4,false)
       
    

    end):start() end
        ,
    },
                }),  
RG.switch("手机连续振动",
function() 
zhendong=true
while zhendong==true do gg.sleep(300)--振动频率0.3秒             
vibra:vibrate(35) --振动强度(没试过100，自己逝，手机出问题别找我
end end,
function() 
zhendong=false
end
 
 ),		    
},{
RG.check({"是否封号取决于你的演技",}),
RG.check({"功能在本质上没有改变,只是将效果缩小",}),
RG.check({"记得开防封",}),
RG.button("无后坐力",
function() luajava.newThread(function()  fw1=false
search(1077149696,4,4)
py1(1071644672,4,-96)
py1(1202590843,4,-52)
xg1(0,64,236,true)
end):start() end),  
RG.line(),
RG.box({"设置循环范围",
RG.radio({"",
    {"极小核心范围",
function() luajava.newThread(function()  fw1=false
gg.diyToast("萌新") 
search(4.73360013961792,16,4)--萌新
py1(4.791800022125244,16,4)
xg1(20,16,0,false)
xg1(20,16,-4,false) 
gg.diyToast("夜莺") 
search(4.912199974060059,16,4)--夜莺
py1(7.106599807739258,16,4)
xg1(20,16,0,false)
xg1(20,16,-4,false) 
gg.diyToast("网虫") 
 search(9.900099754333496,16,4)--网虫
py1(4.437600135803223,16,-4)
xg1(29,16,-4,false)
xg1(29,16,-8,false) 
gg.diyToast("风声") 
 search(2.997499942779541,16,4)--风声
py1(5.773600101470947,16,4)
xg1(20,16,0,false)
xg1(20,16,-4,false) 
gg.diyToast("火萤") 
 search(4.906000137329102,16,4)--火萤
py1(4.9253997802734375,16,4)
xg1(20,16,0,false)
xg1(20,16,-4,false) 

gg.diyToast("凯鼠") 
 search(3.605950117111206,16,4)
py1(2.802596928649634E-45,16,-8)
py1(3.605950117111206,16,0)
xg1(20,16,0,true)
xg1(20,16,-4,true)
      end):start() end,
    },{"极小秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
gg.diyToast("为极小的频率优化秒杀范围") 
fw1=true
while fw1==true do 
gg.diyToast("Start execution") 
search(7.707281683632926E-41,16,neicun)
py1(1.0,16,24)
py1(0.0,16,36)
py1(4.5,16,60)
xg1(10,16,60,false)
xg1(10,16,56,false)
sleep(200)
	 end 
end):start() end
}, 
              }),
RG.button("停止循环" ,
function() luajava.newThread(function() 
fw1=false
fw1=false    
end):start() end),
}),
RG.line(),
RG.switch("细微不漂移加速",
            function() luajava.newThread(function()  fw1=false
local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 2}})



local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x8, 0x18, 0x20, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value =2}})



local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 2}})
gg.diyToast("已开启") 
end):start() end,
function()
local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x8, 0x18, 0x20, 0x14}-----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xCEBCC8, 0x50, 0x8, 0x8, 0x8, 0x8, 0x30, 0x38, 0x40, 0x18, 0x14}----加速
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.9}})
gg.diyToast("已关闭")
end),  
RG.line(),
RG.button("破隐",
function() luajava.newThread(function()  fw1=false
 local t = {"libclient.so:bss", "Cb"}
local tt = {0x459C50, 0x10, 0x18, 0x0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 16, value = 1145, freeze = true}})
gg.diyToast("开启成功")
end):start() end),  
RG.line(),
RG.box({"设置视角(有时开启失败",---box示例 可以删掉
RG.button("极广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)

xg1(4.3,16,-400,true)
                 
    
--极广角")
    end):start() end),  
RG.button("超广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)

xg1(3.75,16,-400,true)
                 
    
--超广角")
    end):start() end),  
    RG.button("广角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)

xg1(3,16,-400,true)
                 
    
--广角")
    end):start() end),
RG.button("近角",
            function() luajava.newThread(function()  fw1=false
                    search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)

xg1(-2,16,-400,true)
 
    
--近角")
    end):start() end),  
RG.button("超近角",
            function() luajava.newThread(function()  fw1=false
         search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)

xg1(-4,16,-400,true)
 
    
--超近角")
    end):start() end),    
RG.button("核心视角",
            function() luajava.newThread(function()  fw1=false
                    search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)
xg1(-0.01,16,-400,true)
 
    
--核心视角")
    end):start() end), 

RG.button("恢复视角",
            function() luajava.newThread(function()  fw1=false
search(3.640625,16,neicun)
py1(3.140625,16,-664)
py1(3.640625,16,-568)
py1(1.899999976158142,16,-544)
xg1(1.875,16,-400,false)
                 
    
--恢复视角")
    end):start() end),
                }),
 RG.line(),               
RG.box({"设置视角(硬核",---box示例 可以删掉
RG.button("极广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(90.114514,16,-40,true)
                 
    
--极广角")
    end):start() end),  
RG.button("超广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(60.114514,16,-40,true)
                 
    
--超广角")
    end):start() end),  
    RG.button("广角",
            function() luajava.newThread(function()  fw1=false
search(-1.2566370964050293,16,neicun)
xg1(10.114514,16,-40,true)
                 
    
--广角")
    end):start() end),
RG.button("近角",
            function() luajava.newThread(function()  fw1=false
                    search(-1.2566370964050293,16,neicun)
xg1(-10.114514,16,-40,true)
 
    
--近角")
    end):start() end),  
RG.button("超近角",
            function() luajava.newThread(function()  fw1=false
     search(-1.2566370964050293,16,neicun)
xg1(-60.114514,16,-40,true)
 
    
--超近角")
    end):start() end),    
RG.button("核心视角",
            function() luajava.newThread(function()  fw1=false
                    search(-1.2566370964050293,16,neicun)
xg1(-0.01,16,-40,true)
 
    
--核心视角")
    end):start() end),    

                                                                      
RG.button("恢复视角",
            function() luajava.newThread(function()  fw1=false
search(59.11451,3,16,neicun)
xg1(-1.2566370964050293,16,-40,false)
                 
    
--恢复视角")
    end):start() end),
                }),
                RG.line(),
 RG.box({"设置光照",
   
RG.button("爆亮",
            function() luajava.newThread(function()  fw1=false
            gz='999.96355'
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.editAll("999.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--爆亮")
    end):start() end),
 RG.button("明亮",
            function() luajava.newThread(function()  fw1=false
                        gz='1899.96355'
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.editAll("1899.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--明亮")
    end):start() end),                               
                RG.button("阴暗",
            function() luajava.newThread(function()  fw1=false
                        gz='-1899.96355'
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前200个代码
gg.editAll("-1899.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--阴暗")
    end):start() end),            
RG.button("黑暗",
            function() luajava.newThread(function()  fw1=false
            gz='-999.96355'
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前200个代码
gg.editAll("-999.96355", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
end
                 
    
--黑暗")
    end):start() end),
      
RG.button("恢复光照",
            function() luajava.newThread(function()  fw1=false
            gg.diyToast("正在恢复")
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber(gz,FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(12100)--修改前1200个代码
gg.editAll("-1", FLOAT)
gg.diyToast("恢复完成")
 
    
--恢复光照")
    end):start() end),                
                
                }),
                RG.line(),
RG.box({"设置透视",
  RG.button("地面透视",
function() luajava.newThread(function() 
toushi='31,165,001,600'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,165,001,600',gg.TYPE_QWORD)
   
    
--地面透视")
    end):start() end),    
RG.button("地面透视 Pro",
function() luajava.newThread(function() 
toushi='31,215,001,600'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,215,001,600',gg.TYPE_QWORD)
   
    
--地面透视 Pro")
    end):start() end),
  RG.button("全透视",
function() luajava.newThread(function() 
toushi='31,215,001,900'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,215,001,900',gg.TYPE_QWORD)
   
    

    end):start() end),
RG.button("透视+特效增大",
function() luajava.newThread(function() 
toushi='31,200,030,000'
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber('31,138,512,896',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('', gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,200,030,000',gg.TYPE_QWORD)
   
    

    end):start() end),  
  RG.button("恢复透视",
            function() luajava.newThread(function()  fw1=false
 gg.diyToast("正在恢复")           
  gg.clearResults()
gg.setRanges(neicun)
gg.searchNumber(toushi,gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('31,138,512,896',gg.TYPE_QWORD)
gg.diyToast("恢复完成")  
     end):start() end), 
                }), 
                RG.line(),    
RG.box({"天线功能",---box示例 可以删掉
			 RG.switch("添加模块天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("-5",FLOAT , false, gg.SIGN_EQUAL, 0, -1)

gg.editAll("114514", FLOAT)
gg.clearResults()
end                
    end):start() end,          
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("114514", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
gg.searchNumber("114514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)

gg.editAll("-5", FLOAT)
gg.clearResults()
end
    end):start() end),
RG.button("添加特殊天线",
            function() luajava.newThread(function()  fw1=false
search(-943501312,4,4)
py1(2,4,-436)
py1(-257,4,-432)
py1(-943501312,4,-52)
py1(-943501312,4,-48)
py1(-943501312,4,-44)
py1(-943501312,4,-8)
py1(-943501312,4,-4)
py1(1203982336,4,4)
py1(1203982336,4,8)
py1(1203982336,4,12)
py1(112,4,556)
xg1(114514,16,-480,true)
                 
   --添加特殊天线")
    end):start() end),                                
RG.switch("添加萌新天线",
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.65025615692", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99.64384", gg.TYPE_FLOAT)
	 gg.diyToast("开启")
	 gg.clearResults()
    end):start() end,            
            function() luajava.newThread(function()  fw1=false
                    gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("99.64384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.65025615692", gg.TYPE_FLOAT)
	 gg.diyToast("关闭")
	 gg.clearResults()
    end):start() end),                
                }),                       
RG.box({"设置速度显示数值",---box示例 可以删掉

RG.button("100000000",
            function() luajava.newThread(function()  fw1=false
        search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(100000000,16,4,true)
 
    

    end):start() end),   
    
RG.button("10",
            function() luajava.newThread(function()  fw1=false
    search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(10,16,4,true)
 
    

    end):start() end),  
    
 RG.button("3",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(3,16,4,true)
 
    

    end):start() end),  

              
RG.button("-3",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(-3,16,4,true)
 
    

    end):start() end),  
RG.button("0",
            function() luajava.newThread(function()  fw1=false
search(1889785610,4,4)
py1(1889785610,4,-24)
py1(1072693248,4,76)
xg1(0,16,4,false)
 
    

    end):start() end),  


                }),
RG.line(),                                  
          
},{
RG.check({"       32位功能",}),

RG.box({"风声加速(解体修复",
			RG.radio({'加速',
					{"开启加速",
function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
py1(1.7999999523162842,16,-48)
py1(1.75,16,0)
xg1(9,64,-4,true)
else
                    search(1.75,16,4)
py1(1.7999999523162842,16,-48)
py1(1.75,16,0)
xg1(9,64,-4,true)
end
						 
    

    end):start() end
					}, 
					
				}),
				}),
RG.line(),			
RG.box({"设置踏空",---box示例 可以删掉

RG.switch("车体踏空",
    function() luajava.newThread(function() 
search(1.9375,16,neicun)
py1(2.125,16,16)
xg1(3.75,16,304,true)
gg.sleep(500)
gg.diyToast("请使用腾越    请解体修复")
editData(
      {
        {["memory"] = gg.REGION_C_ALLOC},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 0,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 0,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      )
     
    

    end):start() end,
    function() luajava.newThread(function() 
search(1.9375,16,neicun)
py1(2.125,16,16)
xg1(1.9375,16,304,true)
gg.diyToast("请解体修复")
	 
    

    end):start() end
     ),
                }),  
RG.line(),
RG.box({"全局变速",
RG.buts({	{"全局加速" ,
            function() luajava.newThread(function() 
                    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("500", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	if gg.getResultCount() == 0 then
		gg.diyToast("开启失败")
		else
		gg.searchNumber("500",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("-99999999114514", FLOAT)
		gg.diyToast("开启成功")
		gg.clearResults()
	end
                 
    

    end):start() end
},
{"恢复全局" ,
function() luajava.newThread(function() 

		gg.clearResults()
	gg.searchNumber("-99999999114514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("500", FLOAT)
		gg.diyToast("恢复")
				gg.clearResults()
	
                 
    

    end):start() end
}, }),
		}),   
RG.line(),									
RG.box({"cd类(易闪退",---box示例 可以删掉
                RG.button("萌新无CD",
                        function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(1811205465,4,4)
py1(2047957257,4,36)
py1(1342253149,4,48)
xg1(0,16,8,true)
else
                    search(1811205465,4,4)
py1(2047957257,4,36)
py1(1342253149,4,48)
xg1(0,16,8,true)
          end       
    

    end):start() end),
       }),	
RG.line(),
RG.box({"后坐类",---box示例 可以删掉
            RG.button("高后坐",
                        function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3,16,96,true)
else
            search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3,16,96,true)
end
                 
    

    end):start() end),
                RG.button("反后坐",
                        function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5000,16,-8,false)
xg1(-3,16,96,true)
else
                          search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5000,16,-8,false)
xg1(-3,16,96,true)
end
                 
    

    end):start() end),
RG.button("恢复后坐",
                        function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(0.1,16,96,false)
else
                          search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(0.1,16,96,false)
end
                 
    

    end):start() end),                
                   }),
RG.line(),
RG.box({"飞天类",---box示例 可以删掉
RG.button("极高空",
            function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5059790,16,-8,true)
else
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5059790,16,-8,true)
            end     
    

    end):start() end),
                  RG.button("高空",
            function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5250,16,-8,true)
else
                       search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(5250,16,-8,true)
   end             
    

    end):start() end),
                RG.button("低空",
            function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3000,16,-8,true)
else
   search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3000,16,-8,true)
  end               
    

    end):start() end),
                RG.button("地下",
            function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(-1300,16,-8,true)
else
                       search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(-1300,16,-8,true)
     end           
    

    end):start() end),
                RG.button("返回地面",
            function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
gg.sleep(3000)       
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3000,16,-8,false)
else
   search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)
xg1(3000,16,-8,false)
     end            
    

    end):start() end),

  }),  
RG.line(),
RG.box({"范围类",---box示例 可
			RG.radio({'范围',
	{"核心范围" ,
function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
fw1=false  
gg.sleep(3000)       
fw1=true
while fw1==true do
search(7.707281683632926E-41,16,4)
py1(7.1746481373430634E-43,16,-20)
py1(7.707281683632926E-41,16,-16)
py1(7.1746481373430634E-43,16,-4)
py1(7.707281683632926E-41,16,0)
py1(0.19999998807907104,16,40)
py1(2.7551769886168823E-40,16,144)
xg1(2000,16,56,false)
xg1(0,16,60,false)
xg1(2000,16,52,false)
gg.sleep(500)
end
else
 fw1=true
while fw1==true do
search(7.707281683632926E-41,16,4)
py1(7.1746481373430634E-43,16,-20)
py1(7.707281683632926E-41,16,-16)
py1(7.1746481373430634E-43,16,-4)
py1(7.707281683632926E-41,16,0)
py1(0.19999998807907104,16,40)
py1(2.7551769886168823E-40,16,144)
xg1(2000,16,56,false)
xg1(0,16,60,false)
xg1(2000,16,52,false)
gg.sleep(500)
end
     end      
    

    end):start() end
}, 
	{"队友不挡高伤范围" ,
function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
fw1=false  
gg.sleep(3000)       
fw1=true
while fw1==true do
search(7.707281683632926E-41,16,4)
py1(7.1746481373430634E-43,16,4)
py1(7.1746481373430634E-43,16,20)
py1(0.0,16,36)
py1(1.0,16,40)
py1(4.5,16,76)
xg1(9999,16,72,false)
xg1(0,16,76,false)
xg1(9999,16,68,false)
gg.sleep(500)
end
else
 fw1=true
while fw1==true do
search(7.1746481373430634E-43,16,4)
py1(7.1746481373430634E-43,16,20)
py1(0.0,16,36)
py1(1.0,16,40)
py1(4.5,16,76)
xg1(9999,16,72,false)
xg1(0,16,76,false)
xg1(9999,16,68,false)
gg.sleep(500)
end end
           
    

    end):start() end
}, 
	{"普通秒杀范围" ,
function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
fw1=false  
gg.sleep(3000)       
fw1=true
while fw1==true do
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,12)
py1(0.0,16,16)
py1(0.0,16,20)
py1(1.0,16,24)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(4.5,16,56)
xg1(9999,16,56,false)
xg1(9999,16,52,false)
gg.sleep(500)
end
else
 fw1=true
while fw1==true do
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,12)
py1(0.0,16,16)
py1(0.0,16,20)
py1(1.0,16,24)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(4.5,16,56)
xg1(9999,16,56,false)
xg1(9999,16,52,false)
gg.sleep(500)
end
   end        
    

    end):start() end
}, 
	{"秒杀+核心" ,
function() luajava.newThread(function() 
if fw1==true then 
gg.diyToast("检测到正在执行范围\n为防止卡顿\n正在尝试关闭范围后再执行功能") fw1=false  
fw1=false  
gg.sleep(3000)       
fw1=true
while fw1==true do
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,12)
py1(0.0,16,16)
py1(0.0,16,20)
py1(1.0,16,24)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(4.5,16,56)
xg1(5999,16,56,false)
xg1(5999,16,52,false)
search(7.707281683632926E-41,16,4)
py1(7.1746481373430634E-43,16,-20)
py1(7.707281683632926E-41,16,-16)
py1(7.1746481373430634E-43,16,-4)
py1(7.707281683632926E-41,16,0)
py1(0.19999998807907104,16,40)
py1(2.7551769886168823E-40,16,144)
xg1(100.114514,16,56,false)--大小
xg1(0,16,60,false)
xg1(100.114514,16,52,false)--大小
gg.sleep(500)
end
else
 fw1=true
while fw1==true do
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,12)
py1(0.0,16,16)
py1(0.0,16,20)
py1(1.0,16,24)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(4.5,16,56)
xg1(99999,16,56,false)
xg1(99999,16,52,false)
search(-5.412,16,39)
py1(-7.212,16,0)
py1(-4.975,16,4)
xg1(2000,16,3,false)
xg1(5,16,4,false)
xg1(2000,16,5,false)
gg.sleep(500)
end
      end     
    

    end):start() end
}, 
			}),
RG.button("停止循环" ,
function() luajava.newThread(function() 
gg.diyToast('停止')
    fw1=false
 
    

    end):start() end),
									}),		
RG.line(),		
RG.box({"设置全局加速",
					RG.buts({	{"全局加速" ,
            function() luajava.newThread(function() 
                    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("500", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	if gg.getResultCount() == 0 then
		gg.diyToast("开启失败")
		else
		gg.searchNumber("500",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("-99999999114514", FLOAT)
		gg.diyToast("开启成功")
		gg.clearResults()
	end
                 
    

    end):start() end
},
{"恢复全局" ,
function() luajava.newThread(function() 

		gg.clearResults()
	gg.searchNumber("-99999999114514",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(200)--设置修改前200个代码
		gg.editAll("500", FLOAT)
		gg.diyToast("恢复")
				gg.clearResults()
	
                 
    

    end):start() end
}, 
		}),	}),
RG.line(),		
	RG.box({"设置函数变速",
RG.text("root/虚拟机 +部分渠道重装 能用"),					
	RG.buts({	
{"1倍" ,
function() luajava.newThread(function() 
    gg.setSpeed(1)
         
    

    end):start() end
}, 
{"3倍" ,
function() luajava.newThread(function()  fw1=false
    gg.setSpeed(3)
           
    

    end):start() end
}, 
{"5倍",
function() luajava.newThread(function()  fw1=false  
  gg.setSpeed(5)
           
    

    end):start() end},


		}),	}),
RG.line(),	
		RG.box({"透视类",---box示例 可以删掉
	RG.buts({	
{"地面透视" ,
function() luajava.newThread(function() 
    search(-2.3880816325146387E-38,16,4)
py1(-2.3880816325146387E-38,16,0)
py1(4.096384754264585E-34,16,4)
py1(5.739718509874451E-42,16,8)
xg1(1145,16,-48,false)
         
    

    end):start() end
}, 
{"恢复透视" ,
function() luajava.newThread(function()  fw1=false
    search(-2.3880816325146387E-38,16,4)
py1(-2.3880816325146387E-38,16,0)
py1(4.096384754264585E-34,16,4)
py1(5.739718509874451E-42,16,8)
xg1(2,16,-48,false)
           
    

    end):start() end
}, 

		}),
                }),
                
RG.box({"美化功能",
RG.switch("白茫茫",
            function() luajava.newThread(function() 
search(1.376037413354514E-13,16,16384)
py1(7.363217267682128E-33,16,-8)
py1(3.1831572511175476E-23,16,-4)
py1(1.376037413354514E-13,16,0)
py1(6.207762156805484E-33,16,4)
xg1(1.399997,64,392,false)
                 
    

    end):start() end,
function() luajava.newThread(function() 
search(3.1831572511175476E-23,16,16384)
py1(7.363217267682128E-33,16,-4)
py1(3.1831572511175476E-23,16,0)
py1(1.376037413354514E-13,16,4)
xg1(99999999,64,396,false)
 
    

    end):start() end
                ),
 RG.switch("黑灯瞎火",
            function() luajava.newThread(function() 
search(3.1831572511175476E-23,16,16384)
py1(7.363217267682128E-33,16,-4)
py1(3.1831572511175476E-23,16,0)
py1(1.376037413354514E-13,16,4)
xg1(0,64,396,false)
                 
    

    end):start() end,
function() luajava.newThread(function() 
search(3.1831572511175476E-23,16,16384)
py1(7.363217267682128E-33,16,-4)
py1(3.1831572511175476E-23,16,0)
py1(1.376037413354514E-13,16,4)
xg1(99999999,64,396,false)
 
    

    end):start() end
                ),              
RG.switch("绿色世界",
            function() luajava.newThread(function() 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1200)--设置修改前200个代码
gg.editAll("3.468814637", FLOAT)
gg.diyToast("开启成功")
gg.clearResults()
                     end):start() end,
function() luajava.newThread(function() 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.468814637",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1200)--设置修改前200个代码
gg.editAll("2", FLOAT)
gg.diyToast("恢复成功")
gg.clearResults()
 
    

    end):start() end
                ),                

}),
RG.box({"坐标操纵台",
RG.button("x轴++" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("x轴--" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = -1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("y轴++" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("y轴--" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = -1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("z轴++" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("z轴--" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在加载")
local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = -1500, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0, freeze = true}})
    end):start() end
),
RG.button("*恢复*" ,
function() luajava.newThread(function()  fw1=false
gg.diyToast("正在恢复")
local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x90}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})

  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x94}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
  local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
					
    end):start() end
),

}),
newcheck({nil,
{"不倒翁",
        function() luajava.newThread(function() 
	editData(
      {
        {["memory"] = gg.REGION_C_ALLOC},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = 0,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = 0,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      )
      gg.diyToast('function go')
    end):start() end,
     },
     {"反向不倒翁",

        function() luajava.newThread(function() 
	editData(
      {
        {["memory"] = gg.REGION_C_ALLOC},
        {["name"] = ""},
        {["value"] = 17039364, ["type"] = D},
        {["lv"] = 1111752704,["offset"] =0x44, ["type"] = D},
      },
      {
        {["value"] = -1,["offset"] =-0x1C, ["type"] = F,["freeze"] = true},
        {["value"] = -1,["offset"] =-0x14, ["type"] = F,["freeze"] = true},
      }
      )
      gg.diyToast('function go')
     end):start() end,
     },
    }),    
newradio({nil,
{"开启穿墙",

        function() luajava.newThread(function() 
	local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x284, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x284, 0x1008, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x194, 0x1F4, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x388, 0x0, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})
      gg.diyToast('function go')
 
    

    end):start() end
,
     },
     {"恢复穿墙",

        function() luajava.newThread(function() 
	local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x284, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x284, 0x1008, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x194, 0x1F4, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x724, 0x8, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})

local t = {"libclient.so:bss", "Cb"}
local tt = {0xD81098, 0x388, 0x0, 0x6C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 0}})
      gg.diyToast('function go')
 
    

    end):start() end
,
     },
    }),

RG.box({"锁核心",	
            RG.button("初始化锁核",
            function() luajava.newThread(function() 
            HS1()
            HS2()
            HS3()
                 
    

    end):start() end),
RG.box1({"选择玩家",---box示例 可以删掉/
                RG.button("玩家1",
            function() luajava.newThread(function() 
                       wj1tp()
                 
    

    end):start() end),
                RG.button("玩家2",
            function() luajava.newThread(function() 
                       wj2tp()
                 
    

    end):start() end),
                RG.button("玩家3",
            function() luajava.newThread(function() 
                       wj3tp()
                 
    

    end):start() end),
                RG.button("玩家4",
            function() luajava.newThread(function() 
                       wj4tp()
                 
    

    end):start() end),
                RG.button("玩家5",
            function() luajava.newThread(function() 
                       wj5tp()
                 
    

    end):start() end),

                  }),        
                RG.button("清理残留",
            function() luajava.newThread(function() 
                          editData(
{
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = ""},
{["value"] = 1234567890, ["type"] = D},
{["lv"] = 1234567890,["offset"] =0, ["type"] = D},
},
{
{["value"] = 0,["offset"] =0, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()

                 
    

    end):start() end),
                   }),  
RG.check({"其它功能",
    }),
RG.box({"娱乐功能",
RG.button("打不到人",
            function() luajava.newThread(function() 
search(17039361,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039361,4,0)
xg1(500,16,168,true)
xg1(500,16,172,true)
xg1(500,16,164,true)
                 
    

    end):start() end),
RG.button("转圈",
            function() luajava.newThread(function()            
search(17039364,4,4)
py1(257,4,-36)
py1(17039364,4,0)
xg1(9999,16,56,true)
                 
    

    end):start() end),
RG.button("一键自杀",
				function() luajava.newThread(function() 
					search(17039364,4,neicun)
py1(16777215,4,-360)
py1(257,4,-356)
py1(16777215,4,-40)
py1(257,4,-36)
xg1(-114514,16,-8,true)
gg.sleep(1000)
	search(17039364,4,neicun)
py1(16777215,4,-360)
py1(257,4,-356)
py1(16777215,4,-40)
py1(257,4,-36)
xg1(1000,16,-8,false)
				 
    

    end):start() end),
				
			RG.switch("音量爆炸",
    function() luajava.newThread(function() 
    gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("32767", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("32767", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	 end
     
    

    end):start() end,
    function() luajava.newThread(function() 
    gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("32767", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	 end
	 
    

    end):start() end
     ),
     
    
    RG.switch("视角锁定",
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("114514", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	 end
     
    

    end):start() end,
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999999)
	 gg.editAll("0.03", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	 end
     
    

    end):start() end
    ),
    
    RG.switch("UI隐藏",
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("114515", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	 end
     
    

    end):start() end,
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("114515", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("114515", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	 end
     
    

    end):start() end
    ),
    RG.switch("左右横跳",
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	 end
     
    

    end):start() end,
    function() luajava.newThread(function() 
        gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	 end
     
    

    end):start() end
    ),
    RG.switch("虚幻世界(闪退)",
                function() luajava.newThread(function() 
				gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("开启失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.diyToast("开启成功")
	 gg.clearResults()
	 end		
					 
    

    end):start() end,
					function() luajava.newThread(function() 
					gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("关闭失败")
else
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("关闭成功")
	 gg.clearResults()
	 end	
                 
    

    end):start() end
            ),
RG.switch("特效加速",
    function() luajava.newThread(function() 
	
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.clearResults()
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("特效加速失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(85)
	 gg.editAll("250.114514", gg.TYPE_FLOAT)
	 gg.diyToast("特效加速成功")
	 gg.clearResults()
	 end 
				
 
    

    end):start() end,
    function() luajava.newThread(function() 
gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250.114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("恢复失败，实在不行换画质")
else
	 gg.searchNumber("250.114514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("恢复成功")
	 gg.clearResults()
	 end
				
 
    

    end):start() end 
    ),
    RG.switch("特效减速",
         function() luajava.newThread(function() 

				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.clearResults()
				gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("特效减速失败")
else
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(85)
	 gg.editAll("0.0031", gg.TYPE_FLOAT)
	 gg.diyToast("特效减速成功")
	 gg.clearResults()
	 end 
				
 
    

    end):start() end
,
    function() luajava.newThread(function() 
gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("0.0031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
gg.diyToast("恢复失败，实在不行换画质")
else
	 gg.searchNumber("0.0031", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.diyToast("恢复成功")
	 gg.clearResults()
	 end
				
 
    

    end):start() end 
    ),
}),
RG.check({"以下为传送功能",
    }),
RG.box({"超级风暴",
RG.buts({

    {"大业殿",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
    	xg1(730,16,-8,true)--y
	xg1(500,16,-4,true)
	xg1(-3517,16,-12,true)
	gg.sleep(500)
	xg1(730,16,-8,false)--y
	xg1(500,16,-4,false)
	xg1(-3517,16,-12,false)
       
    

    end):start() end
        ,
    },   {"可汗石头",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
   	xg1(0,16,-8,true)
	xg1(-14571,16,-4,true)
	xg1(-4057,16,-12,true)
	gg.sleep(500)
	xg1(0,16,-8,false)
	xg1(-14571,16,-4,false)
	xg1(-4057,16,-12,false)
       
    

    end):start() end

,
    },    {"玉皇宫",
    
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
    xg1(17720,16,-8,true)
xg1(1700,16,-4,true)
xg1(9320,16,-12,true)
	gg.sleep(500)
	xg1(1380,16,-8,false)--y
	xg1(-11745,16,-4,false)
	xg1(9276,16,-12,false)
       
    

    end):start() end
        ,
    },
    }),   RG.buts({
    {"菩提枫",
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
   	xg1(-200,16,-8,true)
	xg1(-2028,16,-4,true)
	xg1(9627,16,-12,true)
	gg.sleep(500)	 
	xg1(-200,16,-8,false)
	xg1(-2028,16,-4,false)
	xg1(9627,16,-12,false)
       
    

    end):start() end,
    },    {"北岸高架",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
    xg1(1600,16,-8,true)--y
	xg1(9825,16,-4,true)
	xg1(11275,16,-12,true)
	gg.sleep(500)
	xg1(1600,16,-8,false)--y
	xg1(9825,16,-4,false)
	xg1(11275,16,-12,false)
       
    

    end):start() end
        ,
    },    {"长滩房子",
    
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
            
	 
	xg1(-429,16,-8,true)
	xg1(-11405.460,16,-4,true)
	xg1(-1871.13,16,-12,true)
	gg.sleep(500)
	xg1(-429,16,-8,false)
	xg1(-11405.460,16,-4,false)
	xg1(-1871.13,16,-12,false)
       
    

    end):start() end
,
    },
                }),   RG.buts({ 
    {"太平门房子",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(410,16,-8,true)--y
	xg1(-5424,16,-4,true)
	xg1(-13166,16,-12,true)
	gg.sleep(500)
	xg1(410,16,-8,false)--y
	xg1(-5424,16,-4,false)
	xg1(-13166,16,-12,false)
       
    

    end):start() end
        ,
    },    {"大草原",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(3600,16,-8,true)--y
	xg1(7046.460,16,-4,true)
	xg1(-10906,16,-12,true)
	gg.sleep(500)
	xg1(3600,16,-8,false)--y
	xg1(7046.460,16,-4,false)
	xg1(-10906,16,-12,false)
       
    

    end):start() end
        ,
    },    {"荷塘房子",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(500,16,-8,true)--y
	xg1(-25.4606,16,-4,true)
	xg1(-11460,16,-12,true)
	gg.sleep(500)
	xg1(500,16,-8,false)--y
	xg1(-25.4606,16,-4,false)
	xg1(-11460,16,-12,false)
       
    

    end):start() end
        ,
    },
                }),   RG.buts({ 
    {"菩提枫房子",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(-420,16,-8,true)--y
	xg1(806.46063,16,-4,true)
	xg1(10701,16,-12,true)
	gg.sleep(500)
	xg1(-420,16,-8,false)--y
	xg1(806.46063,16,-4,false)
	xg1(10701,16,-12,false)
       
    

    end):start() end
        ,
    },    {"美食街车",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(-500,16,-8,true)
xg1(-9261.46063232531875,16,-4,true)
xg1(5181.13671875,16,-12,true)
	gg.sleep(500)
xg1(-500,16,-8,false)
xg1(-9261.46063232531875,16,-4,false)
xg1(5181.13671875,16,-12,false)
       
    

    end):start() end
        ,
    },    {"北岸木头",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(-228,16,-8,true)--y
	xg1(11391.460,16,-4,true)
	xg1(9863,16,-12,true)
	gg.sleep(500)
	xg1(-228,16,-8,false)--y
	xg1(11391.460,16,-4,false)
	xg1(9863,16,-12,false)
       
    

    end):start() end
        ,
    },                }),   RG.buts({ 
            {"天鹤山房子",
         function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
                
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(1400,16,-8,false)--y
	xg1(5651.46,16,-4,false)
	xg1(204,16,-12,false)
       
    

    end):start() end
        ,
    }, 
            {"可汗中心",
         function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
            
                
	 
xg1(455,16,-8,true)--y
	xg1(-11707.46,16,-4,true)
	xg1(-10474,16,-12,true)
	gg.sleep(500)
	xg1(455,16,-8,false)--y
	xg1(-11707.46,16,-4,false)
	xg1(-10474,16,-12,false)
       
    

    end):start() end
        ,
    },         {"地龟山石头",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
        
	 
xg1(516.3,16,-8,true)--y
	xg1(-4983.4606,16,-4,true)
	xg1(-6715,16,-12,true)
	gg.sleep(500)
	xg1(516.3,16,-8,false)--y
	xg1(-4983.4606,16,-4,false)
	xg1(-6715,16,-12,false)
       
    

    end):start() end
        ,
    }, 
                }),
            }),   
       RG.box({"单人风暴",
RG.buts({
   

     {"中心枢纽",
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
  	xg1(3031,16,-8,true)
	xg1(791,16,-4,true)
	xg1(-297,16,-12,true)
	gg.sleep(500)
	py1(16777215,4,-36)
	py1(257,4,-32)
	py1(17039364,4,0)
	xg1(3031,16,-8,false)
	xg1(791,16,-4,false)
	xg1(-297,16,-12,false)
       
    

    end):start() end,
    },    {"灰色工厂",
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
            
	 
	xg1(999,16,-8,true)
	xg1(-5324,16,-4,true)
	xg1(-1950,16,-12,true)
	gg.sleep(500)
	xg1(999,16,-8,false)
	xg1(-5324,16,-4,false)
	xg1(-1950,16,-12,false)
       
    

    end):start() end
,
    },    {"守望台",
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
	xg1(1594,16,-8,true)
	xg1(-5739,16,-4,true)
	xg1(2004,16,-12,true)
	gg.sleep(500)
	xg1(1594,16,-8,false)
	xg1(-5739,16,-4,false)
	xg1(2004,16,-12,false)
       
    

    end):start() end,
    },
}),   RG.buts({
    {"零号仓库",
     function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
	xg1(50,16,-8,true)
	xg1(6712,16,-4,true)
	xg1(-5863,16,-12,true)
	gg.sleep(500)
	py1(16777215,4,-36)
	py1(257,4,-32)
	py1(17039364,4,0)
	xg1(50,16,-8,false)
	xg1(6712,16,-4,false)
	xg1(-5863,16,-12,false)
       
    

    end):start() end,
    },    {"小试验场",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
	xg1(575,16,-8,true)--y
	xg1(-4525.46063,16,-4,true)
	xg1(-2259,16,-12,true)
	gg.sleep(500)
	xg1(575,16,-8,false)--y
	xg1(-4525.46063,16,-4,false)
	xg1(-2259,16,-12,false)
       
    

    end):start() end
        ,
        
    },    {"灰工集装箱",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(102,16,-8,true)--y
	xg1(-2474.4606,16,-4,true)
	xg1(-6128,16,-12,true)
	gg.sleep(500)
	xg1(102,16,-8,false)--y
	xg1(-2474.4606,16,-4,false)
	xg1(-6128,16,-12,false)
       
    

    end):start() end
        ,
        
    },    
                })
            }),    
            RG.box({"乱斗",
RG.buts({
   

         {"空投点1",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(799,16,-8,true)--y
	xg1(2932.199,16,-4,true)
	xg1(-4221,16,-12,true)
	gg.sleep(500)
	xg1(799,16,-8,false)--y
	xg1(2932.199,16,-4,false)
	xg1(-4221,16,-12,false)
       
    

    end):start() end
        ,
    
        
    },    {"空投点2",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1500,16,-8,true)--y
	xg1(-5937.941,16,-4,true)
	xg1(3917,16,-12,true)
	gg.sleep(500)
	xg1(1500,16,-8,false)--y
	xg1(-5937.941,16,-4,false)
	xg1(3917,16,-12,false)
       
    

    end):start() end
        ,
        
    },    
                })
            }),  

            RG.box({"单点占领",
RG.buts({

    {"远征进点",
    
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(300,16,-8,true)--y
	xg1(-51.941,16,-4,true)
	xg1(-2015,16,-12,true)
	gg.sleep(500)
	xg1(300,16,-8,false)--y
	xg1(-51.941,16,-4,false)
	xg1(-2015,16,-12,false)
       
    

    end):start() end
        ,
        
    },       {"远征高台1",
   function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(633,16,-8,true)--y
	xg1(-254,16,-4,true)
	xg1(-603,16,-12,true)
	gg.sleep(500)
	xg1(633,16,-8,false)--y
	xg1(-254,16,-4,false)
	xg1(-603,16,-12,false)
       
    

    end):start() end
        ,  
    },     {"远征高台2",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(509,16,-8,true)--y
	xg1(0.75161904,16,-4,true)
	xg1(-3474,16,-12,true)
	gg.sleep(500)
	xg1(509,16,-8,false)--y
	xg1(0.75161904,16,-4,false)
	xg1(-3474,16,-12,false)
       
    

    end):start() end
        ,       
    },
    }),  
RG.buts({
{"红石进点",function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(300,16,-8,true)--y
	xg1(-1181.941,16,-4,true)
	xg1(-247,16,-12,true)
	gg.sleep(500)
	xg1(300,16,-8,false)--y
	xg1(-1181.941,16,-4,false)
	xg1(-247,16,-12,false)
       
    

    end):start() end
        ,
        
    },     {"红石高台1",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
	xg1(1394,16,-8,true)--y
	xg1(218,16,-4,true)
	xg1(3164,16,-12,true)
	gg.sleep(500)
	xg1(1394,16,-8,false)--y
	xg1(218,16,-4,false)
	xg1(3164,16,-12,false)
       
    

    end):start() end
        ,       
    },   {"红石高台2",
function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(470,16,-8,true)--y
	xg1(77.41,16,-4,true)
	xg1(-1738,16,-12,true)
	gg.sleep(500)
	xg1(470,16,-8,false)--y
	xg1(77.41,16,-4,false)
	xg1(-1738,16,-12,false)
       
    

    end):start() end
        ,        
    },}),   RG.buts({{"盖亚进点",
    function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(120,16,-8,true)--y
	xg1(151.941,16,-4,true)
	xg1(-1193,16,-12,true)
	gg.sleep(500)
	xg1(120,16,-8,false)--y
	xg1(151.941,16,-4,false)
	xg1(-1193,16,-12,false)
       
    

    end):start() end
        , 
    },
    
  {"盖亚高台1",
function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(390,16,-8,true)--y
	xg1(-235.941,16,-4,true)
	xg1(-2510,16,-12,true)
	gg.sleep(500)
	xg1(390,16,-8,false)--y
	xg1(-235.941,16,-4,false)
	xg1(-2510,16,-12,false)
       
    

    end):start() end
        ,        
    },
   
  {"盖亚高台2",
function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(1400,16,-8,false)--y
	xg1(5651.46,16,-4,false)
	xg1(204,16,-12,false)
       
    

    end):start() end
        ,        
    },
     
                })
            }),   
            RG.box({"多点占领",
RG.buts({

         {"暗黑星云进点1",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(5745,16,-8,true)--y
	xg1(-303,16,-4,true)
	xg1(-239,16,-12,true)
	gg.sleep(500)
	xg1(5745,16,-8,false)--y
	xg1(-303,16,-4,false)
	xg1(-239,16,-12,false)
       
    

    end):start() end
        ,       
    },    {"暗黑星云进点2",
  function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(8018,16,-8,true)--y
	xg1(7150,16,-4,true)
	xg1(-255,16,-12,true)
	gg.sleep(500)
	xg1(8018,16,-8,false)--y
	xg1(7150,16,-4,false)
	xg1(-255,16,-12,false)
       
    

    end):start() end
        ,      
    },        {"暗黑星云辅助位",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(4073,16,-8,true)--y
	xg1(10309,16,-4,true)
	xg1(-16878,16,-12,true)
	gg.sleep(500)
	xg1(4073,16,-8,false)--y
	xg1(10309,16,-4,false)
	xg1(-16878,16,-12,false)
       
    

    end):start() end
        ,     
    },
}),   RG.buts({
  
    {"陨星基地进点1",
function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1000,16,-8,true)--y
	xg1(-1404,16,-4,true)
	xg1(1389,16,-12,true)
	gg.sleep(500)
	xg1(1000,16,-8,false)--y
	xg1(-1404,16,-4,false)
	xg1(1389,16,-12,false)
       
    

    end):start() end
        ,        
    },       {"陨星基地进点2",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(100,16,-8,true)--y
	xg1(1626,16,-4,true)
	xg1(2071,16,-12,true)
	gg.sleep(500)
	xg1(100,16,-8,false)--y
	xg1(1626,16,-4,false)
	xg1(2071,16,-12,false)
       
    

    end):start() end
        ,     
    },     {"陨星基地进点3",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(202,16,-8,true)--y
	xg1(234,16,-4,true)
	xg1(-2906,16,-12,true)
	gg.sleep(500)
	xg1(202,16,-8,false)--y
	xg1(234,16,-4,false)
	xg1(-2906,16,-12,false)
       
    

    end):start() end
        ,       
    },
}),   RG.buts({  
    {"乐园进点1",
  function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(190,16,-8,true)--y
	xg1(103,16,-4,true)
	xg1(-1509,16,-12,true)
	gg.sleep(500)
	xg1(190,16,-8,false)--y
	xg1(103,16,-4,false)
	xg1(-1509,16,-12,false)
       
    

    end):start() end
        ,      
    },
    


  
    {"乐园进点2",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(99,16,-8,true)--y
	xg1(2116,16,-4,true)
	xg1(281,16,-12,true)
	gg.sleep(500)
	xg1(99,16,-8,false)--y
	xg1(2116,16,-4,false)
	xg1(281,16,-12,false)
       
    

    end):start() end
        ,       
    },  


  
    {"乐园进点3",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(98,16,-8,true)--y
	xg1(-2125,16,-4,true)
	xg1(1834,16,-12,true)
	gg.sleep(500)
	xg1(98,16,-8,false)--y
	xg1(-2125,16,-4,false)
	xg1(1834,16,-12,false)
       
    

    end):start() end
        ,    
    },
                })
            }),
RG.box({"无限擂台",
RG.buts({
   
       {"中心",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(130,16,-8,true)--y
	xg1(28,16,-4,true)
	xg1(227,16,-12,true)
	gg.sleep(500)
	xg1(130,16,-8,false)--y
	xg1(28,16,-4,false)
	xg1(227,16,-12,false)
       
    

    end):start() end
        ,     
    },  
   
      {"高台1",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(803,16,-8,true)--y
	xg1(-2245.1,16,-4,true)
	xg1(272,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(-2245.1,16,-4,false)
	xg1(272,16,-12,false)
       
    

    end):start() end
        ,     
    },    {"高台2",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(803,16,-8,true)--y
	xg1(1185,16,-4,true)
	xg1(-1718,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(1185,16,-4,false)
	xg1(-1718,16,-12,false)
       
    

    end):start() end
        ,       
    }, 
}),   RG.buts({
    {"高台3",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1400,16,-8,true)--y
	xg1(5651.46,16,-4,true)
	xg1(204,16,-12,true)
	gg.sleep(500)
	xg1(803,16,-8,false)--y
	xg1(1169,16,-4,false)
	xg1(2253,16,-12,false)
       
    

    end):start() end
        ,       
	}, { "地下小空间",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(-95.5,16,-8,true)--y
	xg1(-1452.46,16,-4,true)
	xg1(1185,16,-12,true)
	gg.sleep(500)
xg1(-45.5,16,-8,false)--y
	xg1(-1452.46,16,-4,false)
	xg1(1185,16,-12,false)
       
    

    end):start() end
        ,       
	},{"柱子里",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(10,16,-8,false)--y
	xg1(547,16,-4,false)
	xg1(-616,16,-12,false)
	gg.sleep(500)
	xg1(10,16,-8,false)--y
	xg1(547,16,-4,false)
	xg1(-616,16,-12,false)
       
    

    end):start() end
        ,       
	},
}),   RG.buts({
	{"斜坡旁(建议解体",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(-90,16,-8,true)--y
	xg1(1028,16,-4,true)
	xg1(789,16,-12,true)
	gg.sleep(500)
	xg1(-90,16,-8,false)--y
	xg1(1028,16,-4,false)
	xg1(789,16,-12,false)
       
    

    end):start() end
        ,       
	},  
                })
            }),      
           RG.box({"试验场",
RG.buts({

 {"雷达",
  function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1546,16,-8,true)
xg1(1649.94140625,16,-4,true)
xg1(-3236.765625,16,-12,true)
	gg.sleep(500)
	xg1(1546,16,-8,false)
xg1(1649.94140625,16,-4,false)
xg1(-3236.765625,16,-12,false)
       
    

    end):start() end
        ,      
    },        {"车库",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(-50,16,-8,true)--y
	xg1(2280,16,-4,true)
	xg1(-4875,16,-12,true)
	gg.sleep(500)
	xg1(-50,16,-8,false)--y
	xg1(2280,16,-4,false)
	xg1(-4875,16,-12,false)
       
    

    end):start() end
        ,     
    },

  
    {"禁闭小屋",
function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(427,16,-8,true)
xg1(986.94140625,16,-4,true)
xg1(-2060.765625,16,-12,true)
	gg.sleep(500)
	xg1(427,16,-8,false)
xg1(986.94140625,16,-4,false)
xg1(-2060.765625,16,-12,false)
       
    

    end):start() end
        ,        
    },    
}),   RG.buts({
          {"雷达旁",
function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(1210,16,-8,true)--y
	xg1(426,16,-4,true)
	xg1(-2630,16,-12,true)
	gg.sleep(500)
xg1(1210,16,-8,false)--y
	xg1(426,16,-4,false)
	xg1(-2630,16,-12,false)
       
    

    end):start() end
        ,     
    },     {"发射仓",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(220,16,-8,true)--y
	xg1(-4458,16,-4,true)
	xg1(-825,16,-12,true)
	gg.sleep(500)
	xg1(220,16,-8,false)--y
	xg1(-4458,16,-4,false)
	xg1(-825,16,-12,false)
       
    

    end):start() end
        ,       
    },
    {"大圆环",
  function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(578,16,-8,true)--y
	xg1(-2255,16,-4,true)
	xg1(2614,16,-12,true)
	gg.sleep(500)
	xg1(578,16,-8,false)--y
	xg1(-2255,16,-4,false)
	xg1(2614,16,-12,false)
       
    

    end):start() end
        ,      
    },
}),   RG.buts({
    {"猫爬架",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(448.6,16,-8,true)--y
	xg1(-2007,16,-4,true)
	xg1(1435,16,-12,true)
	gg.sleep(500)
	xg1(448.6,16,-8,false)--y
	xg1(-2007,16,-4,false)
	xg1(1435,16,-12,false)
       
    

    end):start() end
        ,       
    },  


    {"地图右上角斜坡",
 function() luajava.newThread(function()  fw1=false    
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
	xg1(10,16,-8,true)--y
	xg1(1156,16,-4,true)
	xg1(1357,16,-12,true)
	gg.sleep(500)
	xg1(3,16,-8,false)--y
	xg1(1156,16,-4,false)
	xg1(1357,16,-12,false)
       
    

    end):start() end
        ,       
    },   
                })
            }),
RG.check({"注意:进入游戏约7秒后传送才可以使用",}),             
 RG.box1({"教程模式",           
            RG.box({"建造模式新手教程",
RG.buts({

         {"建造规则",
    function() luajava.newThread(function()     
search(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	 
xg1(4,16,-8,false)--y
	xg1(752.199,16,-4,false)
	xg1(-102,16,-12,false)
	gg.sleep(500)
xg1(4,16,-8,false)--y
	xg1(752.199,16,-4,false)
	xg1(-102,16,-12,false)
	
xg1(244,16,-8,true)--y
	xg1(2509,16,-4,true)
	xg1(-109,16,-12,true)
	gg.sleep(500)
xg1(244,16,-8,false)--y
	xg1(2509,16,-4,false)
	xg1(-109,16,-12,false)
       
    

    end):start() end
        ,
    
        
    },    {"摧毁规则",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 
xg1(8,16,-8,true)--y
	xg1(-867.941,16,-4,true)
	xg1(-112,16,-12,true)
	gg.sleep(500)
	xg1(8,16,-8,true)--y
	xg1(-867.941,16,-4,true)
	xg1(-112,16,-12,true)
	
xg1(5,16,-8,false)--y
	xg1(727,16,-4,false)
	xg1(-106,16,-12,false)	
	gg.sleep(500)
	xg1(5,16,-8,false)--y
	xg1(727,16,-4,false)
	xg1(-106,16,-12,false)	
       
    

    end):start() end
        ,
        
    },    
                })                }),
 RG.box({"占点模式新手教程",
RG.buts({
   
         {"快速进点",
 function() luajava.newThread(function()  fw1=falsesearch(17039364,4,4)
py1(16777215,4,-40)
py1(257,4,-36)
py1(17039364,4,0)	     
	 xg1(-13,16,-8,false)--y
	xg1(-14.199,16,-4,false)
	xg1(-1652,16,-12,false)
	gg.sleep(500)
xg1(-13,16,-8,false)--y
	xg1(-14.199,16,-4,false)
	xg1(-1652,16,-12,false)
	 
    

    end):start() end
	 },    
                })    
                            })               
            }),  
},{
--},
--})
--})
--RG.line(),
RG.line(),
RG.check({"以下功能变态使用",}),
RG.box({"设置循环范围",
RG.radio({"",
    {"核心范围",
        function() luajava.newThread(function()  fw1=false
gg.diyToast("萌新") 
search(4.73360013961792,16,4)--萌新
py1(4.791800022125244,16,4)
xg1(69,16,0,false)
xg1(69,16,-4,false)

gg.diyToast("夜莺") 
search(4.912199974060059,16,4)--夜莺
py1(7.106599807739258,16,4)
xg1(69,16,0,false)
xg1(69,16,-4,false) 

gg.diyToast("网虫") 
 search(9.900099754333496,16,4)--网虫
py1(4.437600135803223,16,-4)
xg1(69,16,-4,false)
xg1(69,16,-8,false) 

gg.diyToast("风声") 
 search(2.997499942779541,16,4)--风声
py1(5.773600101470947,16,4)
xg1(69,16,0,false)
xg1(69,16,-4,false) 

gg.diyToast("火萤") 
 search(4.906000137329102,16,4)--火萤
py1(4.9253997802734375,16,4)
xg1(69,16,0,false)
xg1(69,16,-4,false) 

gg.diyToast("凯鼠") 
 search(3.605950117111206,16,4)--凯鼠
py1(2.802596928649634E-45,16,-8)
py1(3.605950117111206,16,0)
xg1(69,16,0,false)
xg1(69,16,-4,false) 
end):start() end,
    }, {"不挡秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
fw1=true
while fw1==true do 
gg.diyToast("Start execution") 
search(7.707281683632926E-41,16,neicun)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(1.0,16,40)
py1(0.0,16,44)
py1(0.0,16,48)
py1(0.0,16,52)
py1(1.0,16,312)
py1(0.19999998807907104,16,328)
py1(1.0,16,352)
xg1(3999,16,76,false)
xg1(0,16,80,false)
xg1(3999,16,72,false)
		sleep(200)
	 end 
end):start() end
},      {"频率优化秒杀范围" ,
function() luajava.newThread(function() 
gg.diyToast("威力是正常秒杀范围的十分之九")
fw1=false
	fw1=true
	while fw1==true do
gg.diyToast("Start execution")
search(7.707281683632926E-41,16,neicun)
py1(1.0,16,24)
py1(0.0,16,28)
py1(0.0,16,32)
py1(0.0,16,36)
py1(4.5,16,60)
xg1(3953.68,16,60,false)
xg1(3953.68,16,56,false)
		 		      end 
end):start() end
},{"极小秒杀范围" ,
function() luajava.newThread(function() 
fw1=false
gg.diyToast("为极小的频率优化秒杀范围") 
fw1=true
while fw1==true do 
gg.diyToast("Start execution") 
search(7.707281683632926E-41,16,neicun)
py1(1.0,16,24)
py1(0.0,16,36)
py1(4.5,16,60)
xg1(90,16,60,false)
xg1(90,16,56,false)
sleep(200)
	 end 
end):start() end
}, 
              }),

RG.button("停止循环" ,
function() luajava.newThread(function() 
fw1=false
fw1=false 
gg.sleep(4200)    
end):start() end),
}),
RG.line(),
RG.box({"设置后坐",
RG.radio({"",
{"反后坐(会穿墙)" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-3.5,16,96,true) 
    end):start() end
}, 
{"反后坐plus" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-9,16,96,true) 
    
--开启反后坐plus")
    
          end):start() end
}, 
{"无重力反后坐" ,
function() luajava.newThread(function()  fw1=false
    gg.diyToast("传送至高空并开启后坐")
    search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
	xg1(5000,16,-8,false)
    xg1(-35,16,96,true) 
    
--开启无重力反后坐")
    
          end):start() end
}, 
{"高后坐",
function() luajava.newThread(function()  fw1=false  
   search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)
xg1(3.5,16,96,true) 
    
--开启高后坐")
    
          end):start() end},
{"高后坐plus",
function() luajava.newThread(function()  fw1=false
 search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)    
xg1(9,16,96,true) 
    
--开启高后坐plus")
    
          end):start() end},
{"恢复后坐",
function() luajava.newThread(function()  fw1=false
search(17039364,4,neicun)
	py1(16777215,4,-36)
	py1(257,4,-32)    
xg1(0.01,16,96,false) 
gg.diyToast("请解体修复") 
           
    
--恢复后坐")
    end):start() end},
})
}),
RG.line(),
},{
RG.button("取消所有冻结",
            function() luajava.newThread(function() 
gg.clearList() 
gg.setValues(z) 
                 
    

    end):start() end),
RG.button("📜更新日志📜" ,
function() luajava.newThread(function()  fw1=false
gg.alert('v1.0舍弃原辅助Pentago Pro，更名为弦驱 作者Q号:1392698573，更新不闪退的核心范围\nv1.1新增每次使用功能后会显示所使用的功能,优化UI\nv1.2修复UI隐藏按钮消失的bug，改良核心范围\nv1.3再次改良核心范围，运行变得更快，增加开屏动画，新增切换32位模式并添加些许功能，新增队友不挡范围\nv1.4新增破隐，新增全局加速，转圈圈功能无需解体，新增设置光照，新增天线功能，改善不挡范围，清除了每次执行功能时弹出的绘制文字\nv1.5新增惯性加速，新增瞬移不稳定加速，新增其它外挂(其它的所有外挂均有改动)，改善天罚功能\nv1.6新增无视车型秒杀范围\nv1.7修复无视车型秒杀范围的副作用，新增不挡秒杀范围，调整开启反后坐后上升的高度，32位模式中新增些许功能\nv1.8新增不挡核心秒杀范围，新增灵魂出窍\nv1.9循环范围区新增功能\n2.0修复全局变速，修复设置光照，修复设置天线，新增仿gg变速自瞄炮，增加些许天罚功能，新增拖拽感，新增灵魂出窍，新增设置视角，新增取消冻结\n2.1新增无敌(测试)，新增设置视角，删去一些无用的功能，新增冻结核心范围(在局内开启，概率闪退，若没有闪退并显示加载完成则说明以后的每一局都有效)，改善设置光照，循环范围栏新增功能，新增试验场传送，\nv2.2美化UI，更新函数变速，更新极高空飞行，更新无重力反后坐，删除正常范围\nv2.3将冻结核心范围改回并添加了内存设置，32位版本更新诸多内容\nv2.4删除冻结核心范围，新增核心秒杀范围，新增穿墙，美化toast，优化传送，优化爬墙\nv2.5修复地龟山石头的传送坐标，硬核加速区新增功能，新增固定位置，\nv2.6新增透视功能,新增设置高度基址，优化锁核初始化的速度，优化坐标功能，新增获取自身坐标\nv2.7优化恢复光照的速度，新增自定义光照，优化恢复透视的速度，新增设置拖拽感，新增需解体功能，新增音效延迟功能\nv2.8更新地图功能，更新核心范围(几乎全核心\nv2.9自身车体倾斜，新增特殊天线，新增速度数值设置')
 
    

    end):start() end),
RG.box({"功能介绍手册",
   RG.button("功能介绍-----战斗区" ,
function() luajava.newThread(function()  fw1=false
gg.alert('战斗区:\n⊙设置加速【使用功能后解体修复即可获得对应的加速】\n⊙设置单次/循环范围【将除自己外所有人的核心体积放大,可以更轻易地打到(要注意,若开启循环范围后还想开启其他功能,需停止循环】\n⊙设置后坐【使用高后坐功能后,武器的后坐力将会增强.使用反后坐功能后,武器的后坐力将会增强并且变为反向(但会穿墙,所以才会先传送至高空)】\n⊙设置高度【使用功能后,自身将会传送至对应高度并冻结在对应高度】\n⊙锁核心【使用锁核心功能需先初始化锁核(也许需要40秒左右),随后便可以选择锁核玩家(选择玩家后将会把自身传送至对应玩家的核心上) 每局游戏结束后需清除锁核残留】')
 
    

    end):start() end),
RG.button("功能介绍-----坐标区" ,
function() luajava.newThread(function()  fw1=false
gg.alert('坐标区:\n⊙自定义坐标传送【输入X、Y、Z轴并点击确定后即可传送到对应的坐标】\n⊙各模式传送功能【使用后即可传送至对应地点】')
 
    

    end):start() end),
RG.button("功能介绍-----娱乐区" ,
function() luajava.newThread(function()  fw1=false
gg.alert('娱乐区:\n⊙隐藏UI【使用功能后会将所有的UI及按键隐藏,但因为某些特性,停止移动后会四处弹射,所以不要停止移动】\n⊙无法移动【使用功能后,车体将无法移动,可以通过推进器等模块进行前进】\n⊙天罚加速【使用功能后,天罚的速度将会越来越快】\n⊙冻结天罚【使用功能后,天罚将会冻结在某个坐标上】\n⊙视角锁定【使用功能后,自身的朝向将会固定】\n⊙特效加速【将所有特效及动作加速】\n⊙特效减速【将所有特效及动作减速,但自身朝向会固定】\n⊙转圈圈【自身旋转】\n⊙无重力【自身失去重力并向上漂浮】')
 
    

    end):start() end),
RG.button("功能介绍-----其它区" ,
function() luajava.newThread(function()  fw1=false
gg.alert('其它区:\n⊙进入虚幻世界【使用功能后,地图崩坏,自身、队友、敌人将会消失,会有杂音】\n⊙薄雾【使用功能后会产生淡蓝色的薄雾】\n⊙浓雾【使用功能后,会产生淡蓝色的浓雾】\n⊙除雾【使用功能后,会将天边的武器遮挡去除】\n⊙不倒翁【使用功能后,自身将垂直于地面】\n⊙反向不倒翁【使用功能后,自身将将翻转过来并垂直于地面】\n⊙爬墙【使用功能后,自身靠近某些建筑物下方时会传送到其建筑物上方(部分地图无效)】')
 
    

    end):start() end),
RG.button("功能介绍-----休闲区" ,
function() luajava.newThread(function()  fw1=false
gg.alert('休闲区:\n⊙音乐搜索【输入想要找到音乐即可播放】\n⊙AI聊天【输入想要说的话,AI将会答复你的话】\n⊙看视频【点击按钮后,过段时间会弹出选择视频界面(每次刷新的视频都不一样),选择后即可观看】')
 
    

    end):start() end),
}),
RG.box({"❓帮助❓",
   RG.button("后坐/传送/加速等失效" ,
function() luajava.newThread(function()  fw1=false
gg.alert('刚出战、刚切换画质、周围有其他玩家(敌人/队友)、炮台、分身时，有关自身移动的功能将会失效   等待几秒便可使用(周围要没有其他的 玩家、炮台、分身)，其判定距离大概是3～4个建筑块')
 
    

    end):start() end),
}),
RG.button("🔶选择进程🔶" ,
function() luajava.newThread(function()  fw1=false
gg.setProcessX()
gg.sleep(3000)
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
	 gg.clearResults()
	 gg.setRanges(-2080896)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.getResultCount() == 0 then
	 gg.diyToast("内存已自动设为A")
neicun=32
else
gg.diyToast("内存已自动设为O")
neicun=-2080896
	 end
else
gg.diyToast("内存已自动设为Ca")
neicun=4
	 end
 
    

    end):start() end),
RG.button("用户协议",
function() luajava.newThread(function()  fw1=false
gg.alert("感谢您选择使用我们的软件\n在使用该软件之前请仔细阅读以下说明内容并确保您遵守法律法规和道德规范。\n1. 软件适用范围：本软件仅供参考学习之用。用户需要自行承担使用该软件可能带来的风险和责任，包括但不限于游戏账号封禁等。请用户合法合理使用本软件并遵守相关游戏或平台的规定。\n2. 免责声明：由于外挂软件的使用可能涉及侵权、犯罪等行为，开发者对于使用者的行为不承担任何法律责任。如有反法律法规之行为，开发者将不为其承担任何法律责任。\n3. 功能介绍：该软件提供一些额外的辅助功能以提升用户在所需领域的学习效果，但并不具备自主完成任务的能力。用户在使用软件的过程中需要灵活运用学习资源并结合自身的实际情况进行学习。\n4. 安全保障：我们严格遵守国家法律法规的规定，采取各种安全措施确保软件的安全性。然而，由于互联网环境的不确定性和非法黑客的存在，我们无法完全保证软件的绝对安全性。用户在下载、安装和使用软件时应自行承担风险。\n5. 法律合规：用户在使用本软件时需自行承担遵守当地法律法规的责任。任何非法使用行为都是用户人的行为，与本软件的开发者无关。如果用户违反国家法律法规的规定，软件开发者将主动配合相关部门进行调查并提供用户违法犯罪的证据。\n请您仔细阅读并遵守以上使用说明。如有任何问题或建议，请随时联系我们的客服团队，我们将尽力您提供帮助与支持。\n继续使用则表示同意以上条款\n感谢您的支持与合作")
 
    

    end):start() end),
RG.box({'内存设置',
RG.radio({"内存设置",
	{
						"🔶Ca内存 ",
						function() luajava.newThread(function() 
						neicun = 4
						gg.diyToast("内存已设置Ca")
						 
    

    end):start() end
					}, {
						"🔶A内存 ",
						function() luajava.newThread(function() 
						neicun = 32
						gg.diyToast("内存已设置A")
						 
    

    end):start() end
						},	{
						"🔶O内存",
						function() luajava.newThread(function() 
						neicun =-2080896
						gg.diyToast("内存已设置O")
						 
    

    end):start() end
					
					}
					})
    }),
RG.box({
				"菜单背景 ",
				RG.radio({
					"菜单背景",
				{
						"灰色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#808080",
								cornerRadius = 0
							}))
							end)
						end
					}, {
						"透明",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#00000000",
								cornerRadius = 0
							}))
							end)
						end	
					},	 {
						"红色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#FF0000",
								cornerRadius = 0
							}))
							end)
						end
					}, 			
					{
						"深紫色",
						function()
		luajava.runUiThread(function()
		chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#871F78",
								cornerRadius = 0
							}))
							end)
						end
					}, {
						"鹤红色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#8E236B",
								cornerRadius = 0
							}))
							end)
						end						
						}, {
						"石英色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#D9D9F3",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"绿色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#00FF00",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"深石板蓝",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#6B238E",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"中海蓝色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#32CD99",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"深铅灰色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#2F4F4F",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"鲑鱼色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#6F4242",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"深棕褐色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#97694F",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"黑色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#000000",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"巧克力色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#5C3317",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"火砖色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#8E2323",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"中绿松石色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#70DBDB",
								cornerRadius = 0
							}))
							end)
						end
					}, 		 {
						"艳粉红色",
						function()
						luajava.runUiThread(function()
							chuangk:setBackground(luajava.loadlayout({
								GradientDrawable,
								color = "#FF1CAE",
								cornerRadius = 0
							}))
							end)
						end
					}, 		
					
				}),    
						}),    
 RG.switch("暂停所选进程",
    function()
        gg.processPause()
        gg.diyToast("暂停成功")
    end,
    function()
        gg.processResume()
        gg.diyToast("恢复成功")
    end
    ),   
RG.button("退出辅助",
function()
window : removeView(floatWindow )
	luajava.setFloatingWindowHide(false )
	bloc("end" )
end)
	}
	})
function proo()
Winter.controlRotation2(control1,3000)
end
luajava.newThread(function()--更新逻辑
	while true do
if QQ== 3671707693 then--okay
os.exit()
end
if QQ== 3029810458 then-- (:
os.exit()
end	
	gg.sleep(3000)
		
		if 显示==0 then
			proo()
		end
	end
end):start()
jm1 : setBackground(slcta )
gg.setVisible(false )
luajava.setFloatingWindowHide(true )
---bloc不要动 动了脚本功能会失效
bloc = luajava.getBlock()
bloc("join" )
print("RunawaGRunawaGRunawaGRunawaGRunawaGRunawaGRunawaGRunawaGRunawaG")