<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <title>Book Blogging Site</title>
            <style>
                    /* Add your CSS styles here */
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: #f9f9f9;
                    }
                    .post {
                        background-color: #fff;
                        border: 1px solid #ddd;
                        border-radius: 5px;
                        margin: 20px;
                        padding: 20px;
                    }
                    .post h2 {
                        color: #333;
                        font-size: 24px;
                        margin-top: 0;
                    }
                    .post p {
                        color: #666;
                        font-size: 16px;
                        margin-bottom: 10px;
                    }
                </style>
         </head>
         <body>
            <h1>Welcome to the Book Blogging Site</h1>
            <xsl:apply-templates select="book_blogging_site/post"/>
         </body>
      </html>
   </xsl:template>
   <xsl:template match="post">
      <div class="post">
         <h2>
            <xsl:value-of select="title"/>
         </h2>
         <p>
            <strong>Author:</strong>
            <xsl:value-of select="author"/>
         </p>
         <p>
            <strong>Timestamp:</strong>
            <xsl:value-of select="timestamp"/>
         </p>
         <p>
            <strong>Content:</strong>
            <xsl:value-of select="content"/>
         </p>
         <p>
            <strong>Rating:</strong>
            <xsl:value-of select="rating"/>
         </p>
         <p>
            <strong>Likes:</strong>
            <xsl:value-of select="likes"/>
         </p>
         <p>
            <strong>Comments:</strong>
            <xsl:value-of select="comments"/>
         </p>
         <p>
            <strong>Hashtags:</strong>
            <xsl:value-of select="hashtags"/>
         </p>
         <p>
            <strong>Mentions:</strong>
            <xsl:value-of select="mentions"/>
         </p>
         <p>
            <strong>Book Title:</strong>
            <xsl:value-of select="book/title"/>
         </p>
         <p>
            <strong>Genre:</strong>
            <xsl:value-of select="book/genre"/>
         </p>
         <p>
            <strong>Publication Year:</strong>
            <xsl:value-of select="book/publication_year"/>
         </p>
      </div>
   </xsl:template>
</xsl:stylesheet>