<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Veg Menu</title>
    <link rel="Stylesheet" href="menustyle1.css"></link>
</head>
<body style="background-color:#61122f">
<div class="navbar">
    <img src="5528439.jpg"></img>
    <span>Hot and Spicy Resturant</span>
    <a href="index1.html">Home</a>
    <a href="Aboutus.html">About us</a>
    <a href="order.html">Book With us</a>
</div>
<div class="Menu">
 <h2 >Delicious Veg Dish!!</h2>
 <table>
 <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Half Price</th>
    <th>Full Price</th>
 </tr>
 <xsl:for-each select="Menucard/Items">

 <xsl:if test="id='Veg'">
<tr>
    <td><xsl:value-of select ="id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="halfprice"/></td>
    <td><xsl:value-of select="fullprice"/></td>
</tr>
</xsl:if>
</xsl:for-each>
 </table><br/><br/>
 <h2> Delicious Non Veg Dishes</h2>
 <table>
    <tr>
       <th>ID</th>
       <th>Name</th>
       <th>Half Price</th>
       <th>Full Price</th>
    </tr>
    <xsl:for-each select="Menucard/Items">
   
    <xsl:if test="id='Non Veg'">
   <tr>
       <td><xsl:value-of select ="id"/></td>
       <td><xsl:value-of select="name"/></td>
       <td><xsl:value-of select="halfprice"/></td>
       <td><xsl:value-of select="fullprice"/></td>
   </tr>
   </xsl:if>
   </xsl:for-each>
    </table>
 </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>