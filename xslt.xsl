<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/css" href=""?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="/">

    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="style.css" />
      </head> 
      <body>
        <h2>My Products</h2>
        <table>

          <tr>
            <xsl:attribute name="class">
              <xsl:value-of select="/products/item[2]/id"/>
            </xsl:attribute>
            
            <th>Picture</th>
            <th>Name</th>
            <th>Price</th>
            <th>Hardware</th>
            <th>Software</th>
          </tr>
          <xsl:for-each select="/products/item">
            <tr>
              <td>
                <xsl:if test="@type = 'laptop'">
                  <xsl:attribute name="class">
                    <xsl:value-of select="/products/item[7]/id"/>
                  </xsl:attribute>
                </xsl:if>
                
                <xsl:if test="@type = 'desktop'">
                  <xsl:attribute name="class">
                   <xsl:value-of select="/products/item[8]/id"/>
                 </xsl:attribute>
               </xsl:if>

               <xsl:if test="@type = 'tablet'">
                <xsl:attribute name="class">
                  <xsl:value-of select="/products/item[9]/id"/>
                </xsl:attribute>
              </xsl:if>


              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="image/url"/>
                </xsl:attribute>   
              </img>
              <p>
                <xsl:if test="@type = 'laptop'">
                  <xsl:attribute name="class">
                    <xsl:value-of select="/products/item[7]/id"/>
                  </xsl:attribute>
                </xsl:if>
                
                <xsl:if test="@type = 'desktop'">
                  <xsl:attribute name="class">
                   <xsl:value-of select="/products/item[8]/id"/>
                 </xsl:attribute>
               </xsl:if>

               <xsl:if test="@type = 'tablet'">
                <xsl:attribute name="class">
                  <xsl:value-of select="/products/item[9]/id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="@type"/>
            </p>
          </td>
          <td>
            <xsl:if test="@type = 'laptop'">
              <xsl:attribute name="class">
                <xsl:value-of select="/products/item[7]/id"/>
              </xsl:attribute>
            </xsl:if>

            <xsl:if test="@type = 'desktop'">
              <xsl:attribute name="class">
               <xsl:value-of select="/products/item[8]/id"/>
             </xsl:attribute>
           </xsl:if>

           <xsl:if test="@type = 'tablet'">
            <xsl:attribute name="class">
              <xsl:value-of select="/products/item[9]/id"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="name"/>
        </td>
        <td>
          <xsl:if test="@type = 'laptop'">
            <xsl:attribute name="class">
              <xsl:value-of select="/products/item[7]/id"/>
            </xsl:attribute>
          </xsl:if>

          <xsl:if test="@type = 'desktop'">
            <xsl:attribute name="class">
             <xsl:value-of select="/products/item[8]/id"/>
           </xsl:attribute>
         </xsl:if>

         <xsl:if test="@type = 'tablet'">
          <xsl:attribute name="class">
            <xsl:value-of select="/products/item[9]/id"/>
          </xsl:attribute>
        </xsl:if>
        <span><xsl:value-of select="price"/></span>
      </td>
      <td>
        <xsl:if test="@type = 'laptop'">
          <xsl:attribute name="class">
            <xsl:value-of select="/products/item[7]/id"/>
          </xsl:attribute>
        </xsl:if>

        <xsl:if test="@type = 'desktop'">
          <xsl:attribute name="class">
           <xsl:value-of select="/products/item[8]/id"/>
         </xsl:attribute>
       </xsl:if>

       <xsl:if test="@type = 'tablet'">
        <xsl:attribute name="class">
          <xsl:value-of select="/products/item[9]/id"/>
        </xsl:attribute>
      </xsl:if>

      <strong>Processor:&#160;</strong><xsl:value-of select="hardware/processor/@producer"/>&#160;<xsl:value-of select="hardware/processor"/> <br/> 
      <strong>Screen:&#160;</strong> <xsl:value-of select="hardware/screen"/> &#160;&#160;<xsl:value-of select="hardware/screen/@matix"/>&#160;matrix<br/>
      <strong>Graphics:&#160;</strong> <xsl:value-of select="hardware/graphics/producer"/>&#160;<xsl:value-of select="hardware/graphics/model"/> <br/>
      <strong>Ram:&#160;</strong> <xsl:value-of select="hardware/ram"/><br />
      <strong>Hard drive:&#160;</strong><xsl:value-of select="hardware/disc"/>
    </td>
    <td>
      <xsl:if test="@type = 'laptop'">
        <xsl:attribute name="class">
          <xsl:value-of select="/products/item[7]/id"/>
        </xsl:attribute>
      </xsl:if>

      <xsl:if test="@type = 'desktop'">
        <xsl:attribute name="class">
         <xsl:value-of select="/products/item[8]/id"/>
       </xsl:attribute>
     </xsl:if>

     <xsl:if test="@type = 'tablet'">
      <xsl:attribute name="class">
        <xsl:value-of select="/products/item[9]/id"/>
      </xsl:attribute>
    </xsl:if>
    Operating system:<br /><strong>
    <xsl:value-of select="software/system/@producer"/>&#160;<xsl:value-of select="software/system"/></strong>
    <br />
    <!-- TEST EXAMPLE -->
    <xsl:if test="software/antivirus != ' '">
      <br />Antivirus: <xsl:value-of select="software/antivirus"/>
    </xsl:if>
  </td>

</tr>

</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
