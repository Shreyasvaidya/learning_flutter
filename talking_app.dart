//Note that this will run on a locally installed dart sdk .The online dart pad cannot use 'dart.io' or other libraries which are not available
//for the web version of flutter
import 'dart:io';

void talker(){
        var vowel_counter = 0;
        var vowelstr='aeiou';
        String input = stdin.readLineSync()!;
        for (var i=0;i<input.length;i++){
                if (vowelstr.contains(input[i])){
                        vowel_counter+=1;
                }
        }
        print('You entered a string with ${(vowel_counter)} vowels and ${(input.length - vowel_counter)} consonants');
        return;
}
void main(){
        while(true){
                print("1. Talk \n");
                print("2. Quit \n");
                var entered = stdin.readLineSync();
                if(entered =='1'){
                        talker();
                }
                else if (entered == '2'){
                        break;
                }
        }
}
