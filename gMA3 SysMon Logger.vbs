' A u t h o r :   L u k e   C h i k k a l a  
  
 D i m   o b j F S O ,   o b j F o l d e r ,   g M A 3 L o g s L o c a t i o n  
  
 ' g M A 3   L o g s   d i r e c t o r y   l o c a t i o n  
 g M A 3 L o g s L o c a t i o n   =   " C : \ U s e r s \ C h i k k a l a \ D e s k t o p \ g M A 3 L o g s "  
  
 S e t   o b j F S O   =   C r e a t e O b j e c t ( " S c r i p t i n g . F i l e S y s t e m O b j e c t " )  
 I f   o b j F S O . F o l d e r E x i s t s ( g M A 3 L o g s L o c a t i o n )   T h e n  
 	 S e t   o b j F o l d e r   =   o b j F S O . G e t F o l d e r ( g M A 3 L o g s L o c a t i o n )  
 E l s e  
 	 S e t   o b j F o l d e r   =   o b j F S O . C r e a t e F o l d e r ( g M A 3 L o g s L o c a t i o n )  
 	 W S c r i p t . E c h o   " g M A 3   S y s M o n   L o g g e r   c r e a t e d   " " g M A 3 L o g s " "   d i r e c t o r y   o n   D e s k t o p . "  
 E n d   I f  
  
 s e t   o S h e l l   =   C r e a t e O b j e c t   ( " W S c r i p t . S h e l l " )  
 W S c r i p t . S l e e p   1 0 0 0  
  
 v e r s i o n   =   I n p u t B o x ( " E n t e r   f i r s t   3   d i g i t s   o f   g M A 3   S o f t w a r e   V e r s i o n " )  
 I P A d d r e s s   =   I n p u t B o x ( " E n t e r   S t a t i o n   I P " )  
  
 T o d a y   =   R e p l a c e ( d a t e ( ) , " / " ,   " _ " )  
 H o u r s   =   H o u r ( t i m e )  
 M i n u t e s   =   M i n u t e ( t i m e )  
 S e c o n d s   =   S e c o n d ( t i m e )  
 T i m e N o w   =   H o u r s   &   " _ "   &   M i n u t e s   &   " _ "   &   S e c o n d s  
 T i m e S t a m p   =   T o d a y   &   " _ "   &   T i m e N o w  
  
 I f   o b j F S O . F o l d e r E x i s t s ( g M A 3 L o g s L o c a t i o n )   T h e n  
 	 L C   =   "   s y s m o n   "   &   I P A d d r e s s   &   "   >   C : \ U s e r s \ C h i k k a l a \ D e s k t o p \ g M A 3 L o g s \ S y s M o n _ "   &   T i m e S t a m p   &   " . t x t   "  
 	 o S h e l l . r u n   " c m d . e x e   @ c m d   / k   " " C : \ P r o g r a m   F i l e s \ M A L i g h t i n g T e c h n o l o g y \ g m a 3 _ "   &   v e r s i o n   &   " \ b i n \ a p p _ t e r m i n a l . e x e " " "   &   L C   &   " "  
 E n d   I f 