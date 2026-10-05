import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});@override Widget build(BuildContext c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Home());}
class Home extends StatelessWidget{
final units=[
{"t":"الوحدة 1: النماذج 🧪","s":"النموذج تمثيل مبسط. مادي مجسم DNA، حاسوبي محاكاة طقس، فكري معادلات. سوداني: نموذج مشروع الجزيرة."},
{"t":"الوحدة 2: الساكنة ⚡","s":"الذرة متعادلة. تفقد الكترون موجبة، تكسب سالبة. دلك لمس حث. بالون+صوف: صوف موجب بالون سالب يلتصق."},
{"t":"الوحدة 3: التيار 🔋","s":"تيار امبير، جهد فولت، مقاومة اوم. ج=ت×م. توالي تيار ثابت، توازي جهد ثابت. 6ف/3اوم=2امبير."},
{"t":"الوحدة 4: الكيمياء 🧫","s":"اتحاد، تحلل، احلال، تعادل حمض+قاعدة=ملح+ماء. حفظ كتلة. 2H2+O2=2H2O."},
{"t":"الوحدة 5: الوراثة 🧬","s":"جنسي ولا جنسي، امشاج 23 كروموسوم. مندل سائد متنحي. Bb×Bb=25% bb. منجلية تحتاج فحص."},
{"t":"الوحدة 6: الدقيقة 🦠","s":"بكتيريا خلية، فيروس اصغر يحتاج عائل. نافع زبادي ونيتروجين. مضاد يقتل بكتيريا فقط."},
{"t":"الوحدة 7: الارض 🌍","s":"صخور: نارية جرانيت، رسوبية جيري، متحولة رخام. زلازل ريختر، براكين. موارد سودان: ذهب، اسمنت عطبرة."},
];
@override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:const Text("علوم تالتة موسوعة 🇸🇩 NEW"),backgroundColor:Colors.indigo,centerTitle:true),body:ListView.builder(itemCount:units.length,itemBuilder:(_,i)=>Card(child:ListTile(leading:CircleAvatar(child:Text("${i+1}")),title:Text(units[i]["t"]!),subtitle:Text(units[i]["s"]!.substring(0,45)),trailing:const Icon(Icons.arrow_forward_ios),onTap:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Details(u:units[i])))))));
}
class Details extends StatelessWidget{
final Map u;const Details({super.key,required this.u});
@override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text(u["t"])),body:Padding(padding:const EdgeInsets.all(16),child:ListView(children:[Text("📖 شرح:\n${u["s"]}",style:const TextStyle(fontSize:17,height:1.8)),const Divider(),Text("💡 توسع موسوعي + حل تقويم موجود في النسخة الكاملة",style:TextStyle(color:Colors.green.shade700)),ElevatedButton(onPressed:(){ScaffoldMessenger.of(c).showSnackBar(const SnackBar(content:Text("✅ أحسنت")));},child:const Text("أكملت الدرس"))])));
}
