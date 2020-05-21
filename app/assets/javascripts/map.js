
// // ============マーカー配列を空、吹き出し配列を空、マーカーデータ配列に直接入力=============
// var marker = [];
// var infoWindow = [];
// var markerData = [
//     {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=エンジニアカフェ&dirflg=w" target="_blank">エンジニアカフェ</a><br><p>Engineer Cafe</p><br><img src="/images/demo10.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.593152,
//     lng: 130.401884
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=カフェベローチェ&dirflg=w" target="_blank">カフェベローチェ</a><br><p>CAFE VELOCE 1chome</p><br><img src="/images/demo20.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.592187,
//     lng: 130.399474
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=ブックアンドコー&dirflg=w" target="_blank">BOOK & CO.</a><br><p>BOOK & CO.</p><br><img src="/images/demo30.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.593852,
//     lng: 130.39835
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=タリーズ天神店&dirflg=w" target="_blank">タリーズ 天神店</a><br><p>TULLYS COFFEE　Tenjin</p><br><img src="/images/demo40.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.591618,
//     lng: 130.396871
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=タリーズ新天町店&dirflg=w" target="_blank">TULLYS COFFEE　Shintencho</a><br><p>Engineer Cafe</p><br><img src="/images/demo50.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.590074,
//     lng: 130.397071
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=スタバ天神VIORO店&dirflg=w" target="_blank">Starbucks Coffee VIORO</a><br><p>Engineer Cafe</p><br><img src="/images/demo60.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.589645 ,
//     lng: 130.398415
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=スタバメディアモール天神&dirflg=w" target="_blank">Starbucks Coffee MediaMallTenjin</a><br><p>Engineer Cafe</p><br><img src="/images/demo70.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.590907,
//     lng: 130.400564
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=コメダ天神南店&dirflg=w" target="_blank">コメダ天神南店</a><br><p>KOMEDA Coffe SouthTenjin</p><br><img src="/images/demo80.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.589295,
//     lng: 130.403634
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=スタバ天神地下街店&dirflg=w" target="_blank">スタバ天神地下街店</a><br><p>Starbucks Coffee Underground</p><br><img src="/images/demo90.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.588061,
//     lng: 130.401138
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=マクドナルド新天町店&dirflg=w" target="_blank">マクドナルド新天町店</a><br><p> McDonalds Shintencho</p><br><img src="/images/demo100.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.590196,
//     lng: 130.398294
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=VITO中洲ゲイツ店&dirflg=w" target="_blank">VITO中洲ゲイツ店</a><br><p>VITO Coffe NakasuGates</p><br><img src="/images/demo110.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.593775,
//     lng: 130.406223
//     }, {
//   name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=CaféMealMUJI&dirflg=w" target="_blank">Café&Meal MUJI</a><br><br><p>Café&Meal MUJI</p><br><img src="/images/demo120.jpg" width="150" height="100" class=map-img> ',
//     lat: 33.587337,
//     lng: 130.396749
//     },  {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=スタバ天神西通店&dirflg=w" target="_blank">スタバ天神西通店</a><br><p>Starbucks Coffee WestStreet</p><br><img src="/images/demo130.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.587888,
//     lng: 130.396641
//     }, {
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=スタートアップカフェ&dirflg=w" target="_blank">スタートアップカフェ</a><br><p>Startup Cafe</p><br><img src="/images/demo140.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.589162,
//     lng: 130.395307
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=タリーズコーヒー西鉄天神駅店&dirflg=w" target="_blank">タリーズコーヒー西鉄天神駅店</a><br><p>TULLYS COFFEE Tenjin.sta</p><br><img src="/images/demo150.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.589917,
//     lng: 130.398976
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=レックコーヒー天神店&dirflg=w" target="_blank">レックコーヒー天神店</a><br><p>Rec Coffe Tenjin</p><br><img src="/images/demo160.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.587336,
//     lng: 130.398705
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=グランドミラージュカフェ&dirflg=w" target="_blank">グランドミラージュカフェ</a><br><p>GRAND MIRAGE Cafe</p><br><img src="/images/demo170.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.586168,
//     lng: 130.398790
//     },{
//     name: '<a href="https://maps.google.com/maps?saddr=33.588689,130.399967&daddr=上島珈琲店天神地下街店&dirflg=w" target="_blank">上島珈琲店 天神地下街店</a><br><p>Ueshima Coffe TenjinUnderground</p><br><img src="/images/demo180.jpg" width="150" height="100" class=map-img>  ',
//     lat: 33.592261,
//     lng: 130.398746
//     }
// ];  
//  //==================マーカー配列記述終わり==============
//  //==================現在地取得とその情報での地図表示の記述===================
// function initMap() {
//                            // Geolocation APIに対応している
//   if (navigator.geolocation) {
//                             // 現在地を取得
//     navigator.geolocation.getCurrentPosition(
//                           // 取得成功した場合
//       function(position) {
//                           // 緯度・経度を変数に格納
//         var myLatLng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
//                           // マップオプションを変数に格納
//         var mymapOptions = {
//           zoom : 16,                 // 拡大倍率
//           center : { lat: 33.588689,lng: 130.399967 },     // myLatLng, // 緯度・経度　SSL化までは使わない
//           maxZoom:20,                // 最大ズームの設定
//           minZoom: 15,               // 最小ズームの設定
//           scaleControl:true,         // 距離スケール表示
//         };
//                                             // マップオブジェクト作成
//         var map = new google.maps.Map(
//           document.getElementById("map"),   // マップを表示する要素
//           mymapOptions                      // マップオプション
//         );
//     // ========== 以下が現在位置Circleのコード ==========
//     circleOptions = {
//       center :{ lat: 33.588689,lng: 130.399967 }, // myLatLng,  // 緯度・経度
//       clickable: true,          // クリックできるようにする
//       draggable: false,         // ドラッグできないようにする
//       zIndex:5,                 // 前面表示の度合い
//       radius: 200,              // 半径メートル
//       map: map,                 // 表示先の地図の種類
//       strokeColor: 'blue',       // 線の色
//       strokeOpacity: 0.2,       // 色の透過率
//       strokeWeight: 1,          // 線の太さ
//       fillColor: 'blue',        // 円の色
//       fillOpacity: 0.10         // 色の透過率
//       },
//       circle = new google.maps.Circle(circleOptions);  //上記の設定を変数circleに代入
//       //================ここからマーカ配列の表示コード==============
//         for (var i = 0; i < markerData.length; i++) {
//           markerLatLng = new google.maps.LatLng({lat: markerData[i]['lat'], lng: markerData[i]['lng']}); 
//           marker[i] = new google.maps.Marker({ 
//             position: markerLatLng, 
//             map: map,                 // 表示先の地図の種類
//             animation: google.maps.Animation.DROP,   // アイコンの動き DROP BOUNCE
//             clickable: true,          // クリックできるようにする
//             draggable: true,         // ドラッグできないようにする
//             zIndex:5,                 // 前面表示の度合い
//             });
//             infoWindow[i] = new google.maps.InfoWindow({ 
//               content: "<p style='width:auto;  text-decoration: none; font-size:10px; text-align:center;'>"
//                + markerData[i]['name'] + '</div>' 
//             });
//             markerEvent(i); 
//         }
//         function markerEvent(i) {
//           marker[i].addListener('click', function() { 
//           infoWindow[i].open(map, marker[i]); 
//           });
//         }
//   },
//       //=============ここまでが現在地取得成功した場合==========

//       // ============取得失敗した場合===============
//       function(error) {
//         // エラーメッセージを表示
//         switch(error.code) {
//           case 1: // PERMISSION_DENIED
//             alert("位置情報の利用が許可されていません");
//             break;
//           case 2: // POSITION_UNAVAILABLE
//             alert("現在位置が取得できませんでした");
//             break;
//           case 3: // TIMEOUT
//             alert("タイムアウトになりました");
//             break;
//           default:
//             alert("その他のエラー(エラーコード:"+error.code+")");
//             break;
//         }
//       }
//     );
//   // Geolocation APIに対応していない
//   } else {
//     alert("この端末では位置情報が取得できません");
//   };
// }
