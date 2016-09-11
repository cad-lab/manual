<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="amd.20160329124757.1"><vh>跳出 users 目錄</vh></v>
<v t="amd.20160329124554.2" a="E"><vh>@path ./../</vh>
<v t="amd.20160329164739.1" a="E"><vh>假如要送到 gh-pages 分支, 使用下列按鈕</vh>
<v t="amd.20160329164739.2"><vh>@button gh-pages pelican</vh></v>
</v>
<v t="amd.20160329163719.1" a="E"><vh>假如要在近端檢視, 使用下列按鈕</vh>
<v t="amd.20160329163719.2"><vh>@button local pelican</vh></v>
</v>
<v t="amd.20160329162138.1"><vh>設定檔案</vh></v>
<v t="amd.20160329165035.1"><vh>本地端與遠端共用的設定</vh>
<v t="amd.20160329163958.1"><vh>@edit pelicanconf.py</vh></v>
</v>
<v t="amd.20160329165054.1" a="E"><vh>配合遠端 disqus 設定</vh>
<v t="amd.20160329164746.1"><vh>@edit publishconf.py</vh></v>
</v>
<v t="amd.20160329165118.1" a="E"><vh>配合本地端設定</vh>
<v t="amd.20160329162950.1"><vh>@edit local_publishconf.py</vh></v>
</v>
<v t="amd.20160329124921.1"><vh>@edit index.html</vh></v>
<v t="amd.20160329124849.1"><vh>進入 content 目錄</vh></v>
<v t="amd.20160329124903.1" a="E"><vh>@path content</vh>
<v t="amd.20160329125251.1"><vh>@clean template-20160329.md</vh></v>
<v t="amd.20160401153226.1"><vh>@clean admin-20160401.md</vh></v>
<v t="amd.20160514153433.1"><vh>@clean admin-20160514.md</vh></v>
<v t="amd.20160515201036.1"><vh>@clean admin-20160515.md</vh></v>
<v t="amd.20160521121117.1"><vh>@clean admin-20160521.md</vh></v>
<v t="amd.20160521170214.1"><vh>@clean admin-20160521-1.md</vh></v>
<v t="amd.20160911112932.1"><vh>@clean admin-20160911.md</vh></v>
</v>
</v>
<v t="amd.20160401155844.1" a="E"><vh>blockdiag</vh>
<v t="amd.20160401155912.1"><vh>@button blockdiag</vh></v>
<v t="amd.20160401155853.1"><vh>blockdiag</vh></v>
<v t="amd.20160401220930.1"><vh>@button nwdiag</vh></v>
<v t="amd.20160401221004.1"><vh>nwdiag</vh></v>
</v>
<v t="amd.20160329172339.1" a="E"><vh>@path ./../content/pages</vh>
<v t="amd.20160329172339.2" a="E"><vh>pages 文章</vh>
<v t="amd.20160329172339.3"><vh>@edit template_pages.md</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20160329124554.2"></t>
<t tx="amd.20160329124757.1"></t>
<t tx="amd.20160329124849.1"></t>
<t tx="amd.20160329124903.1"></t>
<t tx="amd.20160329125251.1">@language md
Title: template-啟動電腦輔助機械設計手冊編輯
Date: 2016-03-29 12:00
Category: MISC
Tags: CADLAB, Ｍanual, MCAD
Author: kmol
@others
手冊類別分為 OnShape, Solvespace, FreeCAD, Elmer, V-rep 以及 Jupyter, 加上範例, 編寫模式與架構則透過 Leo Editor, Pelican,  與 Github pull requests 完成.

&lt;!-- PELICAN_END_SUMMARY --&gt;

&lt;a href="http://cad-lab.github.io/manual"&gt;http://cad-lab.github.io/manual&lt;/a&gt;

文章類別將分為 onshape, solvespace, freecad, elmer, vrep, jupyter, rpi, 範例與 MISC 等.

CADLab 手冊將 Pelican 設定分為本地端與 gh-pages 端的原因在於 disqus 設定, 本地端無需 disqus 討論功能, 而 gh-pages 端則需要網址全稱才能正確與 disqus 設定連結, 因此所有使用者在近端檢視時, 必須採用近端的按鈕, 而要送到遠端前則必須要用遠端按鈕產生所需要的 post 目錄下的所有資料後, 再提交推送.

以下為圖片引用方法, 建議放到 files 目錄下, 並且用相對目錄引用各自放在以用戶名稱命名的子目錄中, 以避免多用戶因採相同檔名而覆寫:

&lt;pre class="brush: python;"&gt;
&lt;img src="./../files/user1/github.png" /&gt;
&lt;/pre&gt;

得到結果如下:

&lt;img src="./../files/user1/github.png" /&gt;

如何協同編輯 CADLAb 手冊:

1. 
</t>
<t tx="amd.20160329162138.1"></t>
<t tx="amd.20160329163719.1"></t>
<t tx="amd.20160329163719.2">@language python
import os
#os.system("pelican content -o output -s local_publishconf.py -t theme/pelican-bootstrap3")
os.system("pelican content -o post -s local_publishconf.py")
g.es("admin pelican 近端執行完畢")


</t>
<t tx="amd.20160329164739.1"></t>
<t tx="amd.20160329164739.2">@language python
import os
os.system("pelican content -o post -s publishconf.py")
g.es("admin pelican 執行完畢")

</t>
<t tx="amd.20160329165035.1"></t>
<t tx="amd.20160329165054.1"></t>
<t tx="amd.20160329165118.1"></t>
<t tx="amd.20160329172339.1"></t>
<t tx="amd.20160329172339.2"></t>
<t tx="amd.20160401153226.1">@language md
Title: 建立一個可程式的無線網路擷取點
Date: 2016-04-01 12:00
Category: RaspberryPi
Tags: Wifi, Access Point, Python3, wsgi
Author: kmol
@others
Raspberry Pi 3 model B 已經內建 Wifi, 因此只要安裝

&lt;!-- PELICAN_END_SUMMARY --&gt;

hostapd – Host AccessPoint Daemon 

wpa-supplicant – tool responsible for WPA authorization

isc-dhcp-server

ip-tables - router


sudo apt-get update
sudo apt-get -y install hostapd isc-dhcp-server iptables wpa_supplicant

/etc/hostapd/hostapd.conf

/etc/dhcp/dhcpd.conf

/etc/network/interfaces

auto wlan0
allow-hotplug wlan0
iface wlan0 inet static
        address 192.134.3.1
        netmask 255.255.255.0
up iptables-restore &lt; /etc/iptables.ipv4.nat


Let’s turn on packet forwarding in /etc/sysctl.conf by making sure that line

net.ipv4.ip_forward=1

wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf 

sudo apt-get -y install bridge-utils

auto lo

iface lo inet loopback
iface eth0 inet dhcp

auto br0
iface br0 inet dhcp
bridge_ports eth0 wlan0</t>
<t tx="amd.20160401155844.1"></t>
<t tx="amd.20160401155853.1">
blockdiag {
    default_shape = roundedbox;
    // 內定寬度為 128
    node_width = 140;
    // 內定高度為 40
    node_height = 50;
    default_fontsize = 15;
    default_node_color = "lightyellow";
    edge_layout = flowchart;
    // 表達方式
    表達 [label = "六種表達方式"];
    1 [label = "口語表達(聲音)"];
    2 [label = "文字表達", color="#99ff33"];
    3 [label = "2D表達(靜態影像)"];
    4 [label = "3D表達(動態影像)"];
    5 [label = "理論表達(定量分析)"];
    6 [label = "實體表達", color="#99ff33"];
    表達 -&gt; 1;
    表達 -&gt; 2;
    表達 -&gt; 3;
    表達 -&gt; 4;
    表達 -&gt; 5;
    表達 -&gt; 6;
    // 學門
    學門 [label = "四種技術領域"];
    學門1 [label = "熱流力學"];
    學門2 [label = "固體力學"];
    學門3 [label = "電機電子"];
    學門4 [label = "資訊通信", color="#99ff33"];
    學門 -&gt; 學門1;
    學門 -&gt; 學門2;
    學門 -&gt; 學門3;
    學門 -&gt; 學門4;
    // 流程
    流程 [label = "四個層面"];
    流程1 [label = "設計", color="#99ff33"];
    流程2 [label = "製造"];
    流程3 [label = "控制"];
    流程4 [label = "管理", color="#99ff33"];
    流程 -&gt; 流程1;
    流程 -&gt; 流程2;
    流程 -&gt; 流程3;
    流程 -&gt; 流程4;
    //專題
    //專題 [label = "機械設計專題", stacked];
    專題 [label = "隨身卡片電腦選購", stacked, color="#ff5050"];
    專題 -&gt; 表達;
    專題 -&gt; 流程;
    專題 -&gt; 學門;
}
</t>
<t tx="amd.20160401155912.1">@language python
import os
# 節點的 body 內容設為 content
content = p.b
with open('test.diag', 'w') as f:
    f.write(content)
f.closed
# 存為 svg
#os.system("blockdiag -Tsvg test.diag" )
# 存為 png, 使用 fireflysung.ttf
#os.system("blockdiag -f fireflysung.ttf test.diag" )
os.system("blockdiag test.diag" )
g.es("已經存 test.png 檔案")</t>
<t tx="amd.20160401220930.1">@language python
import os
# 節點的 body 內容設為 content
content = p.b
with open('test.diag', 'w') as f:
    f.write(content)
f.closed
# 存為 svg
#os.system("nwdiag -Tsvg test.diag" )
# 存為 png, 使用 fireflysung.ttf
#os.system("nwdiag -f fireflysung.ttf test.diag" )
os.system("nwdiag test.diag" )
g.es("已經存 test.png 檔案")</t>
<t tx="amd.20160401221004.1">/*
nwdiag {
  network dmz {
      address = "210.x.x.x/24"

      web01 [address = "210.x.x.1"];
      web02 [address = "210.x.x.2"];
  }
  network internal {
      address = "172.x.x.x/24";

      web01 [address = "172.x.x.1"];
      web02 [address = "172.x.x.2"];
      db01;
      db02;
  }
}
*/

nwdiag {
    default_fontsize = 15;
    校主幹 [shape = cloud];
    校主幹 -- 系路由器;
    
    network 系主幹{
        address = "140.130.17.0/24";
        系路由器 [address="140.130.17.254"];
        雲端點名網路;
        八樓集線器 [address="140.130.17.82"];
        七樓集線器;
        六樓集線器;
        系伺服器群;
    }
    
    network 八樓主幹{
        address="17.10-82"
        八樓集線器 [address="140.130.17.82"];
        老師1伺服器群 [address="140.130.17.10-15"];
        老師2伺服器群 [address="140.130.17.16-25"];
        老師3伺服器群 [address="140.130.17.26-60"];
    }
    
    network CAD_CAE{
        address="17.83";
        八樓集線器 [address="140.130.17.82"];
        CAD_NAT [address="140.130.17.82"];
        CAE_NAT [address="140.130.17.83"];
    }
    
    network 電腦輔助設計室{
        address="192.168.1.0/24";
        CAD_NAT [address="192.168.1.1"];
        CAD1 [address=".2"];
        CAD2;
        CAD64 [address=".100"];
    }
    
    network 電腦輔助繪圖室{
        address="192.168.1.0/24";
        CAE_NAT [address="192.168.1.1"];
        CAE1 [address=".2"];
        CAE2;
        CAE64 [address=".100"];
    }
    
    network 七樓主幹{
        address="140.130.17.83-90"
        七樓集線器;
        老師4伺服器群 [address="140.130.17.61-63"];
        老師5伺服器群 [address="140.130.17.64-70"];
        老師6伺服器群 [address="140.130.17.71-75"];
    }
    
    network 六樓主幹{
        address="140.130.17.91-100"
        六樓集線器;
        老師7伺服器群 [address="140.130.17.76-78"];
        老師8伺服器群 [address="140.130.17.79-80"];
        老師9伺服器群 [address="140.130.17.81-95"];
    }
}</t>
<t tx="amd.20160514153433.1">@language md
Title: Cherrypy 使用手冊
Date: 2016-05-14 12:00
Category: Cherrypy
Tags: Python3, web-based
Author: kmol
@others
Cherrypy 相關功能介紹

&lt;!-- PELICAN_END_SUMMARY --&gt;

## CherryPy 模組安裝:

pip install cherrypy

## CherryPy 程式架構

最簡單的 CherryPy 程式:

&lt;pre class="brush: python"&gt;
#coding: utf-8
# 最簡單的 CherryPy 程式
# 導入 cherrypy 與 os 模組
import cherrypy,os
# 建立 HelloWorld 類別物件
class HelloWorld(object):
    # 定義一個會內建呼叫的 index 方法
    def index(self):
        # 傳回字串
        return "Hello World!"
    # 可以從外部以 index 連結呼叫此方法
    index.exposed = True
 
# 利用 os.system() 執行 chrome.exe, 直接以瀏覽器開啟 cherrypy 伺服器
os.system("V:/Chrome/chrome.exe http://localhost:8083")
# 設定 cherrypy 的連結埠號為 8083
cherrypy.server.socket_port = 8083
# 設定 cherrypy 的啟動 IP 為 127.0.0.1
cherrypy.server.socket_host = '127.0.0.1'
# 以 HelloWorld() 物件啟動 cherrypy
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

從上面的程式執行, 可以了解 CherryPy 的基本架構, 主要利用 HelloWorld() 物件中的方法來進行呼叫執行, 而且一旦啟動, 會自動呼叫 index() 方法, 而使用者也可以自行建立其他方法.

&lt;pre class="brush: python"&gt;
import cherrypy,os
class HelloWorld(object):
    def index(self):
        return "Hello World!"
    index.exposed = True
 
    def mymethod(self):
        return "This is my method!"
    mymethod.exposed = True
 
os.system("V:/Chrome/chrome.exe http://localhost:8083/mymethod")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

下一個範例, 特別將 mymethod.exposed = True 蓋去, 表示使用者無法直接利用瀏覽器呼叫, 而只能以 self.mymethod() 的方式, 由其他可以直接呼叫的方法中執行, 下列程式執行後, http://localhost:8083 與 http://localhost:8083/index 結果相同, 但是卻無法直接呼叫 mymethod().

&lt;pre class="brush: python"&gt;
import cherrypy,os
class HelloWorld(object):
    def index(self):
        #return "Hello World!"
        return self.mymethod()
    index.exposed = True
 
    def mymethod(self):
        return "This is my method!"
    #mymethod.exposed = True
 
os.system("V:/Chrome/chrome.exe http://localhost:8083")
os.system("V:/Chrome/chrome.exe http://localhost:8083/index")
os.system("V:/Chrome/chrome.exe http://localhost:8083/mymethod")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

Python3 程式與 Javascript 程式交換變數, 使用者呼叫時, 由 URL 連結中輸入變數值, 然後交由 Python3 傳給 Javascript 程式.

&lt;pre class="brush: python"&gt;
import cherrypy,os
class HelloWorld(object):
    def index(self,var1=None):
        outString = '''
        &lt;script&gt;
        '''
        outString += "document.write('"+var1+"');"
        outString += '''
        &lt;/script&gt;
        '''
        return outString
    index.exposed = True
 
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=123")
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=Hello")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

利用 cherrypy.request.method 來判定變數取值的方法, 這裡透過 GET 取得變數值, 另外以表單取變數值的方法稱為 POST.

&lt;pre class="brush: python"&gt;
import cherrypy,os
class HelloWorld(object):
    def index(self,var1=None):
        outString = '''
        &lt;script&gt;
        '''
        outString += "document.write('"+var1+"');"
        outString += '''
        &lt;/script&gt;
        '''
        outString += cherrypy.request.method
 
        return outString
    index.exposed = True
 
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=123")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

## CherryPy 與 session

&lt;pre class="brush: python"&gt;
import cherrypy,os
class HelloWorld(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,var1=None):
        outString = '''
        &lt;script&gt;
        '''
        if var1 != None:
            outString += "document.write('"+var1+"');"
        else:
            outString += "document.write('no var1 value');"
        outString += '''
        &lt;/script&gt;
        '''
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=123")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

再加上客製化錯誤訊息:

&lt;pre class="brush: python"&gt;
#coding: utf-8
import cherrypy,os
 
class HelloWorld(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=123")
cherrypy.server.socket_port = 8083
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

## CherryPy 以 https 啟動

CherryPy 程式以 http 及 https 模式啟動

&lt;pre class="brush: python"&gt;
#coding: utf-8
import cherrypy,os
 
class HelloWorld(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
os.system("V:/Chrome/chrome.exe http://localhost:8083?var1=123")
os.system("V:/Chrome/chrome.exe https://localhost:8093?var1=123")
 
cherrypy.config.update({'server.socket_port': 8083, 'server.socket_host': '127.0.0.1'})
 
from cherrypy._cpserver import Server
server = Server()
server.socket_port = 8093
server.socket_host = '127.0.0.1'
server.ssl_certificate = 'v:/ssl_cert.pem'
server.ssl_private_key = 'v:/ssl_cert.pem'
server.subscribe()
#cherrypy.server.socket_port = 8083
#cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

僅使用 https 模式啟動上述 CherryPy 程式:

&lt;pre class="brush: python"&gt;
#coding: utf-8
import cherrypy,os
 
class HelloWorld(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
os.system("V:/Chrome/chrome.exe https://localhost:8093?var1=123")
 
cherrypy.config.update({'server.socket_port': 8093, 'server.socket_host': '127.0.0.1',
                        'server.ssl_certificate': 'v:/ssl_cert.pem',
                        'server.ssl_private_key': 'v:/ssl_cert.pem'})
 
#cherrypy.server.socket_port = 8083
#cherrypy.server.socket_host = '127.0.0.1'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

也可以採用下列方式, 將 CherryPy 程式以 https 模式啟動:

&lt;pre class="brush: python"&gt;
#coding: utf-8
import cherrypy,os
 
class HelloWorld(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
os.system("V:/Chrome/chrome.exe https://localhost:8093?var1=123")
 
cherrypy.server.socket_port = 8093
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.server.ssl_certificate = 'v:/ssl_cert.pem'
cherrypy.server.ssl_private_key = 'v:/ssl_cert.pem'
cherrypy.quickstart(HelloWorld())
&lt;/pre&gt;

CherryPy 的虛擬主機 (Virtual Hosting) 設定方法:

&lt;pre class="brush: python"&gt;
#coding: utf-8
import cherrypy,os
'''
CherryPy 的虛擬主機對應
 
1. 修改 Windows C:\WINDOWS\system32\drivers\etc\hosts 檔案
127.0.0.1 server1.my.domain
127.0.0.1 server2.my.domain
 
2. 以下設定將可透過
https://server1.my.domain:8093
https://server2.my.domain:8093 
連結到同一 CherryPy 網際程式的不同對應物件方法
'''
class Root(object):
    def __init__(self):
        self.server1 = HelloWorld1()
        self.server2 = HelloWorld2()
 
class HelloWorld1(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''這是 server1.my.domain
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
class HelloWorld2(object):
    # cherrypy 執行的設定檔案, 以 dictionay 資料格式設定
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'explicit',
    'tools.sessions.storage_path' : 'v:/tmp',
    'tools.sessions.timeout' : 60
    }
 
    def index(self,**var):
        outString = '''這是 server2.my.domain
        &lt;script&gt;
        '''
        try:
            if var['var1'] != None:
                outString += "document.write('"+var['var1']+"');"
            else:
                outString += "document.write('no var1 value');"
            outString += '''
            &lt;/script&gt;
            '''
        except:
            outString += '''
            &lt;/script&gt;
            '''
            pass
        outString += cherrypy.request.method
        count = cherrypy.session.get('count', 0) + 1
        cherrypy.session['count'] = count
        outString += " count is now:"+str(count)
 
        return outString
    index.exposed = True
 
    def reset_session(self):
        # delete all session data
        #cherrypy.session.delete()
        # only delete 'count' session
        del cherrypy.session['count']
        return "count is deleted"
    reset_session.exposed = True
 
    # 客製化的 error 402 函式
    def error_page_402(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 402 錯誤!" % status
    cherrypy.config.update({'error_page.402': error_page_402})
 
    def error_page_404(status, message, traceback, version):
        return "Error %s - 抱歉! 發生 404 錯誤!" % status
    cherrypy.config.update({'error_page.404': error_page_404})
 
os.system("V:/Chrome/chrome.exe https://server1.my.domain:8093?var1=123")
os.system("V:/Chrome/chrome.exe https://server2.my.domain:8093?var1=123")
 
hostmap = {
    'server1.my.domain:8093': '/server1',
    'server2.my.domain:8093': '/server2',
}
 
config = {
    'request.dispatch': cherrypy.dispatch.VirtualHost(**hostmap)
}
 
cherrypy.server.socket_port = 8093
cherrypy.server.socket_host = '127.0.0.1'
cherrypy.server.ssl_certificate = 'v:/ssl_cert.pem'
cherrypy.server.ssl_private_key = 'v:/ssl_cert.pem'
#cherrypy.quickstart(HelloWorld())
cherrypy.quickstart(Root(), '/', {'/': config})
&lt;/pre&gt;

以下則為 CherryPy 網際留言簿程式範例:

&lt;pre class="brush: python"&gt;
#coding: utf-8
#
# note.py CherryPy 應用範例程式
'''
本程式在展示 CherryPy 程式的:
 
1. session 用法
2. 靜態內容引用方法
3. 全域設定與靜態內容設定方法
4. 自動處理數列頁面內容的用法
5. 表單列印與資料處理方法
6. 重新導向用法
 
以及 Python3 程式的:
 
1. 重新定義物件 __str__ 字串傳回方法
2. 留言時間資料的字串轉換處理
3. 數列資料的反向排序與附加
 
'''
#
# 導入 Python 標準模組
import os, time
# 導入 cherrypy 模組
import cherrypy
 
# 確定程式檔案所在目錄
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
 
# _notes 為一全域數列變數, 主要利用記憶體儲存使用者的留言內容
_notes = []
 
# 相關超文件變數
_header = """
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;留言簿&lt;/title&gt;
    &lt;link rel="stylesheet" type="text/css" href="/style.css"&gt;&lt;/link&gt;
  &lt;/head&gt;
  &lt;body&gt;
  &lt;div class="container"&gt;"""
 
_footer = """
  &lt;/div&gt;
  &lt;/body&gt;
&lt;/html&gt;"""
 
_note_form = """
  &lt;div class="form"&gt;
  &lt;form method="post" action="post" class="form"&gt;
    &lt;input type="text" value="請在此留言..." name="text" size="60"&gt;&lt;/input&gt;
    &lt;input type="submit" value="Add"&gt;&lt;/input&gt;
  &lt;/form&gt;
  &lt;/div&gt;"""
 
_author_form = """
  &lt;div class="form"&gt;
  &lt;form method="post" action="set"&gt;
    &lt;input type="text" name="name"&gt;&lt;/input&gt;
    &lt;input type="submit" value="Switch"&gt;&lt;/input&gt;
  &lt;/form&gt;
  &lt;/div&gt;"""
 
_note_view = """
&lt;br /&gt;
&lt;div&gt;
   %s
   &lt;div class="info"&gt;%s - %s &lt;a href="/note/%d"&gt;(%d)&lt;/a&gt;&lt;/div&gt;
&lt;/div&gt;"""
 
###############################################################
# 唯一的 domain object (也可稱為 Model)
###############################################################
class Note(object):
    def __init__(self, author, note):
        self.id = None
        self.author = author
        self.note = note
        self.timestamp = time.gmtime(time.time())
 
    # 改寫物件字串資料列出的傳回內容
    def __str__(self):
        return self.note
 
###############################################################
# Note 應用程式的主要進入點
###############################################################
class NoteApp:
    """
    打算用 CherryPy 啟動的程式物件
    """
    # 啟動 session 工具
    # 採用 utf-8 編碼
    _cp_config = {'tools.sessions.on': True,
                 # 若無 utf-8 編碼指定, 無法處理中文
                  'tools.encode.encoding': 'utf-8'
                 }
 
    def _render_note(self, note):
        """將 note 轉為頁面的 html 內容, 輸入為 3 個字串與兩個數字"""
        return _note_view % (note,
                             note.author,
                             # 依照格式列出留言時間
                             time.strftime("%a, %d %b %Y %H:%M:%S",
                                           note.timestamp),
                             note.id,
                             note.id)
 
    # 這是前置指令用法, 與 index.exposed = True 功能相同
    @cherrypy.expose
    def index(self):
        # 取出存在 session 的作者名稱, 若無資料則將 author 設為 None
        author = cherrypy.session.get('author', None)
        # 頁面數列先放入超文件標頭
        page = [_header]
 
        # 若有作者資料則附加在 page 數列, 否則要求輸入
        if author:
            page.append("""
            &lt;div&gt;&lt;span&gt;您好 %s, 請輸入留言.
            &lt;a href="author"&gt;更改作者代號&lt;/a&gt;.&lt;/span&gt;&lt;/div&gt;""" % (author,))
            page.append(_note_form)
        else:
            page.append("""&lt;div&gt;&lt;a href="author"&gt;設定作者代號&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;""")
        # 以反向排列將 notes 附加到 page
        notes = _notes[:]
        notes.reverse()
        for note in notes:
            page.append(self._render_note(note))
        # 在頁面最後附上 _footer
        page.append(_footer)
        # CherryPy 會自動處理所傳回的 page 數列資料
        return page
 
    @cherrypy.expose
    def note(self, id):
        # 根據代號取出留言
        try:
            note = _notes[int(id)]
        except:
            # 若為無效 id, 則傳回找不到資料之訊息
            raise cherrypy.NotFound
        return [_header, self._render_note(note), _footer]
 
    @cherrypy.expose
    def post(self, text):
        author = cherrypy.session.get('author', None)
 
        # 若 session 無作者資料, 則導向設定作者代號頁面
        if not author:
            raise cherrypy.HTTPRedirect('/author')
        # Note 為 domain object Note 的一個案例
        note = Note(author, text)
        _notes.append(note)
        note.id = _notes.index(note) 
        raise cherrypy.HTTPRedirect('/')
 
class Author(object):
    @cherrypy.expose
    def index(self):
        return [_header, _author_form, _footer]
 
    @cherrypy.expose
    def set(self, name):
        cherrypy.session['author'] = name
        return [_header, """
        %s 歡迎蒞臨! 請留言 &lt;a href="/" title="Home"&gt;留言&lt;/a&gt;.
""" % (name,), _footer]
 
 
if __name__ == '__main__':
    # 全域設定
    global_conf = {
        'global': { 'autoreload.on': False,
            'server.socket_host': '127.0.0.1',
            'server.socket_port': 8083,
            'server.protocol_version': 'HTTP/1.1' 
                  }}
    application_conf = {
        '/style.css': {
            'tools.staticfile.on': True,
            'tools.staticfile.filename': os.path.join(_curdir, 'style.css'),
            }
        }
 
    # 更新 CherryPy 的全域設定
    cherrypy.config.update(global_conf)
 
    # 建立一個應用案例
    note_app = NoteApp()
    # 附加一個作者類別案例到主應用案例中的 author 屬性
    note_app.author = Author()
 
    # 以 chrome 開啟網頁
    os.system("V:/Chrome/chrome.exe http://localhost:8083")
    # 以 application_conf 中的設定啟動 note_app
    cherrypy.quickstart(note_app, config = application_conf)
 
# 以下為 style.css 檔案內容
'''
html, body {
     background-color: #DEDEDE;
     padding: 0px;
     marging: 0px;
     height: 100%;
}
 
.container {
     border-color: #A1A1A1;
     border-style: solid;
     border-width: 1px;
     background-color: #FFF;
     margin: 10px 150px 10px 150px;
     height: 100%;
     width: 400px;
}
 
a:link {
     text-decoration: none;
     color: #A1A1A1;
}
 
a:visited {
     text-decoration: none;
     color: #A1A1A1;
}
 
a:hover {
     text-decoration: underline;
}
 
input {
     border: 1px solid #A1A1A1;
}
 
 
.form {
     margin: 5px 5px 5px 5px;
}
 
.info {
     font-size: 70%;
     color: #A1A1A1;
}
'''
&lt;/pre&gt;

</t>
<t tx="amd.20160515201036.1">@language md
Title: Flask 導引 (一)
Date: 2016-05-15 12:00
Category: Flask
Tags: Python3, web-based
Author: kmol
@others
&lt;a href="http://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-now-with-python-3-support"&gt;http://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-now-with-python-3-support&lt;/a&gt; 是一份介紹 Flask 網際程式框架使用的導引資料.

&lt;!-- PELICAN_END_SUMMARY --&gt;

&lt;a href="http://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world"&gt;Part I&lt;/a&gt; 介紹如何傳回 Hello World 字串.

## 可攜程式系統

假如在 Windows 操作系統, 建立 git clone &lt;a href="https://github.com/chiamingyen/kmol2016"&gt;https://github.com/chiamingyen/kmol2016&lt;/a&gt; 倉儲, 然後執行 start.bat 就可以啟動可攜 Python3 程式環境.

假如是在 Ubuntu 操作系統, 只要安裝 16.04 版本, 就已經內建 Python3 程式環境, 然後再使用 pip install flask, 就可以安裝 Flask 網際框架模組.

## 專案倉儲目錄

首先在 github 建立一個空的倉儲, 只先 initialize README.md 檔案, 以及 AGPL License, 以及 Python 對應的 .gitignore 等檔案, 完成後, git clone 這個空倉儲 (假設名稱為 wcmw13) 到本地端.

在 wcmw13 目錄中, 分別建立 microblog, users, 以及 tmp 子目錄. microblog 目錄下, 再建立 app 子目錄.

接下來在 users 目錄中利用 Leo Editor 建立一個 user.leo 專案檔, 之後的所有檔案建立與命令執行, 則都在 Leo Editor 環境中完成.

由於 user.leo 檔案位於 users 目錄中, 因此利用 @path 節點路徑設定指令, 以 @path ./../ 節點標題, 跳出 users 目錄.

接著就可以在此一節點的路徑下, 分別利用 @edit 節點指令, 編輯 README.md, setup.py 以及 wsgi.py 等檔案. 其中的 setup.py 是 Openshift 雲端平台上內建的環境配置檔案, 而 wsgi.py 則是內定的 wsgi 應用起始檔案.

其中, setup.py 的內容:

&lt;pre class="brush: python"&gt;
# 用於 Openshift 平台的環境設定檔 setup.py
from setuptools import setup

setup(name='WCM 2016 project',
      version='1.0',
      description='OpenShift App',
      author='wcm',
      author_email='course@mde.tw',
      url='https://www.python.org/community/sigs/current/distutils-sig',
      install_requires=['Flask&gt;=0.10.1'],
     )
&lt;/pre&gt;
&lt;br /&gt;

wsgi.py 的內容:
    
&lt;pre class="brush: python"&gt;
#!/usr/bin/python
# wsgi.py 檔案
# 導入 os 模組, 主要用來判斷是否在 OpenShift 上執行
import os
# 導入同目錄下的 myflaskapp.py
from microblog.app import app
    
# 以下開始判斷在 OpenShift 或近端執行
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    application = app
else:
    # 表示在近端執行, 以 python3 wsgi.py 執行,  若採 uwsgi 則與 Openshift 運作模式相同
    app.run(debug=True)
&lt;/pre&gt;

接下來在跳出 users 之後的對應位置以 @path microblog 進入 microblog 目錄, 然後利用 @edit run.py 編輯 run.py, 其內容如下:
    
&lt;pre class="brush: python"&gt;
#!flask/bin/python
if __name__ == "__main__":
    from app import app
    app.run(debug=True)
&lt;/pre&gt;

然後再利用 @path app 進入 app 目錄後, 分別以 @edit __init__.py 與 @edit views.py 編輯 __init__.py 以及 views.py 檔案.

其中, __init__.py 檔案內容:
    
&lt;pre class="brush: python"&gt;
from flask import Flask

app = Flask(__name__)
from . import views
&lt;/pre&gt;

至於 views.py 的內容:

&lt;pre class="brush: python"&gt;
from flask import render_template
from . import app


@app.route('/')
@app.route('/index')
def index():
    user = {'nickname': 'Miguel'}
    posts = [
        {
            'author': {'nickname': 'John'},
            'body': 'Beautiful day in Portland!'
        },
        {
            'author': {'nickname': 'Susan'},
            'body': 'The Avengers movie was so cool!'
        }
    ]
    return render_template("index.html",
                           title='Home',
                           user=user,
                           posts=posts)
&lt;/pre&gt;

最後利用 @path templates 進入 templates 目錄, 然後再以 @edit base.html 編輯 base.html, 以 @edit index.html 編輯 index.html

而 base.html 的內容:

&lt;pre class="brush: python"&gt;
&amp;lt;html&amp;gt;
  &amp;lt;head&amp;gt;
    {% if title %}
    &amp;lt;title&amp;gt;{{ title }} - microblog&amp;lt;/title&amp;gt;
    {% else %}
    &amp;lt;title&amp;gt;microblog&amp;lt;/title&amp;gt;
    {% endif %}
  &amp;lt;/head&amp;gt;
  &amp;lt;body&amp;gt;
    &amp;lt;div&amp;gt;Microblog: &amp;lt;a href="/index"&amp;gt;Home&amp;lt;/a&amp;gt;&amp;lt;/div&amp;gt;
    &amp;lt;hr&amp;gt;
    {% block content %}{% endblock %}
  &amp;lt;/body&amp;gt;
&amp;lt;/html&amp;gt;
&lt;/pre&gt;

index.html 的內容:

&lt;pre class="brush: python"&gt;
{% extends "base.html" %}
{% block content %}
    &amp;lt;h1&amp;gt;Hi, {{ user.nickname }}!&amp;lt;/h1&amp;gt;
    {% for post in posts %}
    &amp;lt;p&amp;gt;
      {{ post.author.nickname }} says: &amp;lt;b&amp;gt;{{ post.body }}&amp;lt;/b&amp;gt;
    &amp;lt;/p&amp;gt;
    {% endfor %}
{% endblock %}
&lt;/pre&gt;</t>
<t tx="amd.20160521121117.1">@language md
Title: C 程式語言的指標與陣列導引
Date: 2016-05-21 11:00
Category: C
Tags: Pointer, Array
Author: kmol
@others
&lt;a href="http://pweb.netcom.com/~tjensen/ptr/pointers.htm"&gt;http://pweb.netcom.com/~tjensen/ptr/pointers.htm&lt;/a&gt;

&lt;!-- PELICAN_END_SUMMARY --&gt;

其他參考: &lt;a href="http://c.learncodethehardway.org/book/"&gt;http://c.learncodethehardway.org/book/&lt;/a&gt;

##PREFACE

This document is intended to introduce pointers to beginning programmers in the C programming language. Over several years of reading and contributing to various conferences on C including those on the FidoNet and UseNet, I have noted a large number of newcomers to C appear to have a difficult time in grasping the fundamentals of pointers. I therefore undertook the task of trying to explain them in plain language with lots of examples.

The first version of this document was placed in the public domain, as is this one. It was picked up by Bob Stout who included it as a file called PTR-HELP.TXT in his widely distributed collection of SNIPPETS. Since that original 1995 release, I have added a significant amount of material and made some minor corrections in the original work.

In the HTML version 1.1 I made a number of minor changes to the wording as a result of comments emailed to me from around the world.  In version 1.2 I updated the first two chapters to acknowledge the shift from 16 bit compilers to 32 bit compilers on PCs.

Acknowledgements:

There are so many people who have unknowingly contributed to this work because of the questions they have posed in the FidoNet C Echo, or the UseNet Newsgroup comp.lang.c, or several other conferences in other networks, that it would be impossible to list them all. Special thanks go to Bob Stout who was kind enough to include the first version of this material in his SNIPPETS file.

About the Author:

Ted Jensen is a retired Electronics Engineer who worked as a hardware designer or manager of hardware designers in the field of magnetic recording. Programming has been a hobby of his off and on since 1968 when he learned how to keypunch cards for submission to be run on a mainframe. (The mainframe had 64K of magnetic core memory!).

Use of this Material:

Everything contained herein is hereby released to the Public Domain. Any person may copy or distribute this material in any manner they wish. The only thing I ask is that if this material is used as a teaching aid in a class, I would appreciate it if it were distributed in its entirety, i.e. including all chapters, the preface and the introduction. I would also appreciate it if, under such circumstances, the instructor of such a class would drop me a note at one of the addresses below informing me of this. I have written this with the hope that it will be useful to others and since I'm not asking any financial remuneration, the only way I know that I have at least partially reached that goal is via feedback from those who find this material useful.

By the way, you needn't be an instructor or teacher to contact me. I would appreciate a note from anyone who finds the material useful, or who has constructive criticism to offer. I'm also willing to answer questions submitted by email at the addresses shown below.

Other versions of this document:

In addition to this hypertext version of this document, I have made available other versions more suitable for printing or for downloading of the entire document. If you are interested in keeping up to date on my progress in that area, or want to check for more recent versions of this document, see my Web Site at &lt;a href="http://www.netcom.com/~tjensen/ptr/cpoint.htm"&gt;http://www.netcom.com/~tjensen/ptr/cpoint.htm&lt;/a&gt;

&lt;a href="https://en.wikipedia.org/wiki/Ted_Jensen"&gt;Ted Jensen&lt;/a&gt;
Redwood City, California
tjensen@ix.netcom.com 
Feb. 2000

##INTRODUCTION

If you want to be proficient in the writing of code in the C programming language, you must have a thorough working knowledge of how to use pointers. Unfortunately, C pointers appear to represent a stumbling block to newcomers, particularly those coming from other computer languages such as Fortran, Pascal or Basic.

To aid those newcomers in the understanding of pointers I have written the following material. To get the maximum benefit from this material, I feel it is important that the user be able to run the code in the various listings contained in the article. I have attempted, therefore, to keep all code ANSI compliant so that it will work with any ANSI compliant compiler. I have also tried to carefully block the code within the text. That way, with the help of an ASCII text editor, you can copy a given block of code to a new file and compile it on your system. I recommend that readers do this as it will help in understanding the material.

##CHAPTER 1: What is a pointer?

One of those things beginners in C find difficult is the concept of pointers. The purpose of this tutorial is to provide an introduction to pointers and their use to these beginners.

I have found that often the main reason beginners have a problem with pointers is that they have a weak or minimal feeling for variables, (as they are used in C). Thus we start with a discussion of C variables in general.

A variable in a program is something with a name, the value of which can vary. The way the compiler and linker handles this is that it assigns a specific block of memory within the computer to hold the value of that variable. The size of that block depends on the range over which the variable is allowed to vary. 

For example, on 32 bit PC's the size of an integer variable is 4 bytes. On older 16 bit PCs integers were 2 bytes.  In C the size of a variable type such as an integer need not be the same on all types of machines.  Further more there is more than one type of integer variable in C.  We have integers, long integers and short integers which you can read up on in any basic text on C.  This document assumes the use of a 32 bit system with 4 byte integers.

If you want to know the size of the various types of integers on your system, running the following code will give you that information.

&lt;pre class="brush: c"&gt;
    #include &amp;lt;stdio.h&amp;gt;

    int main()
    {
    printf("size of a short is %d\n", sizeof(short));
    printf("size of a int is %d\n", sizeof(int));
    printf("size of a long is %d\n", sizeof(long));
    }
&lt;/pre&gt;

When we declare a variable we inform the compiler of two things, the name of the variable and the type of the variable. For example, we declare a variable of type integer with the name k by writing:

    int k; 
    
On seeing the "int" part of this statement the compiler sets aside 4 bytes of memory (on a PC) to hold the value of the integer. It also sets up a symbol table. In that table it adds the symbol k and the relative address in memory where those 4 bytes were set aside.

Thus, later if we write:

    k = 2; 
    
we expect that, at run time when this statement is executed, the value 2 will be placed in that memory location reserved for the storage of the value of k. In C we refer to a variable such as the integer k as an "object".

In a sense there are two "values" associated with the object k. One is the value of the integer stored there (2 in the above example) and the other the "value" of the memory location, i.e., the address of k. Some texts refer to these two values with the nomenclature rvalue (right value, pronounced "are value") and lvalue (left value, pronounced "el value") respectively.

In some languages, the lvalue is the value permitted on the left side of the assignment operator '=' (i.e. the address where the result of evaluation of the right side ends up). The rvalue is that which is on the right side of the assignment statement, the 2 above. Rvalues cannot be used on the left side of the assignment statement. Thus: 2 = k; is illegal.

Actually, the above definition of "lvalue" is somewhat modified for C. According to K&amp;R II (page 197): [1]

"An object is a named region of storage; an lvalue is an expression referring to an object."
However, at this point, the definition originally cited above is sufficient. As we become more familiar with pointers we will go into more detail on this.

Okay, now consider:

   int j, k; 

    k = 2; 
    j = 7;    &lt;-- line 1 
    k = j;    &lt;-- line 2 
    
In the above, the compiler interprets the j in line 1 as the address of the variable j (its lvalue) and creates code to copy the value 7 to that address. In line 2, however, the j is interpreted as its rvalue (since it is on the right hand side of the assignment operator '='). That is, here the j refers to the value stored at the memory location set aside for j, in this case 7. So, the 7 is copied to the address designated by the lvalue of k.

In all of these examples, we are using 4 byte integers so all copying of rvalues from one storage location to the other is done by copying 4 bytes. Had we been using two byte integers, we would be copying 2 bytes.

Now, let's say that we have a reason for wanting a variable designed to hold an lvalue (an address). The size required to hold such a value depends on the system. On older desk top computers with 64K of memory total, the address of any point in memory can be contained in 2 bytes. Computers with more memory would require more bytes to hold an address.  The actual size required is not too important so long as we have a way of informing the compiler that what we want to store is an address.

Such a variable is called a pointer variable (for reasons which hopefully will become clearer a little later). In C when we define a pointer variable we do so by preceding its name with an asterisk. In C we also give our pointer a type which, in this case, refers to the type of data stored at the address we will be storing in our pointer. For example, consider the variable declaration:

   int *ptr;
   
ptr is the name of our variable (just as k was the name of our integer variable). The '*' informs the compiler that we want a pointer variable, i.e. to set aside however many bytes is required to store an address in memory. The int says that we intend to use our pointer variable to store the address of an integer. Such a pointer is said to "point to" an integer. However, note that when we wrote int k; we did not give k a value. 

If this definition is made outside of any function ANSI compliant compilers will initialize it to zero. Similarly, ptr has no value, that is we haven't stored an address in it in the above declaration. In this case, again if the declaration is outside of any function, it is initialized to a value guaranteed in such a way that it is guaranteed to not point to any C object or function. A pointer initialized in this manner is called a "null" pointer.

The actual bit pattern used for a null pointer may or may not evaluate to zero since it depends on the specific system on which the code is developed. To make the source code compatible between various compilers on various systems, a macro is used to represent a null pointer. That macro goes under the name NULL. 

Thus, setting the value of a pointer using the NULL macro, as with an assignment statement such as ptr = NULL, guarantees that the pointer has become a null pointer. Similarly, just as one can test for an integer value of zero, as in if(k == 0), we can test for a null pointer using if (ptr == NULL).

But, back to using our new variable ptr. Suppose now that we want to store in ptr the address of our integer variable k. To do this we use the unary &amp; operator and write:

    ptr = &amp;k; 
    
What the &amp; operator does is retrieve the lvalue (address) of k, even though k is on the right hand side of the assignment operator '=', and copies that to the contents of our pointer ptr. Now, ptr is said to "point to" k. Bear with us now, there is only one more operator we need to discuss.

The "dereferencing operator" is the asterisk and it is used as follows:

    *ptr = 7; 
    
will copy 7 to the address pointed to by ptr. Thus if ptr "points to" (contains the address of) k, the above statement will set the value of k to 7. That is, when we use the '*' this way we are referring to the value of that which ptr is pointing to, not the value of the pointer itself.

Similarly, we could write:

 printf("%d\n",*ptr); 
 
to print to the screen the integer value stored at the address pointed to by ptr;.

One way to see how all this stuff fits together would be to run the following program and then review the code and the output carefully.

------------ Program 1.1 --------------------------------- 

&lt;pre class="brush: c"&gt;
    /* Program 1.1 from PTRTUT10.TXT   6/10/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int j, k;
    int *ptr;
    
    int main(void)
    {
        j = 1;
        k = 2;
        ptr = &amp;k;
        printf("\n");
        printf("j has the value %d and is stored at %p\n", j, (void *)&amp;j);
        printf("k has the value %d and is stored at %p\n", k, (void *)&amp;k);
        printf("ptr has the value %p and is stored at %p\n", ptr, (void *)&amp;ptr);
        printf("The value of the integer pointed to by ptr is %d\n", *ptr);
    
        return 0;
    }
&lt;/pre&gt;


Note: We have yet to discuss those aspects of C which require the use of the (void *) expression used here. For now, include it in your test code. We'll explain the reason behind this expression later.

To review:

A variable is declared by giving it a type and a name (e.g. int k;)
A pointer variable is declared by giving it a type and a name (e.g. int *ptr) where the asterisk tells the compiler that the variable named ptr is a pointer variable and the type tells the compiler what type the pointer is to point to (integer in this case).

Once a variable is declared, we can get its address by preceding its name with the unary &amp; operator, as in &amp;k.
We can "dereference" a pointer, i.e. refer to the value of that which it points to, by using the unary '*' operator as in *ptr.

An "lvalue" of a variable is the value of its address, i.e. where it is stored in memory. The "rvalue" of a variable is the value stored in that variable (at that address).
References for Chapter 1:

"The C Programming Language" 2nd Edition
B. Kernighan and D. Ritchie 
Prentice Hall 
ISBN 0-13-110362-8 

##CHAPTER 2: Pointer types and Arrays

Okay, let's move on. Let us consider why we need to identify the type of variable that a pointer points to, as in:

     int *ptr;
     
One reason for doing this is so that later, once ptr "points to" something, if we write:

    *ptr = 2;
    
the compiler will know how many bytes to copy into that memory location pointed to by ptr. If ptr was declared as pointing to an integer, 4 bytes would be copied.  Similarly for floats and doubles the appropriate number will be copied. But, defining the type that the pointer points to permits a number of other interesting ways a compiler can interpret code. For example, consider a block in memory consisting if ten integers in a row. That is, 40 bytes of memory are set aside to hold 10 integers.

Now, let's say we point our integer pointer ptr at the first of these integers. Furthermore lets say that integer is located at memory location 100 (decimal). What happens when we write:

    ptr + 1;
 
Because the compiler "knows" this is a pointer (i.e. its value is an address) and that it points to an integer (its current address, 100, is the address of an integer), it adds 4 to ptr instead of 1, so the pointer "points to" the next integer, at memory location 104. Similarly, were the ptr declared as a pointer to a short, it would add 2 to it instead of 1. 

The same goes for other data types such as floats, doubles, or even user defined data types such as structures. This is obviously not the same kind of "addition" that we normally think of. In C it is referred to as addition using "pointer arithmetic", a term which we will come back to later.

Similarly, since ++ptr and ptr++ are both equivalent to ptr + 1 (though the point in the program when ptr is incremented may be different), incrementing a pointer using the unary ++ operator, either pre- or post-, increments the address it stores by the amount sizeof(type) where "type" is the type of the object pointed to. (i.e. 4 for an integer).

Since a block of 10 integers located contiguously in memory is, by definition, an array of integers, this brings up an interesting relationship between arrays and pointers.

Consider the following:

    int my_array[] = {1,23,17,4,-5,100}; 
    
Here we have an array containing 6 integers. We refer to each of these integers by means of a subscript to my_array, i.e. using my_array[0] through my_array[5]. But, we could alternatively access them via a pointer as follows:

    int *ptr;
    ptr = &amp;my_array[0];       /* point our pointer at the first
                                 integer in our array */ 
                                 
And then we could print out our array either using the array notation or by dereferencing our pointer. The following code illustrates this:

-----------  Program 2.1  -----------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 2.1 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int my_array[] = {1,23,17,4,-5,100};
    int *ptr;
    
    int main(void)
    {
        int i;
        ptr = &amp;amp;my_array[0];     /* point our pointer to the first
                                          element of the array */
        printf("\n\n");
        for (i = 0; i &amp;lt; 6; i++)
        {
          printf("my_array[%d] = %d   ",i,my_array[i]);   /*&amp;lt;-- A */
          printf("ptr + %d = %d\n",i, *(ptr + i));        /*&amp;lt;-- B */
        }
        return 0;
    }
&lt;/pre&gt;

Compile and run the above program and carefully note lines A and B and that the program prints out the same values in either case. Also observe how we dereferenced our pointer in line B, i.e. we first added i to it and then dereferenced the new pointer. Change line B to read:

    printf("ptr + %d = %d\n",i, *ptr++);
    
and run it again... then change it to:

    printf("ptr + %d = %d\n",i, *(++ptr));
    
and try once more. Each time try and predict the outcome and carefully look at the actual outcome.

In C, the standard states that wherever we might use &amp;var_name[0] we can replace that with var_name, thus in our code where we wrote:

    ptr = &amp;my_array[0];
    
we can write:

    ptr = my_array;
    
to achieve the same result.

This leads many texts to state that the name of an array is a pointer. I prefer to mentally think "the name of the array is the address of first element in the array". Many beginners (including myself when I was learning) have a tendency to become confused by thinking of it as a pointer. For example, while we can write

    ptr = my_array;
    
we cannot write

    my_array = ptr;
    
The reason is that while ptr is a variable, my_array is a constant. That is, the location at which the first element of my_array will be stored cannot be changed once my_array[] has been declared.

Earlier when discussing the term "lvalue" I cited K&amp;R-2 where it stated:

"An object is a named region of storage; an lvalue is an expression referring to an object".
This raises an interesting problem. Since my_array is a named region of storage, why is my_array in the above assignment statement not an lvalue? To resolve this problem, some refer to my_array as an "unmodifiable lvalue".

Modify the example program above by changing

    ptr = &amp;my_array[0];
to

    ptr = my_array;
    
and run it again to verify the results are identical.

Now, let's delve a little further into the difference between the names ptr and my_array as used above. Some writers will refer to an array's name as a constant pointer. What do we mean by that? Well, to understand the term "constant" in this sense, let's go back to our definition of the term "variable". When we declare a variable we set aside a spot in memory to hold the value of the appropriate type. 

Once that is done the name of the variable can be interpreted in one of two ways. When used on the left side of the assignment operator, the compiler interprets it as the memory location to which to move that value resulting from evaluation of the right side of the assignment operator. But, when used on the right side of the assignment operator, the name of a variable is interpreted to mean the contents stored at that memory address set aside to hold the value of that variable.

With that in mind, let's now consider the simplest of constants, as in:

    int i, k;
    i = 2;
    
Here, while i is a variable and then occupies space in the data portion of memory, 2 is a constant and, as such, instead of setting aside memory in the data segment, it is imbedded directly in the code segment of memory. That is, while writing something like k = i; tells the compiler to create code which at run time will look at memory location &amp;i to determine the value to be moved to k, code created by i = 2; simply puts the 2 in the code and there is no referencing of the data segment. That is, both k and i are objects, but 2 is not an object.

Similarly, in the above, since my_array is a constant, once the compiler establishes where the array itself is to be stored, it "knows" the address of my_array[0] and on seeing:

    ptr = my_array;
    
it simply uses this address as a constant in the code segment and there is no referencing of the data segment beyond that.

This might be a good place explain further the use of the (void *) expression used in Program 1.1 of Chapter 1. As we have seen we can have pointers of various types. So far we have discussed pointers to integers and pointers to characters. In coming chapters we will be learning about pointers to structures and even pointer to pointers.

Also we have learned that on different systems the size of a pointer can vary. As it turns out it is also possible that the size of a pointer can vary depending on the data type of the object to which it points. Thus, as with integers where you can run into trouble attempting to assign a long integer to a variable of type short integer, you can run into trouble attempting to assign the values of pointers of various types to pointer variables of other types.

To minimize this problem, C provides for a pointer of type void. We can declare such a pointer by writing:

void *vptr;

A void pointer is sort of a generic pointer. For example, while C will not permit the comparison of a pointer to type integer with a pointer to type character, for example, either of these can be compared to a void pointer. Of course, as with other variables, casts can be used to convert from one type of pointer to another under the proper circumstances. In Program 1.1. of Chapter 1 I cast the pointers to integers into void pointers to make them compatible with the %p conversion specification. In later chapters other casts will be made for reasons defined therein.

Well, that's a lot of technical stuff to digest and I don't expect a beginner to understand all of it on first reading. With time and experimentation you will want to come back and re-read the first 2 chapters. But for now, let's move on to the relationship between pointers, character arrays, and strings.

##CHAPTER 3: Pointers and Strings

The study of strings is useful to further tie in the relationship between pointers and arrays. It also makes it easy to illustrate how some of the standard C string functions can be implemented. Finally it illustrates how and when pointers can and should be passed to functions.

In C, strings are arrays of characters. This is not necessarily true in other languages. In BASIC, Pascal, Fortran and various other languages, a string has its own data type. But in C it does not. In C a string is an array of characters terminated with a binary zero character (written as '\0'). To start off our discussion we will write some code which, while preferred for illustrative purposes, you would probably never write in an actual program. Consider, for example:

    char my_string[40];

    my_string[0] = 'T';
    my_string[1] = 'e';
    my_string[2] = 'd':
    my_string[3] = '\0';

While one would never build a string like this, the end result is a string in that it is an array of characters terminated with a nul character. By definition, in C, a string is an array of characters terminated with the nul character. Be aware that "nul" is not the same as "NULL". The nul refers to a zero as defined by the escape sequence '\0'. That is it occupies one byte of memory. NULL, on the other hand, is the name of the macro used to initialize null pointers. NULL is #defined in a header file in your C compiler, nul may not be #defined at all.

Since writing the above code would be very time consuming, C permits two alternate ways of achieving the same thing. First, one might write:

    char my_string[40] = {'T', 'e', 'd', '\0',};   
     
But this also takes more typing than is convenient. So, C permits:

    char my_string[40] = "Ted";
    
When the double quotes are used, instead of the single quotes as was done in the previous examples, the nul character ( '\0' ) is automatically appended to the end of the string.

In all of the above cases, the same thing happens. The compiler sets aside an contiguous block of memory 40 bytes long to hold characters and initialized it such that the first 4 characters are Ted\0.

Now, consider the following program:

------------------program 3.1-------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 3.1 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    char strA[80] = "A string to be used for demonstration purposes";
    char strB[80];
    
    int main(void)
    {
    
        char *pA;     /* a pointer to type character */
        char *pB;     /* another pointer to type character */
        puts(strA);   /* show string A */
        pA = strA;    /* point pA at string A */
        puts(pA);     /* show what pA is pointing to */
        pB = strB;    /* point pB at string B */
        putchar('\n');       /* move down one line on the screen */
        while(*pA != '\0')   /* line A (see text) */
        {
            *pB++ = *pA++;   /* line B (see text) */
        }
        *pB = '\0';          /* line C (see text) */
        puts(strB);          /* show strB on screen */
        return 0;
    }
&lt;/pre&gt;

--------- end program 3.1 -------------------------------------

    
In the above we start out by defining two character arrays of 80 characters each. Since these are globally defined, they are initialized to all '\0's first. Then, strA has the first 42 characters initialized to the string in quotes.

Now, moving into the code, we declare two character pointers and show the string on the screen. We then "point" the pointer pA at strA. That is, by means of the assignment statement we copy the address of strA[0] into our variable pA. We now use puts() to show that which is pointed to by pA on the screen. Consider here that the function prototype for puts() is:

    int puts(const char *s); 
    
For the moment, ignore the const. The parameter passed to puts() is a pointer, that is the value of a pointer (since all parameters in C are passed by value), and the value of a pointer is the address to which it points, or, simply, an address. Thus when we write puts(strA); as we have seen, we are passing the address of strA[0].

Similarly, when we write puts(pA); we are passing the same address, since we have set pA = strA;

Given that, follow the code down to the while() statement on line A. Line A states:

While the character pointed to by pA (i.e. *pA) is not a nul character (i.e. the terminating '\0'), do the following:

Line B states: copy the character pointed to by pA to the space pointed to by pB, then increment pA so it points to the next character and pB so it points to the next space.

When we have copied the last character, pA now points to the terminating nul character and the loop ends. However, we have not copied the nul character. And, by definition a string in C must be nul terminated. So, we add the nul character with line C.

It is very educational to run this program with your debugger while watching strA, strB, pA and pB and single stepping through the program. It is even more educational if instead of simply defining strB[] as has been done above, initialize it also with something like:

    strB[80] = "12345678901234567890123456789012345678901234567890"
    
where the number of digits used is greater than the length of strA and then repeat the single stepping procedure while watching the above variables. Give these things a try!

Getting back to the prototype for puts() for a moment, the "const" used as a parameter modifier informs the user that the function will not modify the string pointed to by s, i.e. it will treat that string as a constant.

Of course, what the above program illustrates is a simple way of copying a string. After playing with the above until you have a good understanding of what is happening, we can proceed to creating our own replacement for the standard strcpy() that comes with C. It might look like:

&lt;pre class="brush:c"&gt;
    char *my_strcpy(char dest[], char source[])
    {
        int i = 0;
        while (source[i] != '\0')
        {
            dest[i] = source[i];
            i++;
        }
        dest[i] = '\0';
        return dest;
    }
&lt;/pre&gt;
  
In this case, I have followed the practice used in the standard routine of returning a pointer to the destination.

Again, the function is designed to accept the values of two character pointers, i.e. addresses, and thus in the previous program we could write:

    int main(void)
    {
        my_strcpy(strB, strA);
        puts(strB);
    }
  
I have deviated slightly from the form used in standard C which would have the prototype:

    char *my_strcpy(char *destination, const char *source);  
    
Here the "const" modifier is used to assure the user that the function will not modify the contents pointed to by the source pointer. You can prove this by modifying the function above, and its prototype, to include the "const" modifier as shown. Then, within the function you can add a statement which attempts to change the contents of that which is pointed to by source, such as:

    *source = 'X';
    
which would normally change the first character of the string to an X. The const modifier should cause your compiler to catch this as an error. Try it and see.

Now, let's consider some of the things the above examples have shown us. First off, consider the fact that *ptr++ is to be interpreted as returning the value pointed to by ptr and then incrementing the pointer value. This has to do with the precedence of the operators. Were we to write (*ptr)++ we would increment, not the pointer, but that which the pointer points to! i.e. if used on the first character of the above example string the 'T' would be incremented to a 'U'. You can write some simple example code to illustrate this.

Recall again that a string is nothing more than an array of characters, with the last character being a '\0'. What we have done above is deal with copying an array. It happens to be an array of characters but the technique could be applied to an array of integers, doubles, etc. In those cases, however, we would not be dealing with strings and hence the end of the array would not be marked with a special value like the nul character. 

We could implement a version that relied on a special value to identify the end. For example, we could copy an array of positive integers by marking the end with a negative integer. On the other hand, it is more usual that when we write a function to copy an array of items other than strings we pass the function the number of items to be copied as well as the address of the array, e.g. something like the following prototype might indicate:

    void int_copy(int *ptrA, int *ptrB, int nbr);
    
where nbr is the number of integers to be copied. You might want to play with this idea and create an array of integers and see if you can write the function int_copy() and make it work.

This permits using functions to manipulate large arrays. For example, if we have an array of 5000 integers that we want to manipulate with a function, we need only pass to that function the address of the array (and any auxiliary information such as nbr above, depending on what we are doing). The array itself does not get passed, i.e. the whole array is not copied and put on the stack before calling the function, only its address is sent.

This is different from passing, say an integer, to a function. When we pass an integer we make a copy of the integer, i.e. get its value and put it on the stack. Within the function any manipulation of the value passed can in no way effect the original integer. But, with arrays and pointers we can pass the address of the variable and hence manipulate the values of the original variables.

##CHAPTER 4: More on Strings

Well, we have progressed quite a way in a short time! Let's back up a little and look at what was done in Chapter 3 on copying of strings but in a different light. Consider the following function:

    char *my_strcpy(char dest[], char source[])
    {
        int i = 0;
        while (source[i] != '\0')
        {
            dest[i] = source[i];
            i++;
        }
        dest[i] = '\0';
        return dest;
    }
    
Recall that strings are arrays of characters. Here we have chosen to use array notation instead of pointer notation to do the actual copying. The results are the same, i.e. the string gets copied using this notation just as accurately as it did before. This raises some interesting points which we will discuss.

Since parameters are passed by value, in both the passing of a character pointer or the name of the array as above, what actually gets passed is the address of the first element of each array. Thus, the numerical value of the parameter passed is the same whether we use a character pointer or an array name as a parameter. This would tend to imply that somehow source[i] is the same as *(p+i).

In fact, this is true, i.e wherever one writes a[i] it can be replaced with *(a + i) without any problems. In fact, the compiler will create the same code in either case. Thus we see that pointer arithmetic is the same thing as array indexing. Either syntax produces the same result.

This is NOT saying that pointers and arrays are the same thing, they are not. We are only saying that to identify a given element of an array we have the choice of two syntaxes, one using array indexing and the other using pointer arithmetic, which yield identical results.

Now, looking at this last expression, part of it.. (a + i), is a simple addition using the + operator and the rules of C state that such an expression is commutative. That is (a + i) is identical to (i + a). Thus we could write *(i + a) just as easily as *(a + i).

But *(i + a) could have come from i[a] ! From all of this comes the curious truth that if:

    char a[20];
    int i;
writing
    a[3] = 'x';
is the same as writing
    3[a] = 'x';
    
Try it! Set up an array of characters, integers or longs, etc. and assigned the 3rd or 4th element a value using the conventional approach and then print out that value to be sure you have that working. Then reverse the array notation as I have done above. A good compiler will not balk and the results will be identical. A curiosity... nothing more!
Now, looking at our function above, when we write:

    dest[i] = source[i];
    
due to the fact that array indexing and pointer arithmetic yield identical results, we can write this as:

    *(dest + i) = *(source + i);
    
But, this takes 2 additions for each value taken on by i. Additions, generally speaking, take more time than incrementations (such as those done using the ++ operator as in i++). This may not be true in modern optimizing compilers, but one can never be sure. Thus, the pointer version may be a bit faster than the array version.
Another way to speed up the pointer version would be to change:

    while (*source != '\0')
    
to simply

    while (*source)
    
since the value within the parenthesis will go to zero (FALSE) at the same time in either case.
At this point you might want to experiment a bit with writing some of your own programs using pointers. Manipulating strings is a good place to experiment. You might want to write your own versions of such standard functions as:

    strlen();
    strcat();
    strchr();
    
and any others you might have on your system.

We will come back to strings and their manipulation through pointers in a future chapter. For now, let's move on and discuss structures for a bit.

##CHAPTER 5: Pointers and Structures

As you may know, we can declare the form of a block of data containing different data types by means of a structure declaration. For example, a personnel file might contain structures which look something like:

    struct tag {
        char lname[20];        /* last name */
        char fname[20];        /* first name */
        int age;               /* age */
        float rate;            /* e.g. 12.75 per hour */
    };
    
Let's say we have a bunch of these structures in a disk file and we want to read each one out and print out the first and last name of each one so that we can have a list of the people in our files. The remaining information will not be printed out. We will want to do this printing with a function call and pass to that function a pointer to the structure at hand. For demonstration purposes I will use only one structure for now. But realize the goal is the writing of the function, not the reading of the file which, presumably, we know how to do.

For review, recall that we can access structure members with the dot operator as in:

--------------- program 5.1 ------------------

&lt;pre class="brush: c"&gt;
    /* Program 5.1 from PTRTUT10.HTM     6/13/97 */
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    struct tag {
        char lname[20];      /* last name */
        char fname[20];      /* first name */
        int age;             /* age */
        float rate;          /* e.g. 12.75 per hour */
    };
    
    struct tag my_struct;       /* declare the structure my_struct */
    
    int main(void)
    {
        strcpy(my_struct.lname,"Jensen");
        strcpy(my_struct.fname,"Ted");
        printf("\n%s ",my_struct.fname);
        printf("%s\n",my_struct.lname);
        return 0;
    }
&lt;/pre&gt;

-------------- end of program 5.1 --------------

Now, this particular structure is rather small compared to many used in C programs. To the above we might want to add:

    date_of_hire;                  (data types not shown)
    date_of_last_raise;
    last_percent_increase;
    emergency_phone;
    medical_plan;
    Social_S_Nbr;
    etc.....
    
If we have a large number of employees, what we want to do is manipulate the data in these structures by means of functions. For example we might want a function print out the name of the employee listed in any structure passed to it. However, in the original C (Kernighan &amp; Ritchie, 1st Edition) it was not possible to pass a structure, only a pointer to a structure could be passed. In ANSI C, it is now permissible to pass the complete structure. But, since our goal here is to learn more about pointers, we won't pursue that.

Anyway, if we pass the whole structure it means that we must copy the contents of the structure from the calling function to the called function. In systems using stacks, this is done by pushing the contents of the structure on the stack. With large structures this could prove to be a problem. However, passing a pointer uses a minimum amount of stack space.

In any case, since this is a discussion of pointers, we will discuss how we go about passing a pointer to a structure and then using it within the function.

Consider the case described, i.e. we want a function that will accept as a parameter a pointer to a structure and from within that function we want to access members of the structure. For example we want to print out the name of the employee in our example structure.

Okay, so we know that our pointer is going to point to a structure declared using struct tag. We declare such a pointer with the declaration:

    struct tag *st_ptr;
    
and we point it to our example structure with:

    st_ptr = &amp;my_struct;
    
Now, we can access a given member by de-referencing the pointer. But, how do we de-reference the pointer to a structure? Well, consider the fact that we might want to use the pointer to set the age of the employee. We would write:

    (*st_ptr).age = 63;
    
Look at this carefully. It says, replace that within the parenthesis with that which st_ptr points to, which is the structure my_struct. Thus, this breaks down to the same as my_struct.age.

However, this is a fairly often used expression and the designers of C have created an alternate syntax with the same meaning which is:

    st_ptr-&gt;age = 63;
    
With that in mind, look at the following program:

------------ program 5.2 ---------------------

&lt;pre class="brush: c"&gt;
    /* Program 5.2 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    struct tag{                     /* the structure type */
        char lname[20];             /* last name */
        char fname[20];             /* first name */
        int age;                    /* age */
        float rate;                 /* e.g. 12.75 per hour */
    };
    
    struct tag my_struct;           /* define the structure */
    void show_name(struct tag *p);  /* function prototype */
    
    int main(void)
    {
        struct tag *st_ptr;         /* a pointer to a structure */
        st_ptr = &amp;amp;my_struct;        /* point the pointer to my_struct */
        strcpy(my_struct.lname,"Jensen");
        strcpy(my_struct.fname,"Ted");
        printf("\n%s ",my_struct.fname);
        printf("%s\n",my_struct.lname);
        my_struct.age = 63;
        show_name(st_ptr);          /* pass the pointer */
        return 0;
    }
    
    void show_name(struct tag *p)
    {
        printf("\n%s ", p-&amp;gt;fname);  /* p points to a structure */
        printf("%s ", p-&amp;gt;lname);
        printf("%d\n", p-&amp;gt;age);
    }
&lt;/pre&gt;

-------------------- end of program 5.2 ----------------

Again, this is a lot of information to absorb at one time. The reader should compile and run the various code snippets and using a debugger monitor things like my_struct and p while single stepping through the main and following the code down into the function to see what is happening. 

##CHAPTER 6: Some more on Strings, and Arrays of Strings

Well, let's go back to strings for a bit. In the following all assignments are to be understood as being global, i.e. made outside of any function, including main().

We pointed out in an earlier chapter that we could write:

   char my_string[40] = "Ted";
   
which would allocate space for a 40 byte array and put the string in the first 4 bytes (three for the characters in the quotes and a 4th to handle the terminating '\0').

Actually, if all we wanted to do was store the name "Ted" we could write:

   char my_name[] = "Ted";
   
and the compiler would count the characters, leave room for the nul character and store the total of the four characters in memory the location of which would be returned by the array name, in this case my_name.

In some code, instead of the above, you might see:

   char *my_name = "Ted";
   
which is an alternate approach. Is there a difference between these? The answer is.. yes. Using the array notation 4 bytes of storage in the static memory block are taken up, one for each character and one for the terminating nul character. But, in the pointer notation the same 4 bytes required, plus N bytes to store the pointer variable my_name (where N depends on the system but is usually a minimum of 2 bytes and can be 4 or more).

In the array notation, my_name is short for &amp;myname[0] which is the address of the first element of the array. Since the location of the array is fixed during run time, this is a constant (not a variable). In the pointer notation my_name is a variable. As to which is the better method, that depends on what you are going to do within the rest of the program.

Let's now go one step further and consider what happens if each of these declarations are done within a function as opposed to globally outside the bounds of any function.

void my_function_A(char *ptr)
{
    char a[] = "ABCDE"
    .
    .
} 


void my_function_B(char *ptr)
{
    char *cp = "FGHIJ"
    .
    .
}

In the case of my_function_A, the content, or value(s), of the array a[] is considered to be the data. The array is said to be initialized to the values ABCDE. In the case of my_function_B, the value of the pointer cp is considered to be the data. The pointer has been initialized to point to the string FGHIJ. In both my_function_A and my_function_B the definitions are local variables and thus the string ABCDE is stored on the stack, as is the value of the pointer cp. The string FGHIJ can be stored anywhere. On my system it gets stored in the data segment.

By the way, array initialization of automatic variables as I have done in my_function_A was illegal in the older K&amp;R C and only "came of age" in the newer ANSI C. A fact that may be important when one is considering portability and backwards compatibility.

As long as we are discussing the relationship/differences between pointers and arrays, let's move on to multi-dimensional arrays. Consider, for example the array:

    char multi[5][10];
    
Just what does this mean? Well, let's consider it in the following light.

    char multi[5][10];
    
Let's take the underlined part to be the "name" of an array. Then prepending the char and appending the [10] we have an array of 10 characters. But, the name multi[5] is itself an array indicating that there are 5 elements each being an array of 10 characters. Hence we have an array of 5 arrays of 10 characters each..

Assume we have filled this two dimensional array with data of some kind. In memory, it might look as if it had been formed by initializing 5 separate arrays using something like:

    multi[0] = {'0','1','2','3','4','5','6','7','8','9'}
    multi[1] = {'a','b','c','d','e','f','g','h','i','j'}
    multi[2] = {'A','B','C','D','E','F','G','H','I','J'}
    multi[3] = {'9','8','7','6','5','4','3','2','1','0'}
    multi[4] = {'J','I','H','G','F','E','D','C','B','A'}


At the same time, individual elements might be addressable using syntax such as:

    multi[0][3] = '3'
    multi[1][7] = 'h'
    multi[4][0] = 'J'
    
Since arrays are contiguous in memory, our actual memory block for the above should look like:

    0123456789abcdefghijABCDEFGHIJ9876543210JIHGFEDCBA
    ^
    |_____ starting at the address &amp;multi[0][0]

Note that I did not write multi[0] = "0123456789". Had I done so a terminating '\0' would have been implied since whenever double quotes are used a '\0' character is appended to the characters contained within those quotes. Had that been the case I would have had to set aside room for 11 characters per row instead of 10.

My goal in the above is to illustrate how memory is laid out for 2 dimensional arrays. That is, this is a 2 dimensional array of characters, NOT an array of "strings".

Now, the compiler knows how many columns are present in the array so it can interpret multi + 1 as the address of the 'a' in the 2nd row above. That is, it adds 10, the number of columns, to get this location. If we were dealing with integers and an array with the same dimension the compiler would add 10*sizeof(int) which, on my machine, would be 20. Thus, the address of the 9 in the 4th row above would be &amp;multi[3][0] or *(multi + 3) in pointer notation. To get to the content of the 2nd element in the 4th row we add 1 to this address and dereference the result as in

    *(*(multi + 3) + 1)
    
With a little thought we can see that:

    *(*(multi + row) + col)    and
    
    multi[row][col]            yield the same results.
    
The following program illustrates this using integer arrays instead of character arrays.

------------------- program 6.1 ----------------------

&lt;pre class="brush: c"&gt;
    /* Program 6.1 from PTRTUT10.HTM   6/13/97*/
    
    #include &amp;amp;lt;stdio.h&amp;amp;gt;
    #define ROWS 5
    #define COLS 10
    
    int multi[ROWS][COLS];
    
    int main(void)
    {
        int row, col;
        for (row = 0; row &amp;amp;lt; ROWS; row++)
        {
            for (col = 0; col &amp;amp;lt; COLS; col++)
            {
                multi[row][col] = row*col;
            }
        }
    
        for (row = 0; row &amp;amp;lt; ROWS; row++)
        {
            for (col = 0; col &amp;amp;lt; COLS; col++)
            {
                printf("\n%d  ",multi[row][col]);
                printf("%d ",*(*(multi + row) + col));
            }
        }
    
        return 0;
    }
&lt;/pre&gt;
----------------- end of program 6.1 ---------------------   

Because of the double de-referencing required in the pointer version, the name of a 2 dimensional array is often said to be equivalent to a pointer to a pointer. With a three dimensional array we would be dealing with an array of arrays of arrays and some might say its name would be equivalent to a pointer to a pointer to a pointer. However, here we have initially set aside the block of memory for the array by defining it using array notation. 

Hence, we are dealing with a constant, not a variable. That is we are talking about a fixed address not a variable pointer. The dereferencing function used above permits us to access any element in the array of arrays without the need of changing the value of that address (the address of multi[0][0] as given by the symbol multi).

##CHAPTER 7: More on Multi-Dimensional Arrays

In the previous chapter we noted that given

    #define ROWS 5
    #define COLS 10

    int multi[ROWS][COLS];
    
we can access individual elements of the array multi using either:

    multi[row][col]
or
    *(*(multi + row) + col)
    
To understand more fully what is going on, let us replace

    *(multi + row)
    
with X as in:

    *(X + col)
    
Now, from this we see that X is like a pointer since the expression is de-referenced and we know that col is an integer. Here the arithmetic being used is of a special kind called "pointer arithmetic" is being used. That means that, since we are talking about an integer array, the address pointed to by (i.e. value of) X + col + 1 must be greater than the address X + col by and amount equal to sizeof(int).

Since we know the memory layout for 2 dimensional arrays, we can determine that in the expression multi + row as used above, multi + row + 1 must increase by value an amount equal to that needed to "point to" the next row, which in this case would be an amount equal to COLS * sizeof(int).

That says that if the expression *(*(multi + row) + col) is to be evaluated correctly at run time, the compiler must generate code which takes into consideration the value of COLS, i.e. the 2nd dimension. Because of the equivalence of the two forms of expression, this is true whether we are using the pointer expression as here or the array expression multi[row][col].

Thus, to evaluate either expression, a total of 5 values must be known:

The address of the first element of the array, which is returned by the expression multi, i.e., the name of the array.

The size of the type of the elements of the array, in this case sizeof(int).

The 2nd dimension of the array
The specific index value for the first dimension, row in this case.
The specific index value for the second dimension, col in this case.
Given all of that, consider the problem of designing a function to manipulate the element values of a previously declared array. For example, one which would set all the elements of the array multi to the value 1.

    void set_value(int m_array[][COLS])
    {
        int row, col;
        for (row = 0; row &lt; ROWS; row++)
        {
            for (col = 0; col &lt; COLS; col++)
            {
                m_array[row][col] = 1;
            }
        }
    }

And to call this function we would then use:

    set_value(multi);
    
Now, within the function we have used the values #defined by ROWS and COLS that set the limits on the for loops. But, these #defines are just constants as far as the compiler is concerned, i.e. there is nothing to connect them to the array size within the function. row and col are local variables, of course. The formal parameter definition permits the compiler to determine the characteristics associated with the pointer value that will be passed at run time. 

We really don’t need the first dimension and, as will be seen later, there are occasions where we would prefer not to define it within the parameter definition, out of habit or consistency, I have not used it here. But, the second dimension must be used as has been shown in the expression for the parameter. The reason is that we need this in the evaluation of m_array[row][col] as has been described. 

While the parameter defines the data type (int in this case) and the automatic variables for row and column are defined in the for loops, only one value can be passed using a single parameter. In this case, that is the value of multi as noted in the call statement, i.e. the address of the first element, often referred to as a pointer to the array. Thus, the only way we have of informing the compiler of the 2nd dimension is by explicitly including it in the parameter definition.

In fact, in general all dimensions of higher order than one are needed when dealing with multi-dimensional arrays. That is if we are talking about 3 dimensional arrays, the 2nd and 3rd dimension must be specified in the parameter definition.

##CHAPTER 8: Pointers to Arrays

Pointers, of course, can be "pointed at" any type of data object, including arrays. While that was evident when we discussed program 3.1, it is important to expand on how we do this when it comes to multi-dimensional arrays.
To review, in Chapter 2 we stated that given an array of integers we could point an integer pointer at that array using:

    int *ptr;
    ptr = &amp;my_array[0];       /* point our pointer at the first
                                 integer in our array */
                                 
As we stated there, the type of the pointer variable must match the type of the first element of the array.
In addition, we can use a pointer as a formal parameter of a function which is designed to manipulate an array. e.g.

Given:

    int array[3] = {1, 5, 7};
    void a_func(int *p);
    
Some programmers might prefer to write the function prototype as:

   void a_func(int p[]);
   
which would tend to inform others who might use this function that the function is designed to manipulate the elements of an array. Of course, in either case, what actually gets passed is the value of a pointer to the first element of the array, independent of which notation is used in the function prototype or definition. Note that if the array notation is used, there is no need to pass the actual dimension of the array since we are not passing the whole array, only the address to the first element.

We now turn to the problem of the 2 dimensional array. As stated in the last chapter, C interprets a 2 dimensional array as an array of one dimensional arrays. That being the case, the first element of a 2 dimensional array of integers is a one dimensional array of integers. And a pointer to a two dimensional array of integers must be a pointer to that data type. One way of accomplishing this is through the use of the keyword "typedef". typedef assigns a new name to a specified data type. For example:

    typedef unsigned char byte;
    
causes the name byte to mean type unsigned char. Hence

    byte b[10];     would be an array of unsigned characters.
    
Note that in the typedef declaration, the word byte has replaced that which would normally be the name of our unsigned char. That is, the rule for using typedef is that the new name for the data type is the name used in the definition of the data type. Thus in:

    typedef int Array[10];
    
Array becomes a data type for an array of 10 integers. i.e. Array my_arr; declares my_arr as an array of 10 integers and Array arr2d[5]; makes arr2d an array of 5 arrays of 10 integers each.

Also note that Array *p1d; makes p1d a pointer to an array of 10 integers. Because *p1d points to the same type as arr2d, assigning the address of the two dimensional array arr2d to p1d, the pointer to a one dimensional array of 10 integers is acceptable. i.e. p1d = &amp;arr2d[0]; or p1d = arr2d; are both correct.

Since the data type we use for our pointer is an array of 10 integers we would expect that incrementing p1d by 1 would change its value by 10*sizeof(int), which it does. That is, sizeof(*p1d) is 20. You can prove this to yourself by writing and running a simple short program.

Now, while using typedef makes things clearer for the reader and easier on the programmer, it is not really necessary. What we need is a way of declaring a pointer like p1d without the need of the typedef keyword. It turns out that this can be done and that

    int (*p1d)[10];
    
is the proper declaration, i.e. p1d here is a pointer to an array of 10 integers just as it was under the declaration using the Array type. Note that this is different from

    int *p1d[10];
    
which would make p1d the name of an array of 10 pointers to type int.

##CHAPTER 9: Pointers and Dynamic Allocation of Memory

There are times when it is convenient to allocate memory at run time using malloc(), calloc(), or other allocation functions. Using this approach permits postponing the decision on the size of the memory block need to store an array, for example, until run time. Or it permits using a section of memory for the storage of an array of integers at one point in time, and then when that memory is no longer needed it can be freed up for other uses, such as the storage of an array of structures.

When memory is allocated, the allocating function (such as malloc(), calloc(), etc.) returns a pointer. The type of this pointer depends on whether you are using an older K&amp;R compiler or the newer ANSI type compiler. With the older compiler the type of the returned pointer is char, with the ANSI compiler it is void.

If you are using an older compiler, and you want to allocate memory for an array of integers you will have to cast the char pointer returned to an integer pointer. For example, to allocate space for 10 integers we might write:

    int *iptr;
    iptr = (int *)malloc(10 * sizeof(int));
    if (iptr == NULL)

    { .. ERROR ROUTINE GOES HERE .. }
    
If you are using an ANSI compliant compiler, malloc() returns a void pointer and since a void pointer can be assigned to a pointer variable of any object type, the (int *) cast shown above is not needed. The array dimension can be determined at run time and is not needed at compile time. That is, the 10 above could be a variable read in from a data file or keyboard, or calculated based on some need, at run time.

Because of the equivalence between array and pointer notation, once iptr has been assigned as above, one can use the array notation. For example, one could write:

    int k;
    for (k = 0; k &lt; 10; k++)
       iptr[k] = 2;
       
to set the values of all elements to 2.

Even with a reasonably good understanding of pointers and arrays, one place the newcomer to C is likely to stumble at first is in the dynamic allocation of multi-dimensional arrays. In general, we would like to be able to access elements of such arrays using array notation, not pointer notation, wherever possible. Depending on the application we may or may not know both dimensions at compile time. This leads to a variety of ways to go about our task.

As we have seen, when dynamically allocating a one dimensional array its dimension can be determined at run time. Now, when using dynamic allocation of higher order arrays, we never need to know the first dimension at compile time. Whether we need to know the higher dimensions depends on how we go about writing the code. Here I will discuss various methods of dynamically allocating room for 2 dimensional arrays of integers.

First we will consider cases where the 2nd dimension is known at compile time.

METHOD 1:

One way of dealing with the problem is through the use of the typedef keyword. To allocate a 2 dimensional array of integers recall that the following two notations result in the same object code being generated:

    multi[row][col] = 1;     *(*(multi + row) + col) = 1;

It is also true that the following two notations generate the same code:

    multi[row]            *(multi + row)

Since the one on the right must evaluate to a pointer, the array notation on the left must also evaluate to a pointer. In fact multi[0] will return a pointer to the first integer in the first row, multi[1] a pointer to the first integer of the second row, etc. Actually, multi[n] evaluates to a pointer to that array of integers that make up the n-th row of our 2 dimensional array. 

That is, multi can be thought of as an array of arrays and multi[n] as a pointer to the n-th array of this array of arrays. Here the word pointer is being used to represent an address value. While such usage is common in the literature, when reading such statements one must be careful to distinguish between the constant address of an array and a variable pointer which is a data object in itself.
Consider now:


--------------- Program 9.1 --------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.1 from PTRTUT10.HTM  6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    #define COLS 5
    
    typedef int RowArray[COLS];
    RowArray *rptr;
    
    int main(void)
    {
        int nrows = 10;
        int row, col;
        rptr = malloc(nrows * COLS * sizeof(int));
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; COLS; col++)
            {
                rptr[row][col] = 17;
            }
        }
    
        return 0;
    }
&lt;/pre&gt;


------------- End of Prog. 9.1 --------------------------------

Here I have assumed an ANSI compiler so a cast on the void pointer returned by malloc() is not required. If you are using an older K&amp;R compiler you will have to cast using:

    rptr = (RowArray *)malloc(.... etc.
    
Using this approach, rptr has all the characteristics of an array name name, (except that rptr is modifiable), and array notation may be used throughout the rest of the program. That also means that if you intend to write a function to modify the array contents, you must use COLS as a part of the formal parameter in that function, just as we did when discussing the passing of two dimensional arrays to a function.

METHOD 2:

In the METHOD 1 above, rptr turned out to be a pointer to type "one dimensional array of COLS integers". It turns out that there is syntax which can be used for this type without the need of typedef. If we write:

    int (*xptr)[COLS];

the variable xptr will have all the same characteristics as the variable rptr in METHOD 1 above, and we need not use the typedef keyword. Here xptr is a pointer to an array of integers and the size of that array is given by the #defined COLS. The parenthesis placement makes the pointer notation predominate, even though the array notation has higher precedence. i.e. had we written

    int *xptr[COLS];
    
we would have defined xptr as an array of pointers holding the number of pointers equal to that #defined by COLS. That is not the same thing at all. However, arrays of pointers have their use in the dynamic allocation of two dimensional arrays, as will be seen in the next 2 methods.
METHOD 3:

Consider the case where we do not know the number of elements in each row at compile time, i.e. both the number of rows and number of columns must be determined at run time. One way of doing this would be to create an array of pointers to type int and then allocate space for each row and point these pointers at each row. Consider:

-------------- Program 9.2 ------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.2 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    int main(void)
    {
        int nrows = 5;     /* Both nrows and ncols could be evaluated */
        int ncols = 10;    /* or read in at run time */
        int row;
        int **rowptr;
        rowptr = malloc(nrows * sizeof(int *));
        if (rowptr == NULL)
        {
            puts("\nFailure to allocate room for row pointers.\n");
            exit(0);
        }
    
        printf("\n\n\nIndex   Pointer(hex)   Pointer(dec)   Diff.(dec)");
    
        for (row = 0; row &amp;lt; nrows; row++)
        {
            rowptr[row] = malloc(ncols * sizeof(int));
            if (rowptr[row] == NULL)
            {
                printf("\nFailure to allocate for row[%d]\n",row);
                exit(0);
            }
            printf("\n%d         %p         %d", row, rowptr[row], rowptr[row]);
            if (row &amp;gt; 0)
            printf("              %d",(int)(rowptr[row] - rowptr[row-1]));
        }
    
        return 0;
    }
&lt;/pre&gt;

--------------- End 9.2 ------------------------------------

In the above code rowptr is a pointer to pointer to type int. In this case it points to the first element of an array of pointers to type int. Consider the number of calls to malloc():

    To get the array of pointers             1     call
    To get space for the rows                5     calls
                                          -----
                     Total                   6     calls
If you choose to use this approach note that while you can use the array notation to access individual elements of the array, e.g. rowptr[row][col] = 17;, it does not mean that the data in the "two dimensional array" is contiguous in memory.
You can, however, use the array notation just as if it were a continuous block of memory. For example, you can write:

    rowptr[row][col] = 176;
just as if rowptr were the name of a two dimensional array created at compile time. Of course row and col must be within the bounds of the array you have created, just as with an array created at compile time.
If you want to have a contiguous block of memory dedicated to the storage of the elements in the array you can do it as follows:

METHOD 4:

In this method we allocate a block of memory to hold the whole array first. We then create an array of pointers to point to each row. Thus even though the array of pointers is being used, the actual array in memory is contiguous. The code looks like this:
----------------- Program 9.3 -----------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.3 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    int main(void)
    {
        int **rptr;
        int *aptr;
        int *testptr;
        int k;
        int nrows = 5;     /* Both nrows and ncols could be evaluated */
        int ncols = 8;    /* or read in at run time */
        int row, col;
    
        /* we now allocate the memory for the array */
    
        aptr = malloc(nrows * ncols * sizeof(int));
        if (aptr == NULL)
        {
            puts("\nFailure to allocate room for the array");
            exit(0);
        }
    
        /* next we allocate room for the pointers to the rows */
    
        rptr = malloc(nrows * sizeof(int *));
        if (rptr == NULL)
        {
            puts("\nFailure to allocate room for pointers");
            exit(0);
        }
    
        /* and now we 'point' the pointers */
    
        for (k = 0; k &amp;lt; nrows; k++)
        {
            rptr[k] = aptr + (k * ncols);
        }
    
        /* Now we illustrate how the row pointers are incremented */
        printf("\n\nIllustrating how row pointers are incremented");
        printf("\n\nIndex   Pointer(hex)  Diff.(dec)");
    
        for (row = 0; row &amp;lt; nrows; row++)
        {
            printf("\n%d         %p", row, rptr[row]);
            if (row &amp;gt; 0)
            printf("              %d",(rptr[row] - rptr[row-1]));
        }
        printf("\n\nAnd now we print out the array\n");
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; ncols; col++)
            {
                rptr[row][col] = row + col;
                printf("%d ", rptr[row][col]);
            }
            putchar('\n');
        }
    
        puts("\n");
    
        /* and here we illustrate that we are, in fact, dealing with
           a 2 dimensional array in a contiguous block of memory. */
        printf("And now we demonstrate that they are contiguous in memory\n");
    
        testptr = aptr;
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; ncols; col++)
            {
                printf("%d ", *(testptr++));
            }
            putchar('\n');
        }
    
        return 0;
    }
&lt;/pre&gt;

------------- End Program 9.3 -----------------

Consider again, the number of calls to malloc()
    To get room for the array itself      1      call
    To get room for the array of ptrs     1      call
                                        ----
                         Total            2      calls

Now, each call to malloc() creates additional space overhead since malloc() is generally implemented by the operating system forming a linked list which contains data concerning the size of the block. But, more importantly, with large arrays (several hundred rows) keeping track of what needs to be freed when the time comes can be more cumbersome. This, combined with the contiguousness of the data block that permits initialization to all zeroes using memset() would seem to make the second alternative the preferred one.

As a final example on multidimensional arrays we will illustrate the dynamic allocation of a three dimensional array. This example will illustrate one more thing to watch when doing this kind of allocation. For reasons cited above we will use the approach outlined in alternative two. Consider the following code:


------------------- Program 9.4 -------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.4 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    #include &amp;lt;stddef.h&amp;gt;
    
    int X_DIM=16;
    int Y_DIM=5;
    int Z_DIM=3;
    
    int main(void)
    {
        char *space;
        char ***Arr3D;
        int y, z;
        ptrdiff_t diff;
    
        /* first we set aside space for the array itself */
    
        space = malloc(X_DIM * Y_DIM * Z_DIM * sizeof(char));
    
        /* next we allocate space of an array of pointers, each
           to eventually point to the first element of a
           2 dimensional array of pointers to pointers */
    
        Arr3D = malloc(Z_DIM * sizeof(char **));
    
        /* and for each of these we assign a pointer to a newly
           allocated array of pointers to a row */
    
        for (z = 0; z &amp;lt; Z_DIM; z++)
        {
            Arr3D[z] = malloc(Y_DIM * sizeof(char *));
    
            /* and for each space in this array we put a pointer to
               the first element of each row in the array space
               originally allocated */
    
            for (y = 0; y &amp;lt; Y_DIM; y++)
            {
                Arr3D[z][y] = space + (z*(X_DIM * Y_DIM) + y*X_DIM);
            }
        }
    
        /* And, now we check each address in our 3D array to see if
           the indexing of the Arr3d pointer leads through in a
           continuous manner */
    
        for (z = 0; z &amp;lt; Z_DIM; z++)
        {
            printf("Location of array %d is %p\n", z, *Arr3D[z]);
            for ( y = 0; y &amp;lt; Y_DIM; y++)
            {
                printf("  Array %d and Row %d starts at %p", z, y, Arr3D[z][y]);
                diff = Arr3D[z][y] - space;
                printf("    diff = %d  ",diff);
                printf(" z = %d  y = %d\n", z, y);
            }
        }
        return 0;
    }
&lt;/pre&gt;

------------------- End of Prog. 9.4 ----------------------------

If you have followed this tutorial up to this point you should have no problem deciphering the above on the basis of the comments alone. There are a couple of points that should be made however. Let's start with the line which reads:
    Arr3D[z][y] = space + (z*(X_DIM * Y_DIM) + y*X_DIM);
    
Note that here space is a character pointer, which is the same type as Arr3D[z][y]. It is important that when adding an integer, such as that obtained by evaluation of the expression (z*(X_DIM * Y_DIM) + y*X_DIM), to a pointer, the result is a new pointer value. And when assigning pointer values to pointer variables the data types of the value and variable must match.

##CHAPTER 10: Pointers to Functions

Up to this point we have been discussing pointers to data objects. C also permits the declaration of pointers to functions. Pointers to functions have a variety of uses and some of them will be discussed here.

Consider the following real problem. You want to write a function that is capable of sorting virtually any collection of data that can be stored in an array. This might be an array of strings, or integers, or floats, or even structures. The sorting algorithm can be the same for all. For example, it could be a simple bubble sort algorithm, or the more complex shell or quick sort algorithm. We'll use a simple bubble sort for demonstration purposes.

Sedgewick [1] has described the bubble sort using C code by setting up a function which when passed a pointer to the array would sort it. If we call that function bubble(), a sort program is described by bubble_1.c, which follows:


&lt;pre class="brush: c"&gt;
    /*-------------------- bubble_1.c --------------------*/
    
    /* Program bubble_1.c from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int a[], int N);
    
    int main(void)
    {
        int i;
        putchar('\n');
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int a[], int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (a[j-1] &amp;gt; a[j])
                {
                    t = a[j-1];
                    a[j-1] = a[j];
                    a[j] = t;
                }
            }
        }
    }
&lt;/pre&gt;


/*---------------------- end bubble_1.c -----------------------*/

The bubble sort is one of the simpler sorts. The algorithm scans the array from the second to the last element comparing each element with the one which precedes it. If the one that precedes it is larger than the current element, the two are swapped so the larger one is closer to the end of the array. 

On the first pass, this results in the largest element ending up at the end of the array. The array is now limited to all elements except the last and the process repeated. This puts the next largest element at a point preceding the largest element. The process is repeated for a number of times equal to the number of elements minus 1. The end result is a sorted array.

Here our function is designed to sort an array of integers. Thus in line 1 we are comparing integers and in lines 2 through 4 we are using temporary integer storage to store integers. What we want to do now is see if we can convert this code so we can use any data type, i.e. not be restricted to integers.

At the same time we don't want to have to analyze our algorithm and the code associated with it each time we use it. We start by removing the comparison from within the function bubble() so as to make it relatively easy to modify the comparison function without having to re-write portions related to the actual algorithm. This results in bubble_2.c:


&lt;pre class="brush: c"&gt;
    /*---------------------- bubble_2.c -------------------------*/
    
    /* Program bubble_2.c from PTRTUT10.HTM   6/13/97 */
    
       /* Separating the comparison function */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int a[], int N);
    int compare(int m, int n);
    
    int main(void)
    {
        int i;
        putchar('\n');
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int a[], int N)
    
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare(a[j-1], a[j]))
                {
                    t = a[j-1];
                    a[j-1] = a[j];
                    a[j] = t;
                }
            }
        }
    }
    
    int compare(int m, int n)
    {
        return (m &amp;gt; n);
    }
    /*--------------------- end of bubble_2.c -----------------------*/
&lt;/pre&gt;

If our goal is to make our sort routine data type independent, one way of doing this is to use pointers to type void to point to the data instead of using the integer data type. As a start in that direction let's modify a few things in the above so that pointers can be used. To begin with, we'll stick with pointers to type integer.

&lt;pre class="brush: c"&gt;
    /*----------------------- bubble_3.c -------------------------*/
    
    /* Program bubble_3.c from PTRTUT10.HTM    6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int *p, int N);
    int compare(int *m, int *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int *p, int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare(&amp;amp;p[j-1], &amp;amp;p[j]))
                {
                    t = p[j-1];
                    p[j-1] = p[j];
                    p[j] = t;
                }
            }
        }
    }
    
    int compare(int *m, int *n)
    {
        return (*m &amp;gt; *n);
    }
    
    /*------------------ end of bubble3.c -------------------------*/
&lt;/pre&gt;

Note the changes. We are now passing a pointer to an integer (or array of integers) to bubble(). And from within bubble we are passing pointers to the elements of the array that we want to compare to our comparison function. And, of course we are dereferencing these pointer in our compare() function in order to make the actual comparison. Our next step will be to convert the pointers in bubble() to pointers to type void so that that function will become more type insensitive. This is shown in bubble_4.

&lt;pre class="brush: c"&gt;
    /*------------------ bubble_4.c ----------------------------*/
    
    /* Program bubble_4.c from PTRTUT10,HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int *p, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int *p, int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare((void *)&amp;amp;p[j-1], (void *)&amp;amp;p[j]))
                {
                    t = p[j-1];
                    p[j-1] = p[j];
                    p[j] = t;
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        int *m1, *n1;
        m1 = (int *)m;
        n1 = (int *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*------------------ end of bubble_4.c ---------------------*/
&lt;/pre&gt;

Note that, in doing this, in compare() we had to introduce the casting of the void pointer types passed to the actual type being sorted. But, as we'll see later that's okay. And since what is being passed to bubble() is still a pointer to an array of integers, we had to cast these pointers to void pointers when we passed them as parameters in our call to compare().

We now address the problem of what we pass to bubble(). We want to make the first parameter of that function a void pointer also. But, that means that within bubble() we need to do something about the variable t, which is currently an integer. Also, where we use t = p[j-1]; the type of p[j-1] needs to be known in order to know how many bytes to copy to the variable t (or whatever we replace t with).

Currently, in bubble_4.c, knowledge within bubble() as to the type of the data being sorted (and hence the size of each individual element) is obtained from the fact that the first parameter is a pointer to type integer. If we are going to be able to use bubble() to sort any type of data, we need to make that pointer a pointer to type void. 

But, in doing so we are going to lose information concerning the size of individual elements within the array. So, in bubble_5.c we will add a separate parameter to handle this size information.

These changes, from bubble4.c to bubble5.c are, perhaps, a bit more extensive than those we have made in the past. So, compare the two modules carefully for differences.


&lt;pre class="brush: c"&gt;
    /*---------------------- bubble5.c ---------------------------*/
    
    /* Program bubble_5.c from PTRTUT10.HTM    6/13/97 */
    
    
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    long arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(void *p, size_t width, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr, sizeof(long), 10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%ld ", arr[i]);
        }
    
        return 0;
    }
    
    void bubble(void *p, size_t width, int N)
    {
        int i, j;
        unsigned char buf[4];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare((void *)(bp + width*(j-1)),
                            (void *)(bp + j*width)))  /* 1 */
                {
    /*              t = p[j-1];   */
                    memcpy(buf, bp + width*(j-1), width);
    /*              p[j-1] = p[j];   */
                    memcpy(bp + width*(j-1), bp + j*width , width);
    /*              p[j] = t;   */
                    memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        long *m1, *n1;
        m1 = (long *)m;
        n1 = (long *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*--------------------- end of bubble5.c ---------------------*/
&lt;/pre&gt;

Note that I have changed the data type of the array from int to long to illustrate the changes needed in the compare() function. Within bubble() I've done away with the variable t (which we would have had to change from type int to type long). I have added a buffer of size 4 unsigned characters, which is the size needed to hold a long (this will change again in future modifications to this code). The unsigned character pointer *bp is used to point to the base of the array to be sorted, i.e. to the first element of that array.

We also had to modify what we passed to compare(), and how we do the swapping of elements that the comparison indicates need swapping. Use of memcpy() and pointer notation instead of array notation work towards this reduction in type sensitivity.

Again, making a careful comparison of bubble5.c with bubble4.c can result in improved understanding of what is happening and why.

We move now to bubble6.c where we use the same function bubble() that we used in bubble5.c to sort strings instead of long integers. Of course we have to change the comparison function since the means by which strings are compared is different from that by which long integers are compared. And,in bubble6.c we have deleted the lines within bubble() that were commented out in bubble5.c.

&lt;pre class="brush: c"&gt;
    /*--------------------- bubble6.c ---------------------*/
    /* Program bubble_6.c from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    #define MAX_BUF 256
    
    char arr2[5][20] = {  "Mickey Mouse",
    
                          "Donald Duck",
    
                          "Minnie Mouse",
    
                          "Goofy",
    
                          "Ted Jensen" };
    
    void bubble(void *p, int width, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 5; i++)
        {
            printf("%s\n", arr2[i]);
        }
        bubble(arr2, 20, 5);
        putchar('\n\n');
    
        for (i = 0; i &amp;lt; 5; i++)
        {
            printf("%s\n", arr2[i]);
        }
        return 0;
    }
    
    void bubble(void *p, int width, int N)
    {
        int i, j, k;
        unsigned char buf[MAX_BUF];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
              k = compare((void *)(bp + width*(j-1)), (void *)(bp + j*width));
              if (k &amp;gt; 0)
                {
                 memcpy(buf, bp + width*(j-1), width);
                 memcpy(bp + width*(j-1), bp + j*width , width);
                 memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        char *m1 = m;
        char *n1 = n;
        return (strcmp(m1,n1));
    }
    
    /*------------------- end of bubble6.c ---------------------*/
&lt;/pre&gt;

But, the fact that bubble() was unchanged from that used in bubble5.c indicates that that function is capable of sorting a wide variety of data types. What is left to do is to pass to bubble() the name of the comparison function we want to use so that it can be truly universal. Just as the name of an array is the address of the first element of the array in the data segment, the name of a function decays into the address of that function in the code segment. Thus we need to use a pointer to a function. In this case the comparison function.

Pointers to functions must match the functions pointed to in the number and types of the parameters and the type of the return value. In our case, we declare our function pointer as:

   int (*fptr)(const void *p1, const void *p2);
   
Note that were we to write:

    int *fptr(const void *p1, const void *p2);
    
we would have a function prototype for a function which returned a pointer to type int. That is because in C the parenthesis () operator have a higher precedence than the pointer * operator. By putting the parenthesis around the string (*fptr) we indicate that we are declaring a function pointer.

We now modify our declaration of bubble() by adding, as its 4th parameter, a function pointer of the proper type. It's function prototype becomes:

    void bubble(void *p, int width, int N,
    
    int(*fptr)(const void *, const void *));
                
When we call the bubble(), we insert the name of the comparison function that we want to use. bubble7.c illustrate how this approach permits the use of the same bubble() function for sorting different types of data.

&lt;pre class="brush: c"&gt;
    /*------------------- bubble7.c ------------------*/
    
    /* Program bubble_7.c from PTRTUT10.HTM  6/10/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    #define MAX_BUF 256
    
    long arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    char arr2[5][20] = {  "Mickey Mouse",
                          "Donald Duck",
                          "Minnie Mouse",
                          "Goofy",
                          "Ted Jensen" };
    
    void bubble(void *p, int width, int N,
                int(*fptr)(const void *, const void *));
    int compare_string(const void *m, const void *n);
    int compare_long(const void *m, const void *n);
    
    int main(void)
    {
        int i;
        puts("\nBefore Sorting:\n");
    
        for (i = 0; i &amp;lt; 10; i++)               /* show the long ints */
        {
            printf("%ld ",arr[i]);
        }
        puts("\n");
    
        for (i = 0; i &amp;lt; 5; i++)                  /* show the strings */
        {
            printf("%s\n", arr2[i]);
        }
        bubble(arr, 4, 10, compare_long);          /* sort the longs */
        bubble(arr2, 20, 5, compare_string);     /* sort the strings */
        puts("\n\nAfter Sorting:\n");
    
        for (i = 0; i &amp;lt; 10; i++)             /* show the sorted longs */
        {
            printf("%d ",arr[i]);
        }
        puts("\n");
    
        for (i = 0; i &amp;lt; 5; i++)            /* show the sorted strings */
        {
            printf("%s\n", arr2[i]);
        }
        return 0;
    }
    
    void bubble(void *p, int width, int N,
                int(*fptr)(const void *, const void *))
    {
        int i, j, k;
        unsigned char buf[MAX_BUF];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                k = fptr((void *)(bp + width*(j-1)), (void *)(bp + j*width));
                if (k &amp;gt; 0)
                {
                    memcpy(buf, bp + width*(j-1), width);
                    memcpy(bp + width*(j-1), bp + j*width , width);
                    memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare_string(const void *m, const void *n)
    {
        char *m1 = (char *)m;
        char *n1 = (char *)n;
        return (strcmp(m1,n1));
    }
    
    int compare_long(const void *m, const void *n)
    {
        long *m1, *n1;
        m1 = (long *)m;
        n1 = (long *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*----------------- end of bubble7.c -----------------*/
&lt;/pre&gt;

References for Chapter 10:

"Algorithms in C"
Robert Sedgewick
Addison-Wesley
ISBN 0-201-51425-7

##EPILOG

I have written the preceding material to provide an introduction to pointers for newcomers to C. In C, the more one understands about pointers the greater flexibility one has in the writing of code. The above expands on my first effort at this which was entitled ptr_help.txt and found in an early version of Bob Stout's collection of C code SNIPPETS. The content in this version has been updated from that in PTRTUTOT.ZIP included in SNIP9510.ZIP.

I am always ready to accept constructive criticism on this material, or review requests for the addition of other relevant material. Therefore, if you have questions, comments, criticisms, etc. concerning that which has been presented, I would greatly appreciate your contacting me via email me at tjensen@ix.netcom.com. 
</t>
<t tx="amd.20160521170214.1">@language md
Title: C 程式語言的指標與陣列導引 (中文翻譯)
Date: 2016-05-21 12:00
Category: C
Tags: Pointer, Array
Author: kmol
@others
&lt;a href="http://pweb.netcom.com/~tjensen/ptr/pointers.htm"&gt;http://pweb.netcom.com/~tjensen/ptr/pointers.htm&lt;/a&gt;

&lt;!-- PELICAN_END_SUMMARY --&gt;

其他參考: 

1. &lt;a href="http://c.learncodethehardway.org/book/"&gt;http://c.learncodethehardway.org/book/&lt;/a&gt;
2. &lt;a href="http://cad-lab.github.io/cadlab_data/files/1993_prog_in_c.pdf"&gt;http://cad-lab.github.io/cadlab_data/files/1993_prog_in_c.pdf&lt;/a&gt;
3. &lt;a href="http://cad-lab.github.io/cadlab_data/files/The_C_Book_1991.pdf"&gt;The_C_Book_1991.pdf&lt;/a&gt;

##前言

本文件旨在向 C 程式語言的初學者介紹指標. 過去幾年, 無論是在 FidoNet 與 UseNet 有關 C 的會議場合, 特別注意到有許多 C 程式語言的初學者, 似乎對於指標的基本用法, 感到有些困難. 因此特別利用較多的範例, 希望以淺顯的說明來解釋指標的用法.

這份文件的第一版本, 如同此一版本, 是被放在公共領域. 當時是由 Bob Stout 將資料放在 PTR-HELP.TXT 的文件檔中, 並納入 SNIPPETS 的收集中加以發行. 之後, 又在原始資料中增添了許多內容並且修正了一些錯誤.

致謝

要感謝許多不為人知的使用者, 將許多問題公佈在 FidoNet 的 C Echo 論壇中,  或是 UseNet comp.lang.c 新聞群組中, 或是在其他網路上的幾個會議區,這些要感謝的人士可能無法一一列出. 其中特別要感謝 Bob Stout 肯將這份資料的第一版本放入他所收集的 SNIPPETS 檔案中.

關於作者:

Teb Jensen 是一位退休的電子工程師, 主要專注於電磁錄音領域中的硬體設計與管理職務. 程式則是自 1968 年以來閒暇時的興趣, 當時正學著如何以打卡的方式讓程式送給電腦主機執行. (那時的主機擁有 64 K 的磁心記憶體)

使用本資料:

這份資料以公共領域授權釋出. 任何人可以採用任何形式, 複製或散佈這份資料. 唯一的要求, 則是若這份資料被用於課程教學, 希望能夠完整呈現, 亦即, 包含所有章節, 包括前言與簡介. 

並且任課教師能夠利用下方的電子郵箱通知我一聲. 之所以如此要求, 主要是希望這份資料能夠對其他人有用, 況且我並不要求金錢回報. 只是希望能夠透過使用這份資料的用戶回饋, 多少確認一下這個目標能夠達成.

此外, 並非一定要是課程教學者可以寫信給我. 感謝任何覺得此份資料有用或提供建設性批評的任何人, 都能告訴我一聲, 我將會透過電子郵件回答相關問題.

&lt;a href="https://en.wikipedia.org/wiki/Ted_Jensen"&gt;Ted Jensen&lt;/a&gt;     tjensen@netcom.com
P.O. Box 324     1-415-365-8452
Redwood City, CA 94064
Dec. 1995

##簡介

若您想要專精於利用 C 程式語言編寫程式碼, 就必須徹底了解如何使用指標. 然而, C 指標對初學者而言, 經常是一項障礙, 尤其對於從 Fortran, Pascal 或 Basic 程式語言轉進的學習者.

這份資料旨在幫助初學者了解指標. 為了能讓這份資料發揮最大功能, 使用者最好能夠實際執行文章中所列出的各個程式. 因此所有的程式碼都採 ANSI 標準, 以便讓任何符合 ANSI 標準的編譯器都能執行這些程式碼. 內文與程式碼之間, 也特別加以區分開來, 以便使用者可以直接利用複製的方式, 取的各段落的程式碼, 套用到其他系統中進行編譯. 如此才能確實了解這裡所提供的資料.

##第一章: 何謂指標?

C 語言初學者必須面對的難題之一, 就是指標的用法.

這份教材的目的, 就是針對初學者簡介指標及其應用.

其實初學者會對指標產生疑惑, 大多源自於在學習 C 語言時, 對於變數的概念經常一知半解.

因此這裡就由 C 變數的一般用法說起.

程式中的變數都必須加以命名, 以便存放數值.

而編譯器與連結器在處理變數時, 就會挪出電腦記憶體中的特定區域, 以存放變數的值

這些特定區域的大小, 取決於變數允許存放值的範圍.

例如, 在 32 位元電腦, 一個整數變數的存放範圍, 需要為 4 位元. 而在舊的 16 位元電腦, 整數存放需要 2 位元.

C 程式中的整數變數存放範圍大小, 在各種機器上不一定相同.

並且 C 程式中的整數變數也不只一種, 在許多 C 程式教科數中,可以發現有整數, 長整數, 短整數等. 這裡則假設使用 32 位元系統, 因此整數需要 4 位元的存放空間.

可以採用下列程式碼,在您所使用的系統中, 查探特定整數型別所需要的記憶體空間:

&lt;pre class="brush: c"&gt;
    #include &amp;lt;stdio.h&amp;gt;

    int main()
    {
    printf("size of a short is %d\n", sizeof(short));
    printf("size of a int is %d\n", sizeof(int));
    printf("size of a long is %d\n", sizeof(long));
    }
&lt;/pre&gt;

&lt;a href="http://codepad.org/iQqRmLnh"&gt;在 codepad.org 執行上述 C 程式&lt;/a&gt;

當我們宣告一個變數時, 亦即告知編譯器兩件事, 變數名稱與變數型別. 例如, 可以透過

    int k; 

宣告名稱為 k 的整數型別變數. 當編譯器看到 "int" 的敘述值, 就會在電腦的記憶體中, 保留 4 位元的空間, 以便存放整數變數 k 的值.

此外, 電腦也會設置一個符號表, 註明符號 k 與其在記憶體中用來存放 4 位元資料的相對位址.

因此, 若在變數宣告後, 使用

    k = 2; 

2 這個數值, 就會在程式執行時, 被放在保留給 k 變數的記憶體位址中.

在 C 語言中, 整數 k 變數, 可視為一個物件. 其中有兩個值與物件 k 有關, 也就是存放的數值與存放的位址. 有些參考書中將者兩個數值稱為"右值"與"左值". (2 為右值, 而變數位址為左值)

在某些語言中, 左值只能放在指定"等號"的左邊, 而右值則只能放在右邊. 位置放錯, 例如: 2 = k, 就會出錯.

其實, C 語言中有關左值得定義, 根據 K&amp;R II (page 197): [1], 則有些變動.

"物件為儲存區域的名稱, 而左值則為指向該物件的表示式."

這裡先採引用的定義加以說明, 後續將會進一步針對指標加以說明.

接著, 假如程式碼為:

   int j, k; 

    k = 2; 
    j = 7;    &lt;-- line 1 
    k = j;    &lt;-- line 2 

編譯器會將第一行 (line 1) 的 j 解讀為變數 j 的位址 (也就是左值), 並且將值 7 放到該位址. 在第二行 (line 2), 則會將 j 視為右值 (因為在"指定"運算子的右方), 指的則是存放在 j 記憶體中的 7 這個數值. 因此第二行執行過後, 存放在 j 的 7 這個數值, 就會被放到 k 變數所對應的"左值" (記憶體位址) 中.

在這些範例中, 採用的都是將右值從一個儲存位址, 經由複製將 4 位元的資料複製到另外一個儲存位址. 假如使用 2 位元整數, 則會複製 2 位元資料.

這裡, 就會需要一種變數, 用來存放左值 (記憶體位址). 存放此一變數的值, 隨系統而異, 舊的桌上電腦總共只有 64K 的記憶體, 每存放一個整數位址會佔去 2 位元.

更多位元數的電腦 (例如 64 位元電腦), 則需要更多的位元位址來存放一個整數資料.

實際需要的記憶體大小並不重要, 需要的則是一種方法, 通知編譯器在哪一位址存放哪些資料.

這樣的變數稱為"指標變數" (隨後將說明得更清楚). 在 C 語言中定義指標變數時, 必須在變數名稱前方, 加上一個 * 符號. 而這些指標變數的型別, 隨著要存放在指標位址中的資料型別而定, 例如, 假如宣告:

   int *ptr;

ptr 為變數名稱 (與之前的整數變數名稱 k 相同). 而 "*" 符號則告知編譯器, 此一宣告為指標變數, 亦即保留出足夠的記憶體存放位址. 最前方的 int 則表示, 希望此一指標變數用來存放整數. 而此一指標稱為"指向整數". 需要特別注意的是, 當使用 int k; 時並沒有給 k 初始值, 只有在任何符合 ANSI 規範的編譯器中, 會將宣告在函式外的變數通通以 0 初始.

同樣地, ptr 也沒有初始值, 亦即, 還沒有在上述宣告之後, 在保留的位址空間上, 放入任何值. 這裡若宣告是在任何函式之外, 就會被賦予初值, 並且保證不會指向任何 C 物件或函式. 以這種方式初始的指標, 被稱為 "空"指標 (null pointer).

而空指標並不一定會被放入 "0" 值, 因為這取決於特定系統中的設定. 為了在不同系統中的不同編譯器彼此相容, 就會利用巨集 (macro) 來表示空指標. 此巨集以 NULL 命名. 因此, 若以 NULL 設定指標值, 則可以確定在不同機器上, 這些指標變數一定是空指標.

與整數是否為 0 的判斷式 if(k ==0) 相類似, 可以利用 if(ptr == NULL) 判斷是否 ptr 為空指標.

但是, 回到新變數 ptr 的應用, 假設要將整數變數 k 所對應的位址, 存入 ptr, 就必須使用"位址運算子", 寫成:

    ptr = &amp;k; 

"位址運算子"的作用是用來取 k 的左值 (位址), 即使這時 k 位於等號右邊, 上述程式會將 k 的值複製到指標 ptr 的儲存空間中. 這時, ptr 稱為"指向" k.

接著再討論另外一個運算子.

也就是所謂的"取值運算子" (dereferencing operator), 就是一個 * 符號. 使用方法如下:

    *ptr = 7; 

這行程式會將 7 這個數值,複製到 ptr 變數所指向的位址. 也就是說, 假如 ptr 指向 k (ptr 為 k 存放資料的記憶體位址), 這行程式就會將 k 的值設為 7. 換言之, * 運算子可用來改變 ptr 所指向的值, 而不是指標本身的值. (註:指標本身為位址, 也就是所謂的左變數)

因此, 可以利用:

 printf("%d\n",*ptr); 

將目前存放在 ptr 所指向位址的整數值, 給印到螢幕.

要釐清上述說明, 可以執行下列程式, 並仔細探討程式碼與其輸出.

------------ Program 1.1 --------------------------------- 

&lt;pre class="brush: c"&gt;
    /* Program 1.1 from PTRTUT10.TXT   6/10/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int j, k;
    int *ptr;
    
    int main(void)
    {
        j = 1;
        k = 2;
        ptr = &amp;k;
        printf("\n");
        printf("j has the value %d and is stored at %p\n", j, (void *)&amp;j);
        printf("k has the value %d and is stored at %p\n", k, (void *)&amp;k);
        printf("ptr has the value %p and is stored at %p\n", ptr, (void *)&amp;ptr);
        printf("The value of the integer pointed to by ptr is %d\n", *ptr);
    
        return 0;
    }
&lt;/pre&gt;

&lt;a href="http://codepad.org/w8R9mp9h"&gt;在 codepad.org 執行 Program 1.1&lt;/a&gt;


請注意: 我們還沒有談到 C 程式中的 (void *) 表示式. 這裡可以先納入您的測試程式碼中,  隨後將會加以說明.

結論:

    1. 變數宣告必須指定名稱與型別. (例如: int k;)
    2. 指標變數宣告也是指定名稱與型別. (例如: int *ptr;), 其中的 * 告知編譯器, 該名稱為 ptr 的變數, 為一個指標變數, 而其型別為該指標指向的資料型別 (這裡為整數).
    3.  一旦變數已經宣告, 可以透過變數前方的位址運算子, 取得其位址, 例如 &amp;k.
    4. 可以由指標中"取值", 亦即, 以 * 指定到指標所參照的值, 例如: *ptr.
    5. 變數的左值為被用來存放在記憶體中的位址值, 而變數的右值則式被存放在該位址的數值.

參考資料:

"The C Programming Language" 2nd Edition
B. Kernighan and D. Ritchie
Prentice Hall
ISBN 0-13-110362-8 

##第二章: 指標型別與陣列

接著讓我們來看看, 為何需要指定指標指向變數的型別, 例如:
int *ptr;
原因之一是, 宣告之後, 可以透過指向, 寫成:

*ptr = 2;

編譯器就會知道要配置多少記憶體給 ptr 變數, 假如 ptr 宣告為指向整數, 電腦就會複製 4 位元的資料, 其它的浮點與雙浮點變數也是相同. 定義指向變數型別的另外一個用途就是編譯器可以解譯程式碼. 例如, 記憶區中存放 10 個連續的整數資料時, 需要 40 位元的記憶體.

假如整數指標 ptr 為這些整數中的第一個變數, 若該整數位於記憶體位址 100. 當程式寫為:

ptr + 1;

因為編譯器知道 ptr 為一個指標變數 (亦即, 其值為一組位址)並且指向某一整數 (目前位址為 100, 即是該整數所在位址), 當 ptr 加上 4 而不是 1 之後, 該指標將會指向下一個整數, 也就是記憶體 104. 

相同的概念下, 若 ptr 指向短整數, 則應該加上 2  而不是 1. 對於浮點, 雙浮點或使用者自訂的資料型別 - 結構, 也是類似.

儘管這並非我們常見的"加法", 但是在 C 語言中, 可以透過指標算數進行"加法"運算, 隨後將會再予以說明.

同理, 因為 ++ptr 與 ptr++ 與 ptr + 1 等同 (儘管 ptr 增量的時機點並不一樣).

讓指標以 ++ 增量運算子進行增量, 無論是先加或後加, 由 sizeof(type) 中所得到的位址增量, 其型別均為該物件指向變數的型別 (整數為 4 位元).

由於這 10 個整數位於記憶體中連續區塊上, 指標可以被用於整數資料陣列的處理.

例如:

    int my_array[] = {1,23,17,4,-5,100}; 

陣列中帶有 6 個整數. 可以透過 my_array 的索引代表這些整數. 亦即利用 my_array[0] 到 my_array[5] 加以表示, 也可以透過指標加以表示成:

    int *ptr;
    ptr = &amp;my_array[0];       /* 將指標指向陣列中的第一個整數*/ 

接著就可以使用陣列索引或取值運算, 列出陣列.

下列程式可以用來展示此一應用:

-----------  Program 2.1  -----------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 2.1 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int my_array[] = {1,23,17,4,-5,100};
    int *ptr;
    
    int main(void)
    {
        int i;
        ptr = &amp;amp;my_array[0];     /* point our pointer to the first
                                          element of the array */
        printf("\n\n");
        for (i = 0; i &amp;lt; 6; i++)
        {
          printf("my_array[%d] = %d   ",i,my_array[i]);   /*&amp;lt;-- A */
          printf("ptr + %d = %d\n",i, *(ptr + i));        /*&amp;lt;-- B */
        }
        return 0;
    }
&lt;/pre&gt;

&lt;a href="http://codepad.org/3fgCKs7N"&gt;在 codepad.org 執行 Program 2.1&lt;/a&gt;

編譯執行上列程式就可以仔細觀察 A 行與 B 行程式分別採用兩種方法列出陣列中的同一內容.

也可以清楚看到 B 行程式如何應用"取值"運算, 亦即, 首先在指標增量後, 在新的指標中取值. 將 B 行程式改為

    printf("ptr + %d = %d\n",i, *ptr++);

之後再執行, 接著改為:

    printf("ptr + %d = %d\n",i, *(++ptr));

再執行, 執行之前先判定結果, 並與實際執行結果進行比較.

在 C 語言, 可以利用 var_name 來替代 &amp;var_name[0], 因此在程式碼中寫成:

    ptr = &amp;my_array[0];

或:

    ptr = my_array;

都會得到相同的結果.

因此許多參考書都寫道: 陣列的變數名稱就是指標. 但是比較好的想法則是: 陣列的變數名稱就是陣列中第一元件的位址. 許多初學者 (包含作者本人), 都會將其視為指標.

但是, 可以寫成:

ptr = my_array;

但是卻不能寫成:

my_array = ptr;

原因就是 ptr 為變數, 但是 my_array 卻是常數, 也就是說, my_array 第一元件的位址, 一旦在 my_array[] 完成宣告後, 就不可以改變.

先前曾討論的左值, 中引用 K&amp;R-2 中所言:

"物件為儲存區域的名稱, 而左值則為指向該物件的表示式."

這就衍生出一個有趣的議題. 因為 my_array 為儲存區域的代表名稱, 為何 my_array 在上面的指定敘述程式中, 卻不能用在左值區域?

為了說明這點, 可以將 my_array 視為"不可改變的左值".

上列範例可以將:

    ptr = &amp;my_array[0];

改為:

    ptr = my_array;

確認兩者會得到相同的結果.

至於 ptr 與 my_array 之間的差異, 有人將陣列變數名稱視為"常數指標".
為了充分了解所謂"常數"的真諦, 重回變數定義時的說明.

當變數宣告時, 用來存值的記憶體就必須加以配置. 這時變數可以透過兩個層面來看.

用在指定運算左邊時, 編譯器會視其為記憶位址, 用來指向右側所設定的值.

若被用在運算右邊時, 變數名稱會被解讀為存在該記憶體中的值.

有了以上的概念, 關注簡單的常數運算:

    int i, k;
    i = 2;

其中 i 為存放 2 常數的變數, 並非直接在資料記憶區塊中指定, 而是直接存入程式記憶區塊. 

當 k = i; 程式碼就會到 &amp;i 位址中抓取要複製到 k 的值, 而 i = 2; 只是將 2 放入程式碼, 而沒有取值的運作. 也就是說, k 與 i 都是物件, 但是 2 則非物件.

同理, 由於 my_array 為常數 (為位址值), 一旦編譯器設好用來存值得區域後, my_array[0] 存值得記憶體位址就已經確定, 因此可以使用:

    ptr = my_array;

將此在程式區段中的常數位址設給 ptr, 其中並沒有牽涉到資料區段的取值操作.

這時就可進一步說明第一章程式 1.1. 中 (void *) 的應用. 由於指標可被用來指向各種資料型別. 除了可以指向整數, 也可以指向字元, 之後還會介紹指向結構與指向指標的指標變數.

由於在不同系統中的指標儲值大小會有差別, 並且指標的記憶體空間會隨著指向物件資料型別差異而有所不同.

因此若將長整數指給短整數資料型別變數時, 就會發生問題, 也可以將某一型別的指標變數指定給其他不同型別指標變數時, 產生問題.

為了克服此一問題, C 語言提供 void 這個空的指標資料型別.

假如將某一指標設定為:

void *vptr;

空指標可以視為通用指標. 由於 C 語言不允許整數型別指標與字元型別指標之間的資料交換或比較. 這時就可以透過空指標作為中介, 在特殊情況下在指標型別間進行資料轉換.

在第一章的 1.1 程式中, 就是使用空指標將整數指標轉成能與 %p 資料相符的格式.

下列各章, 也將透過此一概念進行資料轉換.

這裡列出許多技術資料給初學者, 首次閱讀時或許不很容易理解. 因此需要前後執行幾次程式, 看看結果, 並且仔細查驗這兩個例子中的程式碼與產出結果, 才會有所突破.

接下來, 將討論指標, 字元陣列與字串間的關係.

##第三章: 指標與字串

字串的研究不僅對進一步理解指標與陣列的關聯有些幫助,也能用來彰顯某些標準 C 字串函數的使用. 最後也可以理解指標如何將資料傳給函式.

就 C 而言, 字串為字元所組成的陣列, 其他的語言則未必如此.
無論是 BASIC, Pascal 或是 Fortran 與其他幾種程式語言, 字串自有其資料類別.  C 則不然, 字串之於 C 被表為以 0 位元 (寫為'\0').

這裡要以幾行程式碼作為開端, 來加以說明, 如下:

    char my_string[40];

    my_string[0] = 'T';
    my_string[1] = 'e';
    my_string[2] = 'd':
    my_string[3] = '\0';

或許沒有人會用這種方法來建立字串, 以空字元作為結尾. 根據 C 語言的定義, 字串為一組以空字元結尾的字元陣列. 注意這裡的所謂空字元與 "NULL" 不同. 空字元表為以跳脫序 '\0' 表示的"零"字元. 亦即佔了記憶體中的一個位元, 而 NULL 則為用來起始空指標的巨組程式.

NULL 在 C 編譯器中, 以 #define 在標頭檔案中宣告, 而 nul 則完全無法以 #define 宣告.

由於用上述程式來宣告字串非常累人, 因此 C 允許以多種方法來完成一項工作.

首先, 可以寫成

    char my_string[40] = {'T', 'e', 'd', '\0',};    

但是光打字就有些不方便, 因此也可以寫成:

    char my_string[40] = "Ted";

若使用的是雙引號, 而不是先前的單引號, 空字元 ('\0') 會自動被加在字串最後面.

上面的例子, 結果都相同. 編譯器會保留連續的 40 位元區塊來存放 Ted\0 這四個字元.

接著看看下列程式:

------------------program 3.1-------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 3.1 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    char strA[80] = "A string to be used for demonstration purposes";
    char strB[80];
    
    int main(void)
    {
    
        char *pA;     /* a pointer to type character */
        char *pB;     /* another pointer to type character */
        puts(strA);   /* show string A */
        pA = strA;    /* point pA at string A */
        puts(pA);     /* show what pA is pointing to */
        pB = strB;    /* point pB at string B */
        putchar('\n');       /* move down one line on the screen */
        while(*pA != '\0')   /* line A (see text) */
        {
            *pB++ = *pA++;   /* line B (see text) */
        }
        *pB = '\0';          /* line C (see text) */
        puts(strB);          /* show strB on screen */
        return 0;
    }
&lt;/pre&gt;

--------- end program 3.1 -------------------------------------

&lt;a href="http://codepad.org/VohQ499U"&gt;在 codepad.org 執行 Program 3.1&lt;/a&gt;

    
上述程式定義了兩個字元陣列, 各有 80 字元. 由於屬於全域變數, 一開始各字元都填入 '\0'. 然後, strA 前 42 個字元被放入所引用的字串內容.

接著的程式碼, 宣告兩個字元指標並將其字串顯示在螢幕. 將 pA 指標指向 strA, 也就是附註 strA[0] 的位址給變數 pA. 然後利用 puts() 函數顯示 pA 所指向的內容
 puts() 函式的宣告為:

    int puts(const char *s); 

現在先不用管 const, 傳給 puts() 函數的變數為指標. 其實是指標所對應的值. 而指標的值為其所指向的位址. 因此寫成 puts(strA), 表示輸入變數為 strA[0] 的位址.

同理, 當程式寫 puts(pA); 也是以相同的位址當作輸入, 因為已經透過

pA = strA;

將位址傳給 pA

因此程式執行到 while() 指令中的 A 行時, A 行內容為:

當 pA 所指向的字元並非 nul 字元時 (也就是'\0'), 執行其內容:

而 B 行程式則表示: 將 pA 指向的字元複製給 pB 所指向的字元, 接著增量 pA 後可以指向下一字元, 而 pB 則會指向下一個記憶體空間.

完成最後一個字元複製後, pA 會指向空字元, 也會終止迴圈的執行.

其中空字元並沒有複製, 但由於 C 中的字串一定要以空字元結尾, 所以在 C 行程式中再補上空字元.

執行此一程式時, 當使用者透過除錯器看著 strA, strB, pA 與 pB 一步步執行, 將非常具有教育意義.

It is even more educational if instead of simply defining strB[] as has been done above, initialize it also with something like:

更有意思的是, 若不將 strB[] 按上述方法定義時, 而是將其起始值設為:

    strB[80] = 
"12345678901234567890123456789012345678901234567890"

讓其數字個數大於 strA  的長度, 然後一步步看著這些變數設定數值. 大家一定得親自做做看.

接著再回到 puts() 的原型, 運用 "const" 作為某一參數的宣告飾詞時, 主要在告訴使用者, 該函式無法改變其由 s 所指向的字串值, 意即, 程式會將該字串視為常數.

誠然, 上述程式展示了複製字串的一種簡單方式. 一旦確實了解上述程式的用法, 接著將自行編寫可以取代標準 strcpy() 的 C 標準函式, 程式如下:

&lt;pre class="brush:c"&gt;
    char *my_strcpy(char dest[], char source[])
    {
        int i = 0;
        while (source[i] != '\0')
        {
            dest[i] = source[i];
            i++;
        }
        dest[i] = '\0';
        return dest;
    }
&lt;/pre&gt;
  
在此一程式中, 同樣運用了指標的傳值.

承上述內容, 若將函式寫成可以接受兩個字元指標變數輸入, 也就是位址, 就可以將上述程式改寫為:

    int main(void)
    {
        my_strcpy(strB, strA);
        puts(strB);
    }    

雖然與標準 C 的用法有些不同, 採用了下列原型定義:

    char *my_strcpy(char *destination, const char *source);  

之所以使用 "const" 飾詞, 主要在確定該函式無法變更指向來源指標的數值. 此點可從上述函式的修改得到印證, 其原型變數, 如 "const" 飾詞所示. 接著在函式中, 增加一行試圖更改該變數由來源指標所指向的值, 意即:

    *source = 'X';

試著將該字串的第一個字元, 變更為 X. 前面的 const 飾詞就會讓這一行程式產生錯誤, 執行完後就會更加清楚有關 const 變數的使用.

接著, 繼續探討上述程式的內涵, 第一步, 將 *ptr++ 解讀為由 ptr 指標傳回值後的增量. 主要與運算子的次序有關. 假如寫成 (*ptr)++, 表示增量的部分,  並非指標, 而是該指標所指向值的增量. 也就是說, 在上述程式中, 若對第一個字元 'T' 增量, 其值就會變成 'U'. 使用者可以自行寫程式來印證此一結果.

由於字串只不過就是字元所組合而成的陣列, 並在最後一個字元補上 '\0'.  上面所進行的是用來複製陣列. 這些字元陣列的運算技巧, 也可以應用到整數陣列或浮點數陣列. 但是在這些應用中, 陣列的尾端, 並不會補上 nul 字元, 而可以放進某特定值的內容, 來表示其為終點. 例如, 可以在複製正整數時, 在尾數放入一個負值的整數來標示終點. 或者, 寫一個函式, 可以複製字串以外的陣列及其陣列位址, 就如同下列原型所示:

    void int_copy(int *ptrA, int *ptrB, int nbr);

其中 nbr 為要進行複製的整數值. 試著寫一個可以用來複製整數陣列的 int_copy() 函式, 看看是否能夠正常運作.

如此, 就可以使用函式來處理大陣列. 例如, 有一帶有 5000 個整數的陣列需要處理, 只要將該陣列的位址輸入該函式 (視情形,  可以加上其他相關變數, 如上述程式中的 nbr 變數), 而不需要輸入陣列本身, 意即, 整個陣列值並沒有在堆疊中複製後進行輸入的動作, 而只送出其位址.

此一過程與輸入某一整數給某一函式不同. 輸入整數時, 必須複製該整數, 也就是取得該整數的值, 然後放入某一堆疊當中. 這時, 該函式的處理並不影響原始的整數值, 而若以陣列及指標進行處理, 可以將變數位址輸入, 直接處理原始變數的值.

##第四章: 更多關於字串的用法

好的, 在短短的時間裏, 已經介紹了不少東西! 接著再看一次第三章中有關字串複製的部分, 但是採不同的方法. 以下列函式來看:

    char *my_strcpy(char dest[], char source[])
    {
        int i = 0;
        while (source[i] != '\0')
        {
            dest[i] = source[i];
            i++;
        }
        dest[i] = '\0';
        return dest;
    }

之前曾說過, 字串就是字元所組成的陣列. 這裡我們利用陣列表示而非指標表示, 來進行資料的實質複製. 結果會與之前相同, 亦即, 採此一方法的字串複製, 其結果依然正確. 這也衍生出接下來要討論的有趣論點.

由於變數透過值進行傳遞, 可經由前述之字元指標或陣列名稱進行, 其間真正傳遞的則是每一陣列中第一個元素的位址. 亦即, 變數數值的傳遞, 可透過字元指標或陣列名稱來代表此一變數. 也可以說, source[i] 其實與 *(p+i) 的用法一樣.

事實上, 這是正確的, 亦即 a[i] 可以利用 *(a+i) 來替代, 而不會產生任何問題. 換言之, 編譯器針對這兩種情形, 會產生相同的編碼. 因此, 指標算術其實與陣列索引編碼相同. 兩種語法會產生相同結果.

但是這並非說, 指標與陣列是相同的東西, 其實不然. 這裡只是說, 利用陣列來進行特定元素辨識, 可以採用兩種不同的語法, 其一為採用陣列索引, 而另一種方法則是利用指標算術, 會得到相同的結果.

接著, 注意最後的表示式, (a+i) 的部分利用簡單的加號 + 與 C 的語法, 表示式子可以交換, 亦即 (a+i) 與 (i+a) 完全相同. 因此可以將 *(i+a) 簡化為 *(a+i).

但是 *(i+a) 可能來自 i[a]! 綜合上述, 或許會懷疑若:

    char a[20];
    int i;

寫成

    a[3] = 'x';

其實與下列表示式, 其實是一樣的.

    3[a] = 'x';

試試看! 設定一個字元陣列, 內存為整數或長整數等. 對其第三或第四元素, 以傳統方式, 給定特殊值, 接著將值印出加以確認. 然後如前述, 將陣列表示式反轉過來, 一個好編譯器將會毫無疑問的給出相同的結果, 僅只出於好奇, 別無其他用意.

程式範例:

&lt;pre class="brush: c"&gt;
    #include &amp;lt;stdio.h&amp;gt;
    
    // 每一個 C 程式都必須要有一個小寫的 main()函式
    int main()
    {
        // 陣列與指標的應用
        char a[20];
        int i;
        a[3] = 'x';
        printf("%c\n",a[3]);
        printf("%c\n",3[a]);
        printf("%c\n",*(a+3));
        printf("%c\n",*(3+a));
        return 0;
    }
&lt;/pre&gt;

&lt;a href="http://codepad.org/38P12lsx"&gt;執行上述程式&lt;/a&gt;

接著, 來看前面給的函數, 寫成:

    dest[i] = source[i];

由於已知陣列索引與指標算術會得到相同的結果, 因此也可以寫成:

    *(dest + i) = *(source + i);

但是, 需要對每一個值分別加上 i. 加法, 一般而言, 會比索引增量 (例如採用 ++ 運算符號的 i++) 耗費更多時間. 或許對現在最佳化的編譯器來說, 不一定就是如此, 但是採用指標通常比陣列索引來得快些.

另一個可以加速指標運算的方法, 將:

    while (*source != '\0')

簡化為

    while (*source)

兩種情形都會讓括號中為零 (FALSE).

這裡可實驗看看, 以指標的方法來寫程式. 用來處理字串應該不錯. 可以將下列標準函式改寫成自己的版本:

    strlen();
    strcat();
    strchr();

或者其他在系統中的函式.

接下來的章節, 還會再探討字串及其處理. 接下來先討論一下 structures (結構).

##第五章: 指標與結構

也許你已經知道, 可以利用結構的形式來宣告帶有不同資料型別的資料區塊. 例如, 人事檔案可能包含下列結構:

    struct tag {
        char lname[20];        /* 姓 */
        char fname[20];        /* 名 */
        int age;               /* 年齡 */
        float rate;            /* 例如: 每小時 100 元 */
    };
假如在磁片檔案中有許多這樣的資料, 當我們需要一筆筆讀出, 並且分別列出姓名, 以做成資料表格. 其他資料並不需要印出. 具體做法, 可以利用函式呼叫, 透過指向結構的指標作為輸入, 就可以完成處理. 這裡只利用一個結構進行示範, 並且主要在編寫函式, 而非讀檔. 這裡已經假設您知道如何進行讀檔.

複習一下, 我們可以利用點運算子來擷取結構成員, 正如:

--------------- program 5.1 -----------------

&lt;pre class="brush: c"&gt;
    /* Program 5.1 from PTRTUT10.HTM     6/13/97 */
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    struct tag {
        char lname[20];      /* last name */
        char fname[20];      /* first name */
        int age;             /* age */
        float rate;          /* e.g. 12.75 per hour */
    };
    
    struct tag my_struct;       /* declare the structure my_struct */
    
    int main(void)
    {
        strcpy(my_struct.lname,"Jensen");
        strcpy(my_struct.fname,"Ted");
        printf("\n%s ",my_struct.fname);
        printf("%s\n",my_struct.lname);
        return 0;
    }
&lt;/pre&gt;

-------------- end of program 5.1 --------------

&lt;a href="http://codepad.org/yKWdNwEE"&gt;執行 Program 5.1&lt;/a&gt;

或許這裏所使用的結構與一般 C 程式所使用的相比還要小, 為了驗證也可以加入:

    date_of_hire;                  (未顯示資料型別)
    date_of_last_raise;
    last_percent_increase;
    emergency_phone;
    medical_plan;
    Social_S_Nbr;
    等等.....
    
假如員工的數量眾多, 應該會採用函式進行資料處理. 例如, 將結構輸入該函式, 就能利用函式印出員工姓名. 但是在最原始的 C (Kernighan &amp; Ritchie, 第一版), 無法輸入結構, 只能輸入指向結構的指標. 在 ANSI C 中, 已經允許利用結構作為函式輸入. 而這裡為了進行更多有關指標的學習, 並不直接採用結構.

總之, 假如輸入整個結構, 就如同必須在函式呼叫時複製結構內容, 在仍然使用堆疊的系統中, 就等同將整個結構資料送入堆疊中. 針對大型結構時,  可能就會造成問題. 若能只輸入指標, 就可使用最少的堆疊空間.

因此這裡主要在談指標, 因此接著來看如何將指向結構的指標變數輸入函式當中.

以上面的情況為例, 建立一個能夠接受指標變數 (指向結構) 的函式, 其中我們只想要擷取該結構的部分成員. 例如, 只要印出範例結構中的人員姓名.

好, 先前我們已經知道如何宣告指向結構的指標變數 tag. 接著就可以利用 tag 結構, 來宣告指標變數:

    struct tag *st_ptr;
    
並且可以用來指向範例中的結構:

    st_ptr = &amp;my_struct;
    
接下來, 可以利用指標的分割參照, 來指定特定成員. 但是應該如何利用指標的分割參照來指向結構? 假如要利用指標來設定人員的年紀, 可以寫成:

    (*st_ptr).age = 63;
    
仔細看清楚. 此一設定表示, 若將括號中 st_ptr 所指向的內容換成 my_struct, 就會與my_struct.age 相同.

但是, 這樣經常會被用到的表示式, 就被設定為與下列表示式涵義相同:

    st_ptr-&gt;age = 63;
    
了解了之後, 參考下列程式:

------------ program 5.2 ---------------------

&lt;pre class="brush: c"&gt;
    /* Program 5.2 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    struct tag{                     /* the structure type */
        char lname[20];             /* last name */
        char fname[20];             /* first name */
        int age;                    /* age */
        float rate;                 /* e.g. 12.75 per hour */
    };
    
    struct tag my_struct;           /* define the structure */
    void show_name(struct tag *p);  /* function prototype */
    
    int main(void)
    {
        struct tag *st_ptr;         /* a pointer to a structure */
        st_ptr = &amp;amp;my_struct;        /* point the pointer to my_struct */
        strcpy(my_struct.lname,"Jensen");
        strcpy(my_struct.fname,"Ted");
        printf("\n%s ",my_struct.fname);
        printf("%s\n",my_struct.lname);
        my_struct.age = 63;
        show_name(st_ptr);          /* pass the pointer */
        return 0;
    }
    
    void show_name(struct tag *p)
    {
        printf("\n%s ", p-&amp;gt;fname);  /* p points to a structure */
        printf("%s ", p-&amp;gt;lname);
        printf("%d\n", p-&amp;gt;age);
    }
&lt;/pre&gt;

-------------------- end of program 5.2 ----------------

&lt;a href="http://codepad.org/BTNjPXRy"&gt;執行 Program 5.2&lt;/a&gt;

這裡要了解不少東西. 讀者必須實際執行一下上面的程式, 並且利用除錯器一步步觀察  my_struct 與 p 在主函式執行流程中, 才能實際了解函式執行的內容.

##第六章: 更多關於字串與字串陣列的用法

接著, 再回到字串的用法. 下面的例子, 都以全域的方式運用, 亦即, 在任何函式之外發生作用, 包括主函式.

先前的章節曾經談過:

   char my_string[40] = "Ted";
   
將會配置足夠存放 40 個位元組陣列的空間來存放該變數的值, 並且在最前面的 4 個位元組中放入所設定的字元 (前面三個位元組放入雙引號中的字元, 而最後則放入 '\0')

而實際上, 也可以將 "Ted"  這個字串寫成:

   char my_name[] = "Ted";
   
編譯器屆時就會計算字元個數, 並且預留最後的 null 字元, 以便能將全部四個字元存入記憶體, 並傳回存放字元的陣列名稱, 這裡採用 my_name.

在某些程式中, 也可以寫成:

   char *my_name = "Ted";
   
這種方式, 與先前兩種方法有何不同? 答案是: 當然不同. 採用陣列來存放四個位元組是將資料放在靜態記憶體區塊, 每一個字元的最後都會放入 null 字元. 但是若採用指標的方式, 也是需要相同的四個位元組, 並加上 N 個位元組來存放 my_name 這個指標變數 (N 取決於系統, 但通常至少 2 位元組, 也可能是 4 個以上)

陣列的表示法中, my_name 是 &amp;myname[0] 的縮寫, 也就是第一個陣列元素的位址. 由於該陣列位址在執行期間是固定的, 因此不會改變 (不是變數). 而若採用指標的方式, my_name 則是變數. 因此採用指標是較好的方式, 當然也取決於隨後要如何應用這個變數.

若再進一步觀察採用不同方式宣告後, 在函數內將如何發生變化, 這與處在任何函式外的全域用法有很大的不同.

void my_function_A(char *ptr)
{
    char a[] = "ABCDE"
    .
    .
} 
void my_function_B(char *ptr)
{
    char *cp = "FGHIJ"
    .
    .
}

在 my_function_A 的案例中, 陣列 a[] 的值, 就是存放其中的資料. 陣列可視為以 ABCDE 值進行啟始化. 而在 my_function_B 的案例, cp 指標值才代表所存放的資料. 指標的啟始是指向 FGHIJ 字串. 在兩個函式內, 變數定義都是局部, 因此 ABCDE 字串存在指標變數所對應值的堆疊中, 而 FGHIJ 則可能存在任何地方. 在我的系統中, 是存在資料區段中.

此外, 採陣列變數自動起始, 就如同 my_function_A 中所示, 在舊的 K&amp;R C 中是無法使用的, 只能用在 ANSI C 的環境中. 這點在考量程式的可攜或向後相容時就顯得很重要.

只要討論有關指標與陣列的關係與差異時, 就需要更進一步討論多維度陣列. 例如下列陣列:

    char multi[5][10];
    
這代表什麼? 讓我們看看.

    char multi[5][10];
    
若將有底線的部分視為陣列的變數名稱. 先前的 char 代表資料型別, 而隨後的 [10] 則代表擁有時個字元的陣列. 但是 multi[5] 本身又是一個具有 5 個成員的陣列, 而每一個都帶有 10 個字元的陣列. 亦即, 總共有 5 個陣列各自帶有 10 個字元的陣列.

假設將這個二維的陣列填入資料, 在記憶體中, 可以表示成為五個各自分離的陣列:

    multi[0] = {'0','1','2','3','4','5','6','7','8','9'}
    multi[1] = {'a','b','c','d','e','f','g','h','i','j'}
    multi[2] = {'A','B','C','D','E','F','G','H','I','J'}
    multi[3] = {'9','8','7','6','5','4','3','2','1','0'}
    multi[4] = {'J','I','H','G','F','E','D','C','B','A'}
    
同時, 個別元素可以再表示為:

    multi[0][3] = '3'
    multi[1][7] = 'h'
    multi[4][0] = 'J'
    
由於陣列在記憶體中是連續的資料, 因此在真實的記憶區段中, 就成為:

    0123456789abcdefghijABCDEFGHIJ9876543210JIHGFEDCBA
    ^
    |_____ starting at the address &amp;multi[0][0]
    
請注意, 這裡並沒有將 multi[0] 寫成"0123456789". 因為若寫成這樣, 電腦會在最
後面補上字串結束用的 '\0', 因為雙引號中間的資料會被當作字串. 這樣, 每一個變數
就會帶有 11 個字元, 而非該有的 10 個字元.

前面的用意在昭示記憶體如何處理二維陣列. 亦即, 以一個二維字元陣列來存放資料, 而不是存成字串陣列.

接著, 編譯器知道陣列中需要多少行, 因此會用 mylti +1 作為 'a' 在第二列之首, 也就是每一列會加上 10, 結合所指的列數來取得正確的資料.

若處理的數值為整數與相同維數的陣列, 在我使用的機器上, 編譯器會加上 10*sizeof(int), 而得到 20. 因此第四列第九行的位址, 表示為指標, 將會是 &amp;multi[3][0] 或 *(multi + 3). 若希望取得第四列第二個數值, 就可以在此位址上加上 1, 得到下列結果
 
    *(*(multi + 3) + 1)
    
再繼續探究, 可知
 
    *(*(multi + row) + col)    與
    
    multi[row][col]            可得到相同的結果.
 
下列程式採用整數數列而非字元陣列來驗證這個結果:

------------------- program 6.1 ----------------------

&lt;pre class="brush: c"&gt;
#include &amp;lt;stdio.h&amp;gt;
#define ROWS 5
#define COLS 10
 
int multi[ROWS][COLS];
 
int main(void)
{
    int row, col;
    for (row = 0; row &amp;lt; ROWS; row++)
    {
        for (col = 0; col &amp;lt; COLS; col++)
        {
            multi[row][col] = row*col;
        }
    }
 
    for (row = 0; row &amp;lt; ROWS; row++)
    {
        for (col = 0; col &amp;lt; COLS; col++)
        {
            printf("\n%d  ",multi[row][col]);
            printf("%d ",*(*(multi + row) + col));
        }
    }
 
    return 0;
}
&lt;/pre&gt;

----------------- end of program 6.1 ---------------------   

&lt;a href="http://codepad.org/flzRLrx1"&gt;執行 Program 6.1&lt;/a&gt;

由於在陣列程式版本中進行了兩次交互參照取值, 二維陣列的名稱就如同指向陣列的指標. 至於三維陣列則用來處理陣列中陣列所指向的陣列, 因此也等同是指向陣列中陣列的指標. 但這裡的說明將陣列所佔記憶體區段以陣列來加以表示, 因此所處理的記憶體位址為常數而非變數. 亦即所討論的是固定的位址而非變數指標.
 
上述的取值函式允許從陣列中, 以無需變更位址數值的方式從陣列中取出任何數值 (例如, 以 multi[0][0]  的位址取 multi 符號所對應的值)

##CHAPTER 7: More on Multi-Dimensional Arrays

In the previous chapter we noted that given

    #define ROWS 5
    #define COLS 10

    int multi[ROWS][COLS];
    
we can access individual elements of the array multi using either:

    multi[row][col]
or
    *(*(multi + row) + col)
    
To understand more fully what is going on, let us replace

    *(multi + row)
    
with X as in:

    *(X + col)
    
Now, from this we see that X is like a pointer since the expression is de-referenced and we know that col is an integer. Here the arithmetic being used is of a special kind called "pointer arithmetic" is being used. That means that, since we are talking about an integer array, the address pointed to by (i.e. value of) X + col + 1 must be greater than the address X + col by and amount equal to sizeof(int).

Since we know the memory layout for 2 dimensional arrays, we can determine that in the expression multi + row as used above, multi + row + 1 must increase by value an amount equal to that needed to "point to" the next row, which in this case would be an amount equal to COLS * sizeof(int).

That says that if the expression *(*(multi + row) + col) is to be evaluated correctly at run time, the compiler must generate code which takes into consideration the value of COLS, i.e. the 2nd dimension. Because of the equivalence of the two forms of expression, this is true whether we are using the pointer expression as here or the array expression multi[row][col].

Thus, to evaluate either expression, a total of 5 values must be known:

The address of the first element of the array, which is returned by the expression multi, i.e., the name of the array.

The size of the type of the elements of the array, in this case sizeof(int).

The 2nd dimension of the array
The specific index value for the first dimension, row in this case.
The specific index value for the second dimension, col in this case.
Given all of that, consider the problem of designing a function to manipulate the element values of a previously declared array. For example, one which would set all the elements of the array multi to the value 1.

    void set_value(int m_array[][COLS])
    {
        int row, col;
        for (row = 0; row &lt; ROWS; row++)
        {
            for (col = 0; col &lt; COLS; col++)
            {
                m_array[row][col] = 1;
            }
        }
    }

And to call this function we would then use:

    set_value(multi);
    
Now, within the function we have used the values #defined by ROWS and COLS that set the limits on the for loops. But, these #defines are just constants as far as the compiler is concerned, i.e. there is nothing to connect them to the array size within the function. row and col are local variables, of course. The formal parameter definition permits the compiler to determine the characteristics associated with the pointer value that will be passed at run time. 

We really don’t need the first dimension and, as will be seen later, there are occasions where we would prefer not to define it within the parameter definition, out of habit or consistency, I have not used it here. But, the second dimension must be used as has been shown in the expression for the parameter. The reason is that we need this in the evaluation of m_array[row][col] as has been described. 

While the parameter defines the data type (int in this case) and the automatic variables for row and column are defined in the for loops, only one value can be passed using a single parameter. In this case, that is the value of multi as noted in the call statement, i.e. the address of the first element, often referred to as a pointer to the array. Thus, the only way we have of informing the compiler of the 2nd dimension is by explicitly including it in the parameter definition.

In fact, in general all dimensions of higher order than one are needed when dealing with multi-dimensional arrays. That is if we are talking about 3 dimensional arrays, the 2nd and 3rd dimension must be specified in the parameter definition.

##CHAPTER 8: Pointers to Arrays

Pointers, of course, can be "pointed at" any type of data object, including arrays. While that was evident when we discussed program 3.1, it is important to expand on how we do this when it comes to multi-dimensional arrays.
To review, in Chapter 2 we stated that given an array of integers we could point an integer pointer at that array using:

    int *ptr;
    ptr = &amp;my_array[0];       /* point our pointer at the first
                                 integer in our array */
                                 
As we stated there, the type of the pointer variable must match the type of the first element of the array.
In addition, we can use a pointer as a formal parameter of a function which is designed to manipulate an array. e.g.

Given:

    int array[3] = {1, 5, 7};
    void a_func(int *p);
    
Some programmers might prefer to write the function prototype as:

   void a_func(int p[]);
   
which would tend to inform others who might use this function that the function is designed to manipulate the elements of an array. Of course, in either case, what actually gets passed is the value of a pointer to the first element of the array, independent of which notation is used in the function prototype or definition. Note that if the array notation is used, there is no need to pass the actual dimension of the array since we are not passing the whole array, only the address to the first element.

We now turn to the problem of the 2 dimensional array. As stated in the last chapter, C interprets a 2 dimensional array as an array of one dimensional arrays. That being the case, the first element of a 2 dimensional array of integers is a one dimensional array of integers. And a pointer to a two dimensional array of integers must be a pointer to that data type. One way of accomplishing this is through the use of the keyword "typedef". typedef assigns a new name to a specified data type. For example:

    typedef unsigned char byte;
    
causes the name byte to mean type unsigned char. Hence

    byte b[10];     would be an array of unsigned characters.
    
Note that in the typedef declaration, the word byte has replaced that which would normally be the name of our unsigned char. That is, the rule for using typedef is that the new name for the data type is the name used in the definition of the data type. Thus in:

    typedef int Array[10];
    
Array becomes a data type for an array of 10 integers. i.e. Array my_arr; declares my_arr as an array of 10 integers and Array arr2d[5]; makes arr2d an array of 5 arrays of 10 integers each.

Also note that Array *p1d; makes p1d a pointer to an array of 10 integers. Because *p1d points to the same type as arr2d, assigning the address of the two dimensional array arr2d to p1d, the pointer to a one dimensional array of 10 integers is acceptable. i.e. p1d = &amp;arr2d[0]; or p1d = arr2d; are both correct.

Since the data type we use for our pointer is an array of 10 integers we would expect that incrementing p1d by 1 would change its value by 10*sizeof(int), which it does. That is, sizeof(*p1d) is 20. You can prove this to yourself by writing and running a simple short program.

Now, while using typedef makes things clearer for the reader and easier on the programmer, it is not really necessary. What we need is a way of declaring a pointer like p1d without the need of the typedef keyword. It turns out that this can be done and that

    int (*p1d)[10];
    
is the proper declaration, i.e. p1d here is a pointer to an array of 10 integers just as it was under the declaration using the Array type. Note that this is different from

    int *p1d[10];
    
which would make p1d the name of an array of 10 pointers to type int.

##CHAPTER 9: Pointers and Dynamic Allocation of Memory

There are times when it is convenient to allocate memory at run time using malloc(), calloc(), or other allocation functions. Using this approach permits postponing the decision on the size of the memory block need to store an array, for example, until run time. Or it permits using a section of memory for the storage of an array of integers at one point in time, and then when that memory is no longer needed it can be freed up for other uses, such as the storage of an array of structures.

When memory is allocated, the allocating function (such as malloc(), calloc(), etc.) returns a pointer. The type of this pointer depends on whether you are using an older K&amp;R compiler or the newer ANSI type compiler. With the older compiler the type of the returned pointer is char, with the ANSI compiler it is void.

If you are using an older compiler, and you want to allocate memory for an array of integers you will have to cast the char pointer returned to an integer pointer. For example, to allocate space for 10 integers we might write:

    int *iptr;
    iptr = (int *)malloc(10 * sizeof(int));
    if (iptr == NULL)

    { .. ERROR ROUTINE GOES HERE .. }
    
If you are using an ANSI compliant compiler, malloc() returns a void pointer and since a void pointer can be assigned to a pointer variable of any object type, the (int *) cast shown above is not needed. The array dimension can be determined at run time and is not needed at compile time. That is, the 10 above could be a variable read in from a data file or keyboard, or calculated based on some need, at run time.

Because of the equivalence between array and pointer notation, once iptr has been assigned as above, one can use the array notation. For example, one could write:

    int k;
    for (k = 0; k &lt; 10; k++)
       iptr[k] = 2;
       
to set the values of all elements to 2.

Even with a reasonably good understanding of pointers and arrays, one place the newcomer to C is likely to stumble at first is in the dynamic allocation of multi-dimensional arrays. In general, we would like to be able to access elements of such arrays using array notation, not pointer notation, wherever possible. Depending on the application we may or may not know both dimensions at compile time. This leads to a variety of ways to go about our task.

As we have seen, when dynamically allocating a one dimensional array its dimension can be determined at run time. Now, when using dynamic allocation of higher order arrays, we never need to know the first dimension at compile time. Whether we need to know the higher dimensions depends on how we go about writing the code. Here I will discuss various methods of dynamically allocating room for 2 dimensional arrays of integers.

First we will consider cases where the 2nd dimension is known at compile time.

METHOD 1:

One way of dealing with the problem is through the use of the typedef keyword. To allocate a 2 dimensional array of integers recall that the following two notations result in the same object code being generated:

    multi[row][col] = 1;     *(*(multi + row) + col) = 1;

It is also true that the following two notations generate the same code:

    multi[row]            *(multi + row)

Since the one on the right must evaluate to a pointer, the array notation on the left must also evaluate to a pointer. In fact multi[0] will return a pointer to the first integer in the first row, multi[1] a pointer to the first integer of the second row, etc. Actually, multi[n] evaluates to a pointer to that array of integers that make up the n-th row of our 2 dimensional array. 

That is, multi can be thought of as an array of arrays and multi[n] as a pointer to the n-th array of this array of arrays. Here the word pointer is being used to represent an address value. While such usage is common in the literature, when reading such statements one must be careful to distinguish between the constant address of an array and a variable pointer which is a data object in itself.
Consider now:


--------------- Program 9.1 --------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.1 from PTRTUT10.HTM  6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    #define COLS 5
    
    typedef int RowArray[COLS];
    RowArray *rptr;
    
    int main(void)
    {
        int nrows = 10;
        int row, col;
        rptr = malloc(nrows * COLS * sizeof(int));
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; COLS; col++)
            {
                rptr[row][col] = 17;
            }
        }
    
        return 0;
    }
&lt;/pre&gt;


------------- End of Prog. 9.1 --------------------------------

&lt;a href="http://codepad.org/0TrvKYko"&gt;執行 Program 9.1&lt;/a&gt;

Here I have assumed an ANSI compiler so a cast on the void pointer returned by malloc() is not required. If you are using an older K&amp;R compiler you will have to cast using:

    rptr = (RowArray *)malloc(.... etc.
    
Using this approach, rptr has all the characteristics of an array name name, (except that rptr is modifiable), and array notation may be used throughout the rest of the program. That also means that if you intend to write a function to modify the array contents, you must use COLS as a part of the formal parameter in that function, just as we did when discussing the passing of two dimensional arrays to a function.

METHOD 2:

In the METHOD 1 above, rptr turned out to be a pointer to type "one dimensional array of COLS integers". It turns out that there is syntax which can be used for this type without the need of typedef. If we write:

    int (*xptr)[COLS];

the variable xptr will have all the same characteristics as the variable rptr in METHOD 1 above, and we need not use the typedef keyword. Here xptr is a pointer to an array of integers and the size of that array is given by the #defined COLS. The parenthesis placement makes the pointer notation predominate, even though the array notation has higher precedence. i.e. had we written

    int *xptr[COLS];
    
we would have defined xptr as an array of pointers holding the number of pointers equal to that #defined by COLS. That is not the same thing at all. However, arrays of pointers have their use in the dynamic allocation of two dimensional arrays, as will be seen in the next 2 methods.
METHOD 3:

Consider the case where we do not know the number of elements in each row at compile time, i.e. both the number of rows and number of columns must be determined at run time. One way of doing this would be to create an array of pointers to type int and then allocate space for each row and point these pointers at each row. Consider:

-------------- Program 9.2 ------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.2 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    int main(void)
    {
        int nrows = 5;     /* Both nrows and ncols could be evaluated */
        int ncols = 10;    /* or read in at run time */
        int row;
        int **rowptr;
        rowptr = malloc(nrows * sizeof(int *));
        if (rowptr == NULL)
        {
            puts("\nFailure to allocate room for row pointers.\n");
            exit(0);
        }
    
        printf("\n\n\nIndex   Pointer(hex)   Pointer(dec)   Diff.(dec)");
    
        for (row = 0; row &amp;lt; nrows; row++)
        {
            rowptr[row] = malloc(ncols * sizeof(int));
            if (rowptr[row] == NULL)
            {
                printf("\nFailure to allocate for row[%d]\n",row);
                exit(0);
            }
            printf("\n%d         %p         %d", row, rowptr[row], rowptr[row]);
            if (row &amp;gt; 0)
            printf("              %d",(int)(rowptr[row] - rowptr[row-1]));
        }
    
        return 0;
    }
&lt;/pre&gt;

--------------- End 9.2 ------------------------------------

&lt;a href="http://codepad.org/fkwhY5YO"&gt;執行 Program 9.2&lt;/a&gt;

In the above code rowptr is a pointer to pointer to type int. In this case it points to the first element of an array of pointers to type int. Consider the number of calls to malloc():

    To get the array of pointers             1     call
    To get space for the rows                5     calls
                                          -----
                     Total                   6     calls
If you choose to use this approach note that while you can use the array notation to access individual elements of the array, e.g. rowptr[row][col] = 17;, it does not mean that the data in the "two dimensional array" is contiguous in memory.
You can, however, use the array notation just as if it were a continuous block of memory. For example, you can write:

    rowptr[row][col] = 176;
just as if rowptr were the name of a two dimensional array created at compile time. Of course row and col must be within the bounds of the array you have created, just as with an array created at compile time.
If you want to have a contiguous block of memory dedicated to the storage of the elements in the array you can do it as follows:

METHOD 4:

In this method we allocate a block of memory to hold the whole array first. We then create an array of pointers to point to each row. Thus even though the array of pointers is being used, the actual array in memory is contiguous. The code looks like this:
----------------- Program 9.3 -----------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.3 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    
    int main(void)
    {
        int **rptr;
        int *aptr;
        int *testptr;
        int k;
        int nrows = 5;     /* Both nrows and ncols could be evaluated */
        int ncols = 8;    /* or read in at run time */
        int row, col;
    
        /* we now allocate the memory for the array */
    
        aptr = malloc(nrows * ncols * sizeof(int));
        if (aptr == NULL)
        {
            puts("\nFailure to allocate room for the array");
            exit(0);
        }
    
        /* next we allocate room for the pointers to the rows */
    
        rptr = malloc(nrows * sizeof(int *));
        if (rptr == NULL)
        {
            puts("\nFailure to allocate room for pointers");
            exit(0);
        }
    
        /* and now we 'point' the pointers */
    
        for (k = 0; k &amp;lt; nrows; k++)
        {
            rptr[k] = aptr + (k * ncols);
        }
    
        /* Now we illustrate how the row pointers are incremented */
        printf("\n\nIllustrating how row pointers are incremented");
        printf("\n\nIndex   Pointer(hex)  Diff.(dec)");
    
        for (row = 0; row &amp;lt; nrows; row++)
        {
            printf("\n%d         %p", row, rptr[row]);
            if (row &amp;gt; 0)
            printf("              %d",(rptr[row] - rptr[row-1]));
        }
        printf("\n\nAnd now we print out the array\n");
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; ncols; col++)
            {
                rptr[row][col] = row + col;
                printf("%d ", rptr[row][col]);
            }
            putchar('\n');
        }
    
        puts("\n");
    
        /* and here we illustrate that we are, in fact, dealing with
           a 2 dimensional array in a contiguous block of memory. */
        printf("And now we demonstrate that they are contiguous in memory\n");
    
        testptr = aptr;
        for (row = 0; row &amp;lt; nrows; row++)
        {
            for (col = 0; col &amp;lt; ncols; col++)
            {
                printf("%d ", *(testptr++));
            }
            putchar('\n');
        }
    
        return 0;
    }
&lt;/pre&gt;

------------- End Program 9.3 -----------------

&lt;a href="http://codepad.org/TfAnw9wo"&gt;執行 Program 9.3&lt;/a&gt;

Consider again, the number of calls to malloc()
    To get room for the array itself      1      call
    To get room for the array of ptrs     1      call
                                        ----
                         Total            2      calls

Now, each call to malloc() creates additional space overhead since malloc() is generally implemented by the operating system forming a linked list which contains data concerning the size of the block. But, more importantly, with large arrays (several hundred rows) keeping track of what needs to be freed when the time comes can be more cumbersome. This, combined with the contiguousness of the data block that permits initialization to all zeroes using memset() would seem to make the second alternative the preferred one.

As a final example on multidimensional arrays we will illustrate the dynamic allocation of a three dimensional array. This example will illustrate one more thing to watch when doing this kind of allocation. For reasons cited above we will use the approach outlined in alternative two. Consider the following code:


------------------- Program 9.4 -------------------------------------

&lt;pre class="brush: c"&gt;
    /* Program 9.4 from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;stdlib.h&amp;gt;
    #include &amp;lt;stddef.h&amp;gt;
    
    int X_DIM=16;
    int Y_DIM=5;
    int Z_DIM=3;
    
    int main(void)
    {
        char *space;
        char ***Arr3D;
        int y, z;
        ptrdiff_t diff;
    
        /* first we set aside space for the array itself */
    
        space = malloc(X_DIM * Y_DIM * Z_DIM * sizeof(char));
    
        /* next we allocate space of an array of pointers, each
           to eventually point to the first element of a
           2 dimensional array of pointers to pointers */
    
        Arr3D = malloc(Z_DIM * sizeof(char **));
    
        /* and for each of these we assign a pointer to a newly
           allocated array of pointers to a row */
    
        for (z = 0; z &amp;lt; Z_DIM; z++)
        {
            Arr3D[z] = malloc(Y_DIM * sizeof(char *));
    
            /* and for each space in this array we put a pointer to
               the first element of each row in the array space
               originally allocated */
    
            for (y = 0; y &amp;lt; Y_DIM; y++)
            {
                Arr3D[z][y] = space + (z*(X_DIM * Y_DIM) + y*X_DIM);
            }
        }
    
        /* And, now we check each address in our 3D array to see if
           the indexing of the Arr3d pointer leads through in a
           continuous manner */
    
        for (z = 0; z &amp;lt; Z_DIM; z++)
        {
            printf("Location of array %d is %p\n", z, *Arr3D[z]);
            for ( y = 0; y &amp;lt; Y_DIM; y++)
            {
                printf("  Array %d and Row %d starts at %p", z, y, Arr3D[z][y]);
                diff = Arr3D[z][y] - space;
                printf("    diff = %d  ",diff);
                printf(" z = %d  y = %d\n", z, y);
            }
        }
        return 0;
    }
&lt;/pre&gt;

------------------- End of Prog. 9.4 ----------------------------

&lt;a href="http://codepad.org/hFghr4bI"&gt;執行 Program 9.4&lt;/a&gt;

If you have followed this tutorial up to this point you should have no problem deciphering the above on the basis of the comments alone. There are a couple of points that should be made however. Let's start with the line which reads:
    Arr3D[z][y] = space + (z*(X_DIM * Y_DIM) + y*X_DIM);
    
Note that here space is a character pointer, which is the same type as Arr3D[z][y]. It is important that when adding an integer, such as that obtained by evaluation of the expression (z*(X_DIM * Y_DIM) + y*X_DIM), to a pointer, the result is a new pointer value. And when assigning pointer values to pointer variables the data types of the value and variable must match.

##CHAPTER 10: Pointers to Functions

Up to this point we have been discussing pointers to data objects. C also permits the declaration of pointers to functions. Pointers to functions have a variety of uses and some of them will be discussed here.

Consider the following real problem. You want to write a function that is capable of sorting virtually any collection of data that can be stored in an array. This might be an array of strings, or integers, or floats, or even structures. The sorting algorithm can be the same for all. For example, it could be a simple bubble sort algorithm, or the more complex shell or quick sort algorithm. We'll use a simple bubble sort for demonstration purposes.

Sedgewick [1] has described the bubble sort using C code by setting up a function which when passed a pointer to the array would sort it. If we call that function bubble(), a sort program is described by bubble_1.c, which follows:


&lt;pre class="brush: c"&gt;
    /*-------------------- bubble_1.c --------------------*/
    
    /* Program bubble_1.c from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int a[], int N);
    
    int main(void)
    {
        int i;
        putchar('\n');
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int a[], int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (a[j-1] &amp;gt; a[j])
                {
                    t = a[j-1];
                    a[j-1] = a[j];
                    a[j] = t;
                }
            }
        }
    }
&lt;/pre&gt;


/*---------------------- end bubble_1.c -----------------------*/

&lt;a href="http://codepad.org/lnLshCvk"&gt;執行 bubble_1.c&lt;/a&gt;

The bubble sort is one of the simpler sorts. The algorithm scans the array from the second to the last element comparing each element with the one which precedes it. If the one that precedes it is larger than the current element, the two are swapped so the larger one is closer to the end of the array. 

On the first pass, this results in the largest element ending up at the end of the array. The array is now limited to all elements except the last and the process repeated. This puts the next largest element at a point preceding the largest element. The process is repeated for a number of times equal to the number of elements minus 1. The end result is a sorted array.

Here our function is designed to sort an array of integers. Thus in line 1 we are comparing integers and in lines 2 through 4 we are using temporary integer storage to store integers. What we want to do now is see if we can convert this code so we can use any data type, i.e. not be restricted to integers.

At the same time we don't want to have to analyze our algorithm and the code associated with it each time we use it. We start by removing the comparison from within the function bubble() so as to make it relatively easy to modify the comparison function without having to re-write portions related to the actual algorithm. This results in bubble_2.c:


&lt;pre class="brush: c"&gt;
    /*---------------------- bubble_2.c -------------------------*/
    
    /* Program bubble_2.c from PTRTUT10.HTM   6/13/97 */
    
       /* Separating the comparison function */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int a[], int N);
    int compare(int m, int n);
    
    int main(void)
    {
        int i;
        putchar('\n');
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int a[], int N)
    
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare(a[j-1], a[j]))
                {
                    t = a[j-1];
                    a[j-1] = a[j];
                    a[j] = t;
                }
            }
        }
    }
    
    int compare(int m, int n)
    {
        return (m &amp;gt; n);
    }
    /*--------------------- end of bubble_2.c -----------------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/nJZesDqg"&gt;執行 bubble_2.c&lt;/a&gt;

If our goal is to make our sort routine data type independent, one way of doing this is to use pointers to type void to point to the data instead of using the integer data type. As a start in that direction let's modify a few things in the above so that pointers can be used. To begin with, we'll stick with pointers to type integer.

&lt;pre class="brush: c"&gt;
    /*----------------------- bubble_3.c -------------------------*/
    
    /* Program bubble_3.c from PTRTUT10.HTM    6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int *p, int N);
    int compare(int *m, int *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int *p, int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare(&amp;amp;p[j-1], &amp;amp;p[j]))
                {
                    t = p[j-1];
                    p[j-1] = p[j];
                    p[j] = t;
                }
            }
        }
    }
    
    int compare(int *m, int *n)
    {
        return (*m &amp;gt; *n);
    }
    
    /*------------------ end of bubble3.c -------------------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/YGRii7il"&gt;執行 Program bubble3.c&lt;/a&gt;

Note the changes. We are now passing a pointer to an integer (or array of integers) to bubble(). And from within bubble we are passing pointers to the elements of the array that we want to compare to our comparison function. And, of course we are dereferencing these pointer in our compare() function in order to make the actual comparison. Our next step will be to convert the pointers in bubble() to pointers to type void so that that function will become more type insensitive. This is shown in bubble_4.

&lt;pre class="brush: c"&gt;
    /*------------------ bubble_4.c ----------------------------*/
    
    /* Program bubble_4.c from PTRTUT10,HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    
    int arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(int *p, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr,10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        return 0;
    }
    
    void bubble(int *p, int N)
    {
        int i, j, t;
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare((void *)&amp;amp;p[j-1], (void *)&amp;amp;p[j]))
                {
                    t = p[j-1];
                    p[j-1] = p[j];
                    p[j] = t;
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        int *m1, *n1;
        m1 = (int *)m;
        n1 = (int *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*------------------ end of bubble_4.c ---------------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/qLL8r2Dr"&gt;執行 bubble_4.c&lt;/a&gt;

Note that, in doing this, in compare() we had to introduce the casting of the void pointer types passed to the actual type being sorted. But, as we'll see later that's okay. And since what is being passed to bubble() is still a pointer to an array of integers, we had to cast these pointers to void pointers when we passed them as parameters in our call to compare().

We now address the problem of what we pass to bubble(). We want to make the first parameter of that function a void pointer also. But, that means that within bubble() we need to do something about the variable t, which is currently an integer. Also, where we use t = p[j-1]; the type of p[j-1] needs to be known in order to know how many bytes to copy to the variable t (or whatever we replace t with).

Currently, in bubble_4.c, knowledge within bubble() as to the type of the data being sorted (and hence the size of each individual element) is obtained from the fact that the first parameter is a pointer to type integer. If we are going to be able to use bubble() to sort any type of data, we need to make that pointer a pointer to type void. 

But, in doing so we are going to lose information concerning the size of individual elements within the array. So, in bubble_5.c we will add a separate parameter to handle this size information.

These changes, from bubble4.c to bubble5.c are, perhaps, a bit more extensive than those we have made in the past. So, compare the two modules carefully for differences.


&lt;pre class="brush: c"&gt;
    /*---------------------- bubble5.c ---------------------------*/
    
    /* Program bubble_5.c from PTRTUT10.HTM    6/13/97 */
    
    
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    long arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    
    void bubble(void *p, size_t width, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%d ", arr[i]);
        }
        bubble(arr, sizeof(long), 10);
        putchar('\n');
    
        for (i = 0; i &amp;lt; 10; i++)
        {
            printf("%ld ", arr[i]);
        }
    
        return 0;
    }
    
    void bubble(void *p, size_t width, int N)
    {
        int i, j;
        unsigned char buf[4];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                if (compare((void *)(bp + width*(j-1)),
                            (void *)(bp + j*width)))  /* 1 */
                {
    /*              t = p[j-1];   */
                    memcpy(buf, bp + width*(j-1), width);
    /*              p[j-1] = p[j];   */
                    memcpy(bp + width*(j-1), bp + j*width , width);
    /*              p[j] = t;   */
                    memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        long *m1, *n1;
        m1 = (long *)m;
        n1 = (long *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*--------------------- end of bubble5.c ---------------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/UoaGbBcR"&gt;執行 bubble5.c&lt;/a&gt;

Note that I have changed the data type of the array from int to long to illustrate the changes needed in the compare() function. Within bubble() I've done away with the variable t (which we would have had to change from type int to type long). I have added a buffer of size 4 unsigned characters, which is the size needed to hold a long (this will change again in future modifications to this code). The unsigned character pointer *bp is used to point to the base of the array to be sorted, i.e. to the first element of that array.

We also had to modify what we passed to compare(), and how we do the swapping of elements that the comparison indicates need swapping. Use of memcpy() and pointer notation instead of array notation work towards this reduction in type sensitivity.

Again, making a careful comparison of bubble5.c with bubble4.c can result in improved understanding of what is happening and why.

We move now to bubble6.c where we use the same function bubble() that we used in bubble5.c to sort strings instead of long integers. Of course we have to change the comparison function since the means by which strings are compared is different from that by which long integers are compared. And,in bubble6.c we have deleted the lines within bubble() that were commented out in bubble5.c.

&lt;pre class="brush: c"&gt;
    /*--------------------- bubble6.c ---------------------*/
    /* Program bubble_6.c from PTRTUT10.HTM   6/13/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    #define MAX_BUF 256
    
    char arr2[5][20] = {  "Mickey Mouse",
    
                          "Donald Duck",
    
                          "Minnie Mouse",
    
                          "Goofy",
    
                          "Ted Jensen" };
    
    void bubble(void *p, int width, int N);
    int compare(void *m, void *n);
    
    int main(void)
    {
        int i;
        putchar('\n');
    
        for (i = 0; i &amp;lt; 5; i++)
        {
            printf("%s\n", arr2[i]);
        }
        bubble(arr2, 20, 5);
        putchar('\n\n');
    
        for (i = 0; i &amp;lt; 5; i++)
        {
            printf("%s\n", arr2[i]);
        }
        return 0;
    }
    
    void bubble(void *p, int width, int N)
    {
        int i, j, k;
        unsigned char buf[MAX_BUF];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
              k = compare((void *)(bp + width*(j-1)), (void *)(bp + j*width));
              if (k &amp;gt; 0)
                {
                 memcpy(buf, bp + width*(j-1), width);
                 memcpy(bp + width*(j-1), bp + j*width , width);
                 memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare(void *m, void *n)
    {
        char *m1 = m;
        char *n1 = n;
        return (strcmp(m1,n1));
    }
    
    /*------------------- end of bubble6.c ---------------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/Z066Lj9s"&gt;執行 bubble6.c&lt;/a&gt;

But, the fact that bubble() was unchanged from that used in bubble5.c indicates that that function is capable of sorting a wide variety of data types. What is left to do is to pass to bubble() the name of the comparison function we want to use so that it can be truly universal. Just as the name of an array is the address of the first element of the array in the data segment, the name of a function decays into the address of that function in the code segment. Thus we need to use a pointer to a function. In this case the comparison function.

Pointers to functions must match the functions pointed to in the number and types of the parameters and the type of the return value. In our case, we declare our function pointer as:

   int (*fptr)(const void *p1, const void *p2);
   
Note that were we to write:

    int *fptr(const void *p1, const void *p2);
    
we would have a function prototype for a function which returned a pointer to type int. That is because in C the parenthesis () operator have a higher precedence than the pointer * operator. By putting the parenthesis around the string (*fptr) we indicate that we are declaring a function pointer.

We now modify our declaration of bubble() by adding, as its 4th parameter, a function pointer of the proper type. It's function prototype becomes:

    void bubble(void *p, int width, int N,
    
    int(*fptr)(const void *, const void *));
                
When we call the bubble(), we insert the name of the comparison function that we want to use. bubble7.c illustrate how this approach permits the use of the same bubble() function for sorting different types of data.

&lt;pre class="brush: c"&gt;
    /*------------------- bubble7.c ------------------*/
    
    /* Program bubble_7.c from PTRTUT10.HTM  6/10/97 */
    
    #include &amp;lt;stdio.h&amp;gt;
    #include &amp;lt;string.h&amp;gt;
    
    #define MAX_BUF 256
    
    long arr[10] = { 3,6,1,2,3,8,4,1,7,2};
    char arr2[5][20] = {  "Mickey Mouse",
                          "Donald Duck",
                          "Minnie Mouse",
                          "Goofy",
                          "Ted Jensen" };
    
    void bubble(void *p, int width, int N,
                int(*fptr)(const void *, const void *));
    int compare_string(const void *m, const void *n);
    int compare_long(const void *m, const void *n);
    
    int main(void)
    {
        int i;
        puts("\nBefore Sorting:\n");
    
        for (i = 0; i &amp;lt; 10; i++)               /* show the long ints */
        {
            printf("%ld ",arr[i]);
        }
        puts("\n");
    
        for (i = 0; i &amp;lt; 5; i++)                  /* show the strings */
        {
            printf("%s\n", arr2[i]);
        }
        bubble(arr, 4, 10, compare_long);          /* sort the longs */
        bubble(arr2, 20, 5, compare_string);     /* sort the strings */
        puts("\n\nAfter Sorting:\n");
    
        for (i = 0; i &amp;lt; 10; i++)             /* show the sorted longs */
        {
            printf("%d ",arr[i]);
        }
        puts("\n");
    
        for (i = 0; i &amp;lt; 5; i++)            /* show the sorted strings */
        {
            printf("%s\n", arr2[i]);
        }
        return 0;
    }
    
    void bubble(void *p, int width, int N,
                int(*fptr)(const void *, const void *))
    {
        int i, j, k;
        unsigned char buf[MAX_BUF];
        unsigned char *bp = p;
    
        for (i = N-1; i &amp;gt;= 0; i--)
        {
            for (j = 1; j &amp;lt;= i; j++)
            {
                k = fptr((void *)(bp + width*(j-1)), (void *)(bp + j*width));
                if (k &amp;gt; 0)
                {
                    memcpy(buf, bp + width*(j-1), width);
                    memcpy(bp + width*(j-1), bp + j*width , width);
                    memcpy(bp + j*width, buf, width);
                }
            }
        }
    }
    
    int compare_string(const void *m, const void *n)
    {
        char *m1 = (char *)m;
        char *n1 = (char *)n;
        return (strcmp(m1,n1));
    }
    
    int compare_long(const void *m, const void *n)
    {
        long *m1, *n1;
        m1 = (long *)m;
        n1 = (long *)n;
        return (*m1 &amp;gt; *n1);
    }
    
    /*----------------- end of bubble7.c -----------------*/
&lt;/pre&gt;

&lt;a href="http://codepad.org/Z1E8guTH"&gt;執行 bubble7.c&lt;/a&gt;

References for Chapter 10:

"Algorithms in C"
Robert Sedgewick
Addison-Wesley
ISBN 0-201-51425-7

##EPILOG

I have written the preceding material to provide an introduction to pointers for newcomers to C. In C, the more one understands about pointers the greater flexibility one has in the writing of code. The above expands on my first effort at this which was entitled ptr_help.txt and found in an early version of Bob Stout's collection of C code SNIPPETS. The content in this version has been updated from that in PTRTUTOT.ZIP included in SNIP9510.ZIP.

I am always ready to accept constructive criticism on this material, or review requests for the addition of other relevant material. Therefore, if you have questions, comments, criticisms, etc. concerning that which has been presented, I would greatly appreciate your contacting me via email me at tjensen@ix.netcom.com. 
</t>
<t tx="amd.20160911112932.1">@language md
Title: Python 學習手冊 (一)
Date: 2016-09-11 12:00
Category: Python
Tags: 計算機程式
Author: kmol
@others
這一系列的 Python 學習手冊是以機械設計工程師的觀點進行編寫, 由於機械設計流程牽涉許多協同工程設計與分析專案的執行, 因此導引標的便以可攜、高效與持續改進為依歸. 並且配合計算機程式、網際內容管理、電腦輔助設計實習與協同產品設計實習等課程中的案例配合說明.

&lt;!-- PELICAN_END_SUMMARY --&gt;

##Python 程式語言緣起

從 &lt;a href="https://en.wikipedia.org/wiki/History_of_Python"&gt;https://en.wikipedia.org/wiki/History_of_Python&lt;/a&gt; 的介紹, 可以得知 Python 程式語言是荷蘭人 Guido van Rossum 在 1989 年底發明的, 他曾說:

In December 1989, I was looking for a "hobby" programming project that would keep me occupied during the week around Christmas. My office ... would be closed, but I had a home computer, and not much else on my hands. I decided to write an interpreter for the new scripting language I had been thinking about lately: a descendant of ABC that would appeal to Unix/C hackers. I chose Python as a working title for the project, being in a slightly irreverent mood (and a big fan of Monty Python's Flying Circus).
 
也就是說, Python 是在一個聖誕節的假期, 用一台個人電腦創建的, 沿用了 &lt;a href="https://en.wikipedia.org/wiki/ABC_(programming_language)"&gt;ABC 程式語言&lt;/a&gt;的特性, 發明的動機希望吸引 Unix/C 用戶, 而程式語言的命名 Python, 則來自當時非常流行的英國 BBC 的電視劇 "&lt;a href="https://en.wikipedia.org/wiki/Monty_Python%27s_Flying_Circus"&gt;Monty Python's Flying Circus&lt;/a&gt;".

2005-2012 年間, Guido van Rossum 曾經任職於 Google, 2012 年底之後, 轉職到 Dropbox 公司.

2016 年 9 月 10 日, Guido van Rossum 利用 Github Pages 建立了&lt;a href="http://gvanrossum.github.io"&gt;個人網頁&lt;/a&gt;: &lt;a href="https://github.com/gvanrossum/gvanrossum.github.io"&gt;https://github.com/gvanrossum/gvanrossum.github.io&lt;/a&gt;.

##Python 程式語言特性

從 &lt;a href="http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.123.6836&amp;rep=rep1&amp;type=pdf"&gt;Computer Programming for everybody&lt;/a&gt; 提案中, 可以知道 Python 希望成為任何人都適合使用的程式語言, 並具備下列特性:

1. 簡單直覺, 功能可與其他語言匹敵
2. 開放原始碼, 任何人都能貢獻心力
3. 程式碼容易理解, 就如同普通英文
4. 適於各種專案, 且能快速完成開發

##Python 版本

2008 年底, Python 推出了 3.0 版, 與目前業界主流 Python 2.7 版並不相容, 初學者在學習時必須特別注意, 一般而言, 若沒有特別需要使用 Python 2 的程式庫, 未來各界仍將逐漸轉用 Python 3, 因此建議初學者可以直接使用 Python 3 之後的版本.

另外, Python 程式語言雖然可以在 Windows, Linux 與 OS X 等不同操作系統中使用, 但是在 Windows 環境中, 使用者若需要在較長時段中維護模組版本, 經常會因為系統程式庫的差異而發生問題, 因此建議直接使用 &lt;a href="https://www.continuum.io/downloads"&gt;Anaconda&lt;/a&gt; 套件, 並且儘可能採用 &lt;a href="https://github.com/conda/conda"&gt;conda&lt;/a&gt; 工具來維護與 Python 有關的模組.

##與領域專用語言的差異

所謂的&lt;a href="https://en.wikipedia.org/wiki/Domain-specific_language"&gt;領域專用程式語言&lt;/a&gt; (Domain-Specific Language, DSL), 就是指 Matlab, Octave, Mathematica 等專用於特定範圍的程式語言, 而非如 C/C++、Python、Java 這種適用範圍較廣的通用程式語言. 有時 C/C++、Python、Java 程式語言也稱為&lt;a href="https://en.wikipedia.org/wiki/High-level_programming_language"&gt;高階程式語言&lt;/a&gt;, 而 DSL 則被歸納為 &lt;a href="https://en.wikipedia.org/wiki/Very_high-level_programming_language"&gt;Very High-Level Programming Language&lt;/a&gt; 之一.

至於程式碼更接近電腦機器碼的則稱為 &lt;a href="https://en.wikipedia.org/wiki/Low-level_programming_language"&gt;Low-Level Programming Language&lt;/a&gt;, 組合語言 (Assembly Language) 就是一種低階程式語言.

##自行建立可攜 Python 套件

這裡以 Windows 環境下所需要的可攜 Python3 套件為例:

1. 從 &lt;a href="http://conda.pydata.org/miniconda.html"&gt;http://conda.pydata.org/miniconda.html&lt;/a&gt; 下載 Miniconda 安裝程式後, 在 Windows 7 或 10 64 位元環境中安裝.
2. 安裝結束後, 在 c:\ 目錄中建立 mini3 目錄, 然後進入 mini3 目錄, 建立 data 子目錄, 然後在 mini3 目錄中建立 start.bat 與 stop.bat 兩個檔案, start.bat 用來開啟可攜套件, stop.bat 則關閉套件.
3. 將第1步驟所安裝的 c:\Miniconda3 目錄, 完整複製到 c:\mini3\data 目錄中, 然後進入控制台, 解除安裝 Miniconda3 (名稱可能是 Python 3.5.2 (Miniconda3 4.4.1 64-bit)
4. 根據下列 start.bat 與 stop.bat 建立後, 就可以將 c:\mini3 複製到隨身碟或隨身硬碟中, 只要執行 start.bat 系統就會啟動, 執行 stop.bat 則終止額外的 y: 虛擬槽與 data 目錄的對應. 有關 mini3 可攜環境的使用, 將在隨後的導引中進行解說.

start.bat 內容:

&lt;pre class="brush: jscript"&gt;
@echo off
REM 設定 V 硬碟代號與 data 目錄對應
set Disk=y
subst %Disk%: "data"
REM 設定 leo 相關對應 Home 位置
set HomePath=%Disk%:\home
set HomeDrive=%Disk%:\home
set Home=%Disk%:\home
REM 將後續的指令執行, 以 %Disk% 為主
%Disk%:
REM 設定 PYTHONPATH
set PYTHONPATH=%Disk%:\Miniconda3
set path1=%PATH%;%Disk%:\Miniconda3;%Disk%:\Miniconda3\Scripts;
set path2=%Disk%:\apps\Git\bin;
path=%path1%;%path2%;
REM 啟動  SciTE
start /MIN %Disk%:\SciTE\SciTE.exe
REM 取 IPV4 IP address
for /f "delims=[] tokens=2" %%a in ('ping -4 %computername% -n 1 ^| findstr "["') do (set thisip=%%a)
REM echo %thisip%
REM 取 IPV6 IP address
REM for /f "delims=[] tokens=2" %%a in ('ping %computername% -n 1 ^| findstr "["') do (set thisip=%%a)
REM echo %thisip%
REM 啟動 Jupyter
cd notebook
start %Disk%:\Miniconda3\python.exe "%Disk%:\Miniconda3\Scripts\ipython3-script.py" notebook --ip=%thisip% --certfile=%Disk%:\home\ssl_cert.pem --profile=nbserver
cd ..
start /MIN cmd.exe
start /MIN cmd.exe
start /MIN cmd.exe
python.exe %Disk%:\apps\launchLeo.py
Exit
&lt;/pre&gt;

stop.bat 內容:

&lt;pre class="brush: jscript"&gt;

@echo off
set Disk=y
REM 關閉 SciTE
taskkill /IM SciTE.exe /F
REM 關閉 python
taskkill /IM python.exe /F
REM 清除資料
path=%PATH%;
REM del /Q /F  V:\tmp\*.*
REM 終止虛擬硬碟與目錄的對應
subst %Disk%: /D
REM 關閉 cmd 指令視窗
taskkill /IM cmd.exe /F
EXIT
&lt;/pre&gt;

</t>
</tnodes>
</leo_file>
