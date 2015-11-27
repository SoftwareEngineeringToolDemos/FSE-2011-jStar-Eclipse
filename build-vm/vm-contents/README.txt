jStar-Eclipse

/* This document showcases the steps to make the tool jStar-Eclipse work on this Ubuntu machine */

/* This VM contains-
   1. jStar and Corestar binaries in the jStar-Eclipse Executables folder on the Desktop.
   2. LICENSE.txt file on the Desktop containing the licenses for Eclipse Mars, jStar, Corestar and jStar-Eclipse.
   3. Installation.txt file on the Desktop containing the steps to build the tool from scratch.
   4. YouTube video link, which when clicked upon takes you straight to the YouTube video demonstrating the working of the tool.
*/

1. In the project context menu in Eclipse, expand the project 'com.jstar.eclipse.example.popl2008'.
2. Expand the folder 'src' and then expand the package 'basic'.
3. Right-click on 'Cell.java', and choose the option 'jStar Verification', and then click on 'Verify'.
4. The result appears in the Console tab at the bottom of the screen.
5. the result should give an error 'Cannot prove postcondition', along with the reason for the error.
6. In order to fix this error, in Cell.java, make line 19 as 
		val=x;
   instead of
		val=x+x;
7. Save the file, right-click on Cell.java in the project context menu, choose 'jStar Verification', and click on 'Verify'.
8. The error would not appear in the Console tab.
