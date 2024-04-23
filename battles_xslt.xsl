<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="1.0">
<xsl:template match="/">
        <html>            
            <head>
                <link rel="stylesheet" href="styles.css"/>
            </head>
            <body>            
            <div id="maininfo">
                <h1 id="title">Каталог за исторически битки</h1>
                <h2 id="creators">Изготвен от Михаела Илиева и Павла Манова</h2>
                <p class="tbl">
                    <table border="1" id="unsorted-table">
                        <tr id="header">
                            <th onclick="sort(1)" class="clickable"> Битка</th>
                            <th> Тип на битката</th>
                            <th> Изображение</th>
                            <th> Конфилкт</th>
                            <th> Период</th>
                            <th> Причина за конфликт</th>
                            <th onclick="sort(2)" class="clickable"> Местоположение</th>
                            <th onclick="sort(3)" class="clickable"> Начало</th>
                            <th onclick="sort(4)" class="clickable"> Край</th>
                            <th> Победител</th>
                        </tr>
                        <xsl:for-each select="catalog/battle">
                            <tr>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:apply-templates select="image"/></td>
                                <td><xsl:value-of select="conflict/name"/></td>
                                <td><xsl:value-of select="conflict/period"/></td>
                                <td><xsl:value-of select="cause"/></td>
                                <td><xsl:value-of select="location"/></td>
                                <td><xsl:value-of select="start/date"/></td>
                                <td><xsl:value-of select="end/date"/></td>
                                <xsl:variable name="winner_force_id" select="result/winner/@force_id" />
                                <td class="winner" force_id="{$winner_force_id}"><xsl:value-of select="result/winner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <!-- sort by name -->
                    <table border="1" id="sorted-name-table">
                        <tr id="header">
                            <th onclick="sort(1)" class="clickable"> Битка</th>
                            <th> Тип на битката</th>
                            <th> Изображение</th>
                            <th> Конфилкт</th>
                            <th> Период</th>
                            <th> Причина за конфликт</th>
                            <th onclick="sort(2)" class="clickable"> Местоположение</th>
                            <th onclick="sort(3)" class="clickable"> Начало</th>
                            <th onclick="sort(4)" class="clickable"> Край</th>
                            <th> Победител</th>
                        </tr>
                        <xsl:for-each select="catalog/battle">
                            <xsl:sort select="@name"/>
                            <tr>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:apply-templates select="image"/></td>
                                <td><xsl:value-of select="conflict/name"/></td>
                                <td><xsl:value-of select="conflict/period"/></td>
                                <td><xsl:value-of select="cause"/></td>
                                <td><xsl:value-of select="location"/></td>
                                <td><xsl:value-of select="start/date"/></td>
                                <td><xsl:value-of select="end/date"/></td>
                                <xsl:variable name="winner_force_id" select="result/winner/@force_id" />
                                <td class="winner" force_id="{$winner_force_id}"><xsl:value-of select="result/winner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <!-- sort by location -->
                    <table border="1" id="sorted-location-table">
                        <tr id="header">
                            <th onclick="sort(1)" class="clickable"> Битка</th>
                            <th> Тип на битката</th>
                            <th> Изображение</th>
                            <th> Конфилкт</th>
                            <th> Период</th>
                            <th> Причина за конфликт</th>
                            <th onclick="sort(2)" class="clickable"> Местоположение</th>
                            <th onclick="sort(3)" class="clickable"> Начало</th>
                            <th onclick="sort(4)" class="clickable"> Край</th>
                            <th> Победител</th>
                        </tr>
                        <xsl:for-each select="catalog/battle">
                            <xsl:sort select="location" data-type="text" case-order="lower-first"/>
                            <tr>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:apply-templates select="image"/></td>
                                <td><xsl:value-of select="conflict/name"/></td>
                                <td><xsl:value-of select="conflict/period"/></td>
                                <td><xsl:value-of select="cause"/></td>
                                <td><xsl:value-of select="location"/></td>
                                <td><xsl:value-of select="start/date"/></td>
                                <td><xsl:value-of select="end/date"/></td>
                                <xsl:variable name="winner_force_id" select="result/winner/@force_id" />
                                <td class="winner" force_id="{$winner_force_id}"><xsl:value-of select="result/winner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <!-- sort by start date -->
                    <table border="1" id="sorted-start-date-table">
                        <tr id="header">
                            <th onclick="sort(1)" class="clickable"> Битка</th>
                            <th> Тип на битката</th>
                            <th> Изображение</th>
                            <th> Конфилкт</th>
                            <th> Период</th>
                            <th> Причина за конфликт</th>
                            <th onclick="sort(2)" class="clickable"> Местоположение</th>
                            <th onclick="sort(3)" class="clickable"> Начало</th>
                            <th onclick="sort(4)" class="clickable"> Край</th>
                            <th> Победител</th>
                        </tr>
                        <xsl:for-each select="catalog/battle">
                            <xsl:sort select="start/date"/>
                            <tr>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:apply-templates select="image"/></td>
                                <td><xsl:value-of select="conflict/name"/></td>
                                <td><xsl:value-of select="conflict/period"/></td>
                                <td><xsl:value-of select="cause"/></td>
                                <td><xsl:value-of select="location"/></td>
                                <td><xsl:value-of select="start/date"/></td>
                                <td><xsl:value-of select="end/date"/></td>
                                <xsl:variable name="winner_force_id" select="result/winner/@force_id" />
                                <td class="winner" force_id="{$winner_force_id}"><xsl:value-of select="result/winner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <!-- sort by end date -->
                    <table border="1" id="sorted-end-date-table">
                        <tr id="header">
                            <th onclick="sort(1)" class="clickable"> Битка</th>
                            <th> Тип на битката</th>
                            <th> Изображение</th>
                            <th> Конфилкт</th>
                            <th> Период</th>
                            <th> Причина за конфликт</th>
                            <th onclick="sort(2)" class="clickable"> Местоположение</th>
                            <th onclick="sort(3)" class="clickable"> Начало</th>
                            <th onclick="sort(4)" class="clickable"> Край</th>
                            <th> Победител</th>
                        </tr>
                        <xsl:for-each select="catalog/battle">
                            <xsl:sort select="end/date"/>
                            <tr>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@type"/></td>
                                <td><xsl:apply-templates select="image"/></td>
                                <td><xsl:value-of select="conflict/name"/></td>
                                <td><xsl:value-of select="conflict/period"/></td>
                                <td><xsl:value-of select="cause"/></td>
                                <td><xsl:value-of select="location"/></td>
                                <td><xsl:value-of select="start/date"/></td>
                                <td><xsl:value-of select="end/date"/></td>
                                <xsl:variable name="winner_force_id" select="result/winner/@force_id" />
                                <td class="winner" force_id="{$winner_force_id}"><xsl:value-of select="result/winner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </p>
                <div class="additionalinfo">
                <h1 id="start_information">Допълнителна информация за всяка битка</h1>
                <h5>/на някои места може да липсват компоненти поради липса на достатъчна информация за съответната битка/</h5>
                <ol>
                    <xsl:for-each select="catalog/battle">
                       <li> <h3><xsl:value-of select="@name"/></h3>
                            <h4>Събития през войната</h4>
                            <ul>
                                <xsl:for-each select="course_of_events/consecutive_event">
                                    <li><span class="dates"><xsl:value-of select="date"/></span> : <xsl:value-of select="event"/></li>
                                </xsl:for-each>
                            </ul>
                            <h4>Последствия от войната</h4>
                            <ul>
                                <xsl:for-each select="result/results_list/event">
                                <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                            <h4>Враждуващи страни</h4>
                            <ul>
                                <xsl:for-each select="fighting_force">
                                    <li class="force"><xsl:value-of select="name"/>:
                                        <p class="label">Лидери:</p>
                                        <ul>
                                        <xsl:for-each select="military_leaders_list/leader">
                                            <li class="subtext"><xsl:value-of select="."/></li>
                                        </xsl:for-each>
                                        </ul>
                                        <p class="label">Съюзници:</p>
                                        <ul>
                                        <xsl:for-each select="allies_list/ally">
                                            <li class="subtext"><xsl:value-of select="."/></li>
                                        </xsl:for-each>
                                        </ul>
                                        <p class="label">Войници:</p>
                                        <xsl:for-each select="power/soldiers">
                                            <p class="criteria">Общ брой: <xsl:value-of select="@count-all"/></p>
                                            
                                            <p class="criteria">Различни видове:</p>
                                            <ul>
                                                <xsl:for-each select="military_unit">
                                                    <li class="subtext"><xsl:value-of select="type"/> : <xsl:value-of select="count"/></li>
                                                </xsl:for-each>
                                            </ul>
                                        </xsl:for-each>
                                        <p class="label">Оръжия:</p>
                                        <ul>
                                            <xsl:for-each select="power/weapons/combat_unit">
                                                <li class="subtext"><xsl:value-of select="type"/>:<xsl:value-of select="count"/></li>
                                            </xsl:for-each>
                                        </ul>
                                        <p class="label">Флота:</p>
                                        <p class="comment">/не всички страни имат активна флота/</p>
                                        
                                        <ul>
                                            <xsl:for-each select="power/fleet/naval_military_item">
                                                <li class="subtext"><xsl:value-of select="type"/>:<xsl:value-of select="count"/></li>
                                            </xsl:for-each>
                                        </ul>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ol>
                </div>
            </div>
            <script type="text/javascript" src="script.js"></script>
            </body>        
        </html>      
    </xsl:template>
    <xsl:template match="image">
        <img src="{unparsed-entity-uri(@href)}"/>
    </xsl:template> 
</xsl:stylesheet>
