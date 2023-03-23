/*implementation of DFA accepting even no. of a and b over input (a,b) with dead state*/

%s A B C F
%%
<INITIAL>\n printf("ACCEPTED \n");BEGIN INITIAL;
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN B;
<A>a BEGIN INITIAL;
<A>a BEGIN C;
<A>\n BEGIN INITIAL;printf("NOT ACCEPTED");
<B>a BEGIN C;
<B>a BEGIN INITIAL;
<B>\n BEGIN INITIAL;printf("NOT ACCEPTED");
<C>a BEGIN B;
<C>a BEGIN A;
<C>\n BEGIN INITIAL;printf("NOT ACCEPTED");
<A>[^ab\n] BEGIN F;
<B>[^ab\n] BEGIN F;
<C>[^ab\n] BEGIN F;
<INITIAL>[^ab\n] BEGIN F;
<F>[^\n] BEGIN F;
<A>[\n] BEGIN F;printf("INVALID INPUT\n");
.;
%%

int main(){
    printf("Enter the Strings a and b :\n");
    yylex();
    return 0;
}
