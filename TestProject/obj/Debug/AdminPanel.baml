   M S B A M L   `   `   `  ����  TestProject    TestProject.AdminPanel   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  
AdminPanel��5   	   $��571.154��6   $��754.615��6-    � AllowsTransparency .  � WindowStyle$
 None=�6W   .��5      � .+�5   
   � $
��Left=�6   $	��571��6*   $	��Top=�67   $	��132��6O   ���	#FF898989.+�5      �� -   5         ��Name$ btnPrintReport��5      $��Clock In Report��6-   $��Right=�6G   $��
0,535,20,0q�6c   $	��Top=�6w   $��94��6�   ���	#FF747474$��26��6�   6�   5      � 5	   
   $
��Left=�6   $	��571��6*   $��	132,0,0,0q�67   $	��Top=�6J   $	��623��6b   ���	#FF3C3C3C.+�5
      �� -   5         ��Name$ txtStudentFind��5
      $
��Left=�6.   $��23��6I   $��
279,39,0,0q�6U    �� TextWrapping$
 Wrap=�6i   $	��Top=�6}   $	��192��6�   �� 5      $��Enter student ID :��6   $
��Left=�61   $	��Top=�6L   $��
172,39,0,0q�6d   
�������6x   �� 5      -   5        $ btnFindStudent��5      $��Find Student��6-   $
��Left=�6D   $��
267,70,0,0q�6_   $	��Top=�6s   $��85��6�   
�������6�   �� 5      -   5         ��Name$ 
pnlStudent��5      $
��Left=�6,   $	��327��6G   $��
23,145,0,0q�6T   
�������$	��Top=�6w   $	��576��6�   {�.  ��5      �� 5       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      � 	 � Color$	 Black��6'   
 � Offset$
 0Q�65   � 5      $	 	#FF494949��6'   $
 1Q�69   5      5      �� 5      -   5         ��Name$ imgStudentPicture��5      $
��Left=�6/   $	��136��6J   $��
34,157,0,0q�6W   $	��Top=�6k   $	��132��6�   $��Images/noImage.png��6�   �� 5      -   5        $ btnAdminClose��5      $��X��6,   $��592,-1,-1,550q�68   $��Bottom=�6O   ���	#FF8787876�   �� 5      -   5        $ txtClassChange��5      $
��Left=�6.   $��23��6I   $��	48,42,0,0q�6U   $
 Wrap=�6h   $	��Top=�6|   $��43��6�    J� RenderTransformOrigin$ 1,0.468&�6�   �� 5      -	   5        $ btnClassChange��5      $��Class Change��6-   $��Right=�6D   $��
0,75,506,0q�6`   $	��Top=�6t   $��94��6�   ���	#FF747474$��26��6�   6�   �� 5      -
   5         ��Name$ lblCurrentClass��5      $��Current Class: 1��6-   $
��Left=�6H   $	��Top=�6c   $��	25,10,0,0q�6{   
�������6�   �� 5      $��Student's Full Name :��6   $
��Left=�64   $	��Top=�6O   $��180,182,0,0q�6g   $ 0.457,0.441&�6|   
�������6�   �� 5      -   5        $ lblStudentFullName��5      $�� ��60   $
��Left=�6;   $	��Top=�6V   $��307,184,0,0q�6n   $ 0.457,0.441&�6�   
�������$	��260��6�   �� 5      $��First Name:��6   $
��Left=�6*   $	��Top=�6E   $��180,221,0,0q�6]   $ 0.457,0.441&�6r   
�������6�   �� 5      -   5        $ txtFirstName��5      $
��Left=�6,   $��23��6G   $��255,223,0,0q�6S   $
 Wrap=�6h   $	��Top=�6|   $	��130��6�   {�.  6�   �� 5      $��
Last Name:��6   $
��Left=�6)   $	��Top=�6D   $��180,252,0,0q�6\   $ 0.457,0.441&�6q   
�������6�   �� 5      -   5        $ txtLastName��5      $
��Left=�6+   $��23��6F   $��255,254,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $	��130��6�   {�.  6�   �� 5       $��	Address: ��6   $
��Left=�6(   $	��Top=�6C   $��
47,321,0,0q�6[   $ 0.457,0.441&�6o   
�������6�   �� 5!      -   5        $ 
txtAddress��5!      $
��Left=�6*   $��23��6E   $��144,324,0,0q�6Q   $
 Wrap=�6f   $	��Top=�6z   $	��327��6�   {�.  6�   �� 5"      $��State:��6   $
��Left=�6%   $	��Top=�6@   $��
60,352,0,0q�6X   $ 0.457,0.441&�6l   
�������$��39��6�   �� 5#      $��Student ID: ��6   $
��Left=�6+   $	��Top=�6F   $��180,157,0,0q�6^   $ 0.457,0.441&�6s   
�������6�   �� 5$      -   5        $ lblStudentID��5$      $�� ��6*   $
��Left=�65   $	��Top=�6P   $��252,160,0,0q�6h   $ 0.457,0.441&�6}   
�������$	��325��6�   �� 5%      -   5         ��Name$ 	cboStates��5%      $
��Left=�6*   $	��Top=�6E   $	��120��6]   $��144,356,0,0q�6i   {�.  6~   �� 5&      -   5        $ btnEdit��5&      $
��Edit��6&   $
��Left=�65   $��155,431,0,0q�6P   $	��Top=�6e   $��75��6}   {�.  6�   �� 5'      -   5        $ 	btnCancel��5'      $��Cancel��6(   $
��Left=�69   $��436,431,0,0q�6T   $	��Top=�6i   $��75��6�   {�.  6�   �� 5(      $
��Zip:��6   $
��Left=�6#   $	��Top=�6>   $��
69,383,0,0q�6V   $ 0.457,0.441&�6j   
�������$��39��6�   �� 5)      -   5        $ txtZip��5)      $
��Left=�6&    �� 	MaxLength$ 5��6A   $��23��6O   $��144,386,0,0q�6[   $
 Wrap=�6p   $	��Top=�6�   $	��120��6�   {�.  6�   5*      �� 5+   
   -   5        $��Admin Panel��5+      $
��Left=�6&   $	��Top=�6A   $��	297,0,0,0q�6Y   $	��320��6l   
������� K� ZIndex$ 1��6�   ��5,      �� 5-      $ 0.5,1&�6&   $ 0.5,0&�67   .��5.      � $	 Black��6#   $
 0Q�61   � 5/      $	 	#FF7A7A7A��6#   $
 1Q�65   50      52      54      55      