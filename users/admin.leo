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
</v>
</v>
<v t="amd.20160401155844.1" a="E"><vh>blockdiag</vh>
<v t="amd.20160401155912.1"><vh>@button blockdiag</vh></v>
<v t="amd.20160401155853.1"><vh>blockdiag</vh></v>
<v t="amd.20160401220930.1"><vh>@button nwdiag</vh></v>
<v t="amd.20160401221004.1"><vh>nwdiag</vh></v>
</v>
<v t="amd.20160329172339.1"><vh>@path ./../content/pages</vh>
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
</tnodes>
</leo_file>
