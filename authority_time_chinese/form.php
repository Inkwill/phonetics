

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>地名規範資料庫</title>
	<link rel="stylesheet" type="text/css" href="../css/styles2.css"/>
	<script type="text/javascript" src="./jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function()	{
			$('.distric_menu').change(function()	{
				var this_item = $(this);
				var item_last_number = this_item.attr('id').substr(-1,1);
				var clear_item_number = item_last_number;
				while(1)	{	//change時，讓該item以下的menu回到預設狀態
					var next_item = $('#'+this_item.attr('id').substr(0,this_item.attr('id').length-1)+''+(parseInt(++clear_item_number,10)))
					if(!next_item.attr('id'))	
						break;
					next_item.html('<option value="empty">請選擇</option>');
						
				}
					
				if($.trim(this_item.attr('value')) !== 'empty')	{				
					$.ajax({
						type:"POST",
						url:'./get_geography.php',
						data:'type=distric&level='+item_last_number+'&fk='+this_item.attr('value'),
						success:function(msg)	{
							$('#'+this_item.attr('id').substr(0,this_item.attr('id').length-1)+''+(parseInt(item_last_number,10)+1)).html('<option value="empty">請選擇</option>'+msg);
						}
					});
				}
			});		
		});
				
		function getClass_id()	{					
			
			if($('#classID1').val() == '%')	{	$('#classID2').html('<option value=%>---請選擇---</option>');return;	}
			aurl = "./getAreaCode.php?area=classID&code="+$('#classID1').val();

			
			$.ajax({
				type:"GET",
				url:aurl,
				success:function(msg)	{
											
					$('#classID2').html(msg);
					
				}
			});
		}	
		
		function showClassID(obj)	{
			val = obj.options[obj.selectedIndex].value;
			if(val == '7')
				document.getElementById('class_id_set').style.display = '';
			else
				document.getElementById('class_id_set').style.display = 'none';
		}
	</script>
	<style type="text/css">
		ol li	{
			margin-bottom: 0.1em;
		}
	</style>	
</head>
<body style="padding:0;">
<div class="pagebody" style="">
<h2>地名規範檢索</h2>
<h4>Buddhist Studies Place Authority Databases<br>
(Beta Version)</h4>
<div id="fp_left" style="float:none;">

<div id="fp_credits" class="fpl_div">
<form name="fml" action="search.php" method="get" target="result">
	地名檢索字串(Name)<br>
	<input type="text" size="15" name="ml">
	<input type="submit" value="查詢">
	<br/>
	<input type="radio" name="isLikeSearch" value="1" checked />部份符合<input type="radio" name="isLikeSearch" value="0"/>完全符合
	<br/>
	<input id="isFurther" name="isFurther" value="0" type="checkbox" onClick="javascript:(($(this).get(0).checked) ? $('#furtherSearch').show() : $('#furtherSearch').hide());(($(this).get(0).checked) ? $(this).val(1) : $(this).val(0))">進階選項
	<div id="furtherSearch" style="display:none">
		<fieldset id="chinaSet" style=""><legend>行政區：</legend>
			<select size="1" name="country_admin_lv1" id="country_admin_lv1" class="distric_menu">
				<option value="empty">請選擇</option>
				<option value='A000001'>中國</option><option value='A000002'>阿富汗</option><option value='A000003'>不丹</option><option value='A000004'>汶萊</option><option value='A000005'>印尼</option><option value='A000006'>印度</option><option value='A000007'>伊朗</option><option value='A000008'>日本</option><option value='A000009'>柬埔寨</option><option value='A000010'>北韓</option><option value='A000011'>南韓</option><option value='A000012'>吉爾吉斯</option><option value='A000013'>寮國</option><option value='A000014'>馬來西亞</option><option value='A000015'>蒙古</option><option value='A000016'>緬甸</option><option value='A000017'>尼泊爾</option><option value='A000018'>巴基斯坦</option><option value='A000019'>菲律賓</option><option value='A000020'>俄羅斯</option><option value='A000021'>新加坡</option><option value='A000022'>塔吉克</option><option value='A000023'>泰國</option><option value='A000024'>土庫曼</option><option value='A000025'>烏茲別克</option><option value='A000026'>越南</option><option value='A000027'>哈薩克</option><option value='A000028'>臺灣</option><option value='A000029'>孟加拉</option><option value='A000030'>斯里蘭卡</option><option value='A000031'>美國</option><option value='A000032'>加拿大</option><option value='A000033'>英國</option><option value='A000034'>法國</option><option value='A000035'>比利時</option><option value='A000036'>克羅埃西亞</option><option value='A000037'>希臘</option><option value='A000038'>波蘭</option><option value='A000039'>捷克</option><option value='A000040'>荷蘭</option><option value='A000041'>義大利</option><option value='A000042'>德國</option>			</select>
			<br/>
			<select size="1" name="country_admin_lv2" id="country_admin_lv2" class="distric_menu">
				<option value="empty">請選擇</option>
			</select>
			<br/>
			<select size="1" name="country_admin_lv3" id="country_admin_lv3" class="distric_menu">
				<option value="empty">請選擇</option>
			</select>
			<br/>
			<select size="1" name="country_admin_lv4" id="country_admin_lv4" class="distric_menu">
				<option value="empty">請選擇</option>
			</select>		

		</fieldset>
		<br/>
		<fieldset><legend>分類：</legend>
			<select size="1" name="cnClass" id="cnClass" onchange="javascript:showClassID(this)">
				<option value="empty">請選擇</option>
				<option value='1'>地點</option><option value='2'>廣大之陸上自然地理區域</option><option value='3'>廣大之陸上人文地理區域</option><option value='4'>山峰、山脈</option><option value='5'>河流、湖泊、海洋等水系</option><option value='6'>寺廟、佛塔、佛教文化地點</option><option value='7'>中研院歷史地名</option><option value='8'>非人界</option>			</select>
		</fieldset>
		
		
		<fieldset id="class_id_set" style="display:none"><legend>class_id：</legend>
			<select size="1" name="classID1" id="classID1" onChange="javascript:getClass_id()">
				<option value=%>---請選擇---</option>
				<option value="01">清代行政區</option>
				<option value="02">明代行政區</option>
				<option value="03">元代行政區</option>
				<option value="04">金、南宋時期行政區</option>
				<option value="05">遼、北宋時期行政區</option>
				<option value="06">五代十國時期行政區</option>
				<option value="07">唐代時期行政區</option>
				<option value="08">隋代時期行政區</option>
				<option value="09">南北朝時期行政區</option>
				<option value="10">東晉十六國時期行政區</option>
				<option value="11">西晉時期行政區</option>
				<option value="12">三國時期行政區</option>
				<option value="13">東漢時期行政區</option>
				<option value="14">西漢時期行政區</option>
				<option value="15">秦代行政區</option>
			</select>
			<select size="1" name="classID2" id="classID2" >
				<option value="%">---請選擇---</option>
			</select>
		</fieldset>
	</div>
</form>
</div>
<div id="fp_credits" class="fpl_div">
	<form name="fcode" action="search.php" method="get" target="result">
		編號搜尋(Authority id)<br>
		<input type="text" size="15" name="code">
		<input type="submit" value="查詢">
	</form>
</div>


<br>
<font size="2">中國歷史行政地名(行政疆域)資料來源：「中華文明之時空基礎架構系統，第一版，中央研究院，台北，台灣，2002。」</font>
<br>
  <a target="_blank" href="../AuthorityAbrr.php">參考書目</a>
<br>
<a target="_top" href="../">回首頁</a>
</div>
</div>
</body>
</html>



