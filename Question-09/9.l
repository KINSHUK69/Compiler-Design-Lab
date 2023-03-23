/*implementation of DFA accepting even no. of a and b over input (a,b) with dead state*/

%s A B C F
%%
<INITIAL>\n printf("ACCEPTED \n");BEGIN INITIAL;
%%

int main(){
    printf("Enter the Strings a and b :\n");
    yylex();
    return 0;
}
