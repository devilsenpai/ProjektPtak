<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
      <head>
        <title>Semestrální projekt - Patrik Ptáček</title>
        <style> body{font-family: Arial; font-size: 12px;} h2, table{padding: 3px; } h2{margin:8px;} h1{padding: 4px; background-color: yellow;} td td {padding: 2px 8px;}
        td td:first-child{border-right: 1px solid #ccc; background-color: green; font-weight: bold;}</style>
      </head>
      <body>
        <h1>Technické knihy</h1>
        <table>
          <xsl:for-each select="knihovna/zanry/technika">  

            <tr>
            <td colspan="3">
              <xsl:for-each select="kniha[ISBN != 0]"> <!-- Ošetření před špatném vkládání, protože každá kniha má ISBN !--> 
          <xsl:sort select="rok" order="descending"/> 
                <table style="background-color: Yellow; border: 1px solid #ddd;">
                  <tr>
                    <td>Jméno:</td>
                    <td><xsl:value-of select="nazev"/></td>
                  </tr>
                  <tr>
                    <td>Žánr:</td>
                    <td><xsl:value-of select="zanr"/></td>
                  </tr>
                  <tr>
                    <td>ISBN:</td>
                    <td><xsl:value-of select="ISBN"/></td>
                  </tr>
                  <tr>
                    <td>Rok:</td>
                    <td><xsl:value-of select="rok"/></td>
                  </tr>
                  <tr>
                    <td>Autor:</td>
                    <td><xsl:value-of select="autor"/></td> 
                  </tr> 
                  <tr>
                    <td>Stav:</td>
                    <xsl:choose>
         <xsl:when test="rok > 2016">
          <td>Nová</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Stará</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr> 
                  <tr>
                    <td>Vypujčeno:</td>
                    <xsl:choose>
         <xsl:when test="pujceni > 0">
          <td>Vypujčená</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Volná</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr>               
                </table>
              </xsl:for-each>
            </td>
            </tr>                  
          </xsl:for-each>         
        </table>
        <h1>Botanika</h1>
         <table>
          <xsl:for-each select="knihovna/zanry/Botanika">                      
            <tr>
            <td colspan="3">
              <xsl:for-each select="kniha[ISBN != 0]"> <!-- Ošetření před špatném vkládání, protože každá kniha má ISBN !-->
                <xsl:sort select="rok" order="descending"/> 
                <table style="background-color: Yellow; border: 1px solid #ddd;">
                  <tr>
                    <td>Jméno:</td>
                    <td><xsl:value-of select="nazev"/></td>
                  </tr>
                  <tr>
                    <td>Žánr:</td>
                    <td><xsl:value-of select="zanr"/></td>
                  </tr>
                  <tr>
                    <td>ISBN:</td>
                    <td><xsl:value-of select="ISBN"/></td>
                  </tr>
                  <tr>
                    <td>Rok:</td>
                    <td><xsl:value-of select="rok"/></td>
                  </tr>
                  <tr>
                    <td>Autor:</td>
                    <td><xsl:value-of select="autor"/></td> 
                  </tr> 
                    <tr>
                    <td>Stav:</td>
                    <xsl:choose>
         <xsl:when test="rok > 2016">
          <td>Nová</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Stará</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr> 
                  <tr>
                    <td>Vypujčeno:</td>
                    <xsl:choose>
         <xsl:when test="pujceni >= 0">
          <td>Vypujčená</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Volná</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr>                   
                </table>
              </xsl:for-each>
            </td>
            </tr>                  
          </xsl:for-each>         
        </table>
    <h1>Kuchařka</h1>
      <table>
          <xsl:for-each select="knihovna/zanry/Kucharka">                      
            <tr>
            <td colspan="3">
              <xsl:for-each select="kniha[ISBN != 0]"> <!-- Ošetření před špatném vkládání, protože každá kniha má ISBN !-->
              <xsl:sort select="rok" order="descending"/> 
                <table style="background-color: Yellow; border: 1px solid #ddd;">
                  <tr>
                    <td>Jméno:</td>
                    <td><xsl:value-of select="nazev"/></td>
                  </tr>
                  <tr>
                    <td>Žánr:</td>
                    <td><xsl:value-of select="zanr"/></td>
                  </tr>
                  <tr>
                    <td>ISBN:</td>
                    <td><xsl:value-of select="ISBN"/></td>
                  </tr>
                  <tr>
                    <td>Rok:</td>
                    <td><xsl:value-of select="rok"/></td>
                  </tr>
                  <tr>
                    <td>Autor:</td>
                    <td><xsl:value-of select="autor"/></td> 
                  </tr>  
                    <tr>
                    <td>Stav:</td>
                    <xsl:choose>
         <xsl:when test="rok > 2016">
          <td>Nová</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Stará</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr> 
                  <tr>
                    <td>Vypujčeno:</td>
                    <xsl:choose>
         <xsl:when test="pujceni >= 0">
          <td>Vypujčená</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Volná</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr>                  
                </table>
              </xsl:for-each>
            </td>
            </tr>                  
          </xsl:for-each>         
        </table>
        <h1>Motoristika</h1>
        <table>
          <xsl:for-each select="knihovna/zanry/motoristika">                     
            <tr>
            <td colspan="3">
              <xsl:for-each select="kniha[ISBN != 0]"> <!-- Ošetření před špatném vkládání, protože každá kniha má ISBN !-->
               <xsl:sort select="rok" order="descending"/> 
                <table style="background-color: Yellow; border: 1px solid #ddd;">
                  <tr>
                    <td>Jméno:</td>
                    <td><xsl:value-of select="nazev"/></td>
                  </tr>
                  <tr>
                    <td>Žánr:</td>
                    <td><xsl:value-of select="zanr"/></td>
                  </tr>
                  <tr>
                    <td>ISBN:</td>
                    <td><xsl:value-of select="ISBN"/></td>
                  </tr>
                  <tr>
                    <td>Rok:</td>
                    <td><xsl:value-of select="rok"/></td>
                  </tr>
                  <tr>
                    <td>Autor:</td>
                    <td><xsl:value-of select="autor"/></td> 
                  </tr>  
                    <tr>
                    <td>Stav:</td>
                    <xsl:choose>
         <xsl:when test="rok > 2016">
          <td>Nová</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Stará</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr> 
                  <tr>
                    <td>Vypujčeno:</td>
                    <xsl:choose>
         <xsl:when test="pujceni >= 0">
          <td>Vypujčená</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Volná</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr>                  
                </table>
              </xsl:for-each>
            </td>
            </tr>                  
          </xsl:for-each>         
        </table>
        <h1>Vzdělávací</h1>
        <table>
          <xsl:for-each select="knihovna/zanry/vzdelavaci">                      
            <tr>
            <td colspan="3">
              <xsl:for-each select="kniha[ISBN != 0]"> <!-- Ošetření před špatném vkládání, protože každá kniha má ISBN !-->
        <xsl:sort select="rok" order="descending"/> 
                <table style="background-color: Yellow; border: 1px solid #ddd;">
                  <tr>
                    <td>Jméno:</td>
                    <td><xsl:value-of select="nazev"/></td>
                  </tr>
                  <tr>
                    <td>Žánr:</td>
                    <td><xsl:value-of select="zanr"/></td>
                  </tr>
                  <tr>
                    <td>ISBN:</td>
                    <td><xsl:value-of select="ISBN"/></td>
                  </tr>
                  <tr>
                    <td>Rok:</td>
                    <td><xsl:value-of select="rok"/></td>
                  </tr>
                  <tr>
                    <td>Autor:</td>
                    <td><xsl:value-of select="autor"/></td> 
                  </tr>   
                    <tr>
                    <td>Stav:</td>
                    <xsl:choose>
         <xsl:when test="rok > 2016">
          <td>Nová</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Stará</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr> 
                  <tr>
                    <td>Vypujčeno:</td>
                    <xsl:choose>
         <xsl:when test="pujceni >= 0">
          <td>Vypujčená</td>
         </xsl:when>
         <xsl:otherwise>
       <td>Volná</td>
         </xsl:otherwise>
       </xsl:choose> 
                  </tr>                 
                </table>
              </xsl:for-each>
            </td>
            </tr>                  
          </xsl:for-each>         
        </table>
      </body>
    </html>
</xsl:template>
</xsl:stylesheet>