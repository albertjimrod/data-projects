<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1664291584286" ID="ID_9938712" MODIFIED="1664615957179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Clean and Analyze
    </p>
    <p>
      Employee Exit Surveys
    </p>
  </body>
</html></richcontent>
<node CREATED="1664291589610" ID="ID_394487318" MODIFIED="1685521528268" POSITION="right" TEXT="introduccion">
<node CREATED="1664291598747" ID="ID_1542797303" MODIFIED="1664291788068">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - Que actividad vamos a tocar.
    </p>
    <p>
      - Origen de los datos.
    </p>
    <p>
      - Diccionario de datos
    </p>
    <p>
      - Preguntas a responder
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664291926350" ID="ID_1410215664" MODIFIED="1685521528272" POSITION="right" TEXT="Check &amp; load data">
<node CREATED="1664291938022" ID="ID_726539416" MODIFIED="1664292048953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      - Comprobar si el dataset es correcto:
    </p>
    <p>
      
    </p>
    <p>
      - file -i y file -k
    </p>
    <p>
      - chardet&#160;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664292050901" ID="ID_1598373343" MODIFIED="1685521528306" POSITION="right" TEXT="Data exploration">
<node CREATED="1664292061489" ID="ID_1121281231" MODIFIED="1664292432324">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      uso de .info (verbose=False/True)
    </p>
    <p>
      
    </p>
    <p>
      con false hago una peque&#241;a aproximaci&#243;n
    </p>
    <p>
      
    </p>
    <p>
      Para tener una idea r&#225;pida de como es/son los dataframes
    </p>
    <p>
      
    </p>
    <p>
      - peque&#241;o resumen
    </p>
    <p>
      
    </p>
    <p>
      hago de nuevo uso de .info con verbose = True asi lo veo todo
    </p>
    <p>
      
    </p>
    <p>
      - el resumen lo extiendo mas , hablando de la asimetria de los df, si hay o no Null data en los df, si las columnas deben o no ser&#160;&#160;corregidas o borradas en caso de que no proporcionen la informaci&#243;n necesaria.
    </p>
    <p>
      
    </p>
    <p>
      - miro si existen o no valores NaN (creo una funcion)
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664292219456" ID="ID_536978680" MODIFIED="1664292633905">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      la funcion me dice el numero de NaN por columna de cada df
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664292698567" ID="ID_478947761" MODIFIED="1664293142560">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Visualizo las primeras lineas de ambos dataframes para comprobar que no aparece nada raro.
    </p>
    <p>
      
    </p>
    <p>
      Vuelvo a hacer un resumen en el que veo que:
    </p>
    <p>
      
    </p>
    <p>
      - existen columnas iguales con nombre diferente.
    </p>
    <p>
      
    </p>
    <p>
      - que hay columnas que pueden ser eliminadas
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Sin embargo en una de las celdas aparece &quot;Not Stated&quot; que son valores NaN pero que no se reconocen como tal asi que es necesario volver a cargar el dataframe con el parametro correcto:
    </p>
    <p>
      
    </p>
    <p>
      <b>dete_survey_Not_Stated = pd.read_csv('csv/dete_survey.csv',na_values = 'Not Stated') </b>
    </p>
    <p>
      
    </p>
    <p>
      Vuelvo a cargar y hacer una inspeccion visual de las primeras filas para comprobar que se ha arreglado.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664293044770" ID="ID_1603568139" MODIFIED="1685521528313" POSITION="right" TEXT="Drop columns">
<node CREATED="1664293062793" ID="ID_1165486261" MODIFIED="1664293339926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Hago uso de la representacion grafica para:
    </p>
    <p>
      
    </p>
    <p>
      Ver la mejora en relacion a los datos NaN que no habiamos reconocido.
    </p>
    <p>
      
    </p>
    <p>
      Entender que vamos a eliminar de los datasets
    </p>
    <p>
      
    </p>
    <p>
      eliminar las columnas
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664293312969" ID="ID_86107997" MODIFIED="1685521528330">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Estandarizacion de los nombres de las columnas:
    </p>
  </body>
</html></richcontent>
<node CREATED="1664293905968" ID="ID_849580466" MODIFIED="1664293967540">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Estandarizacion de los nombres de las columnas:
    </p>
    <p>
      
    </p>
    <p>
      Uno de los objetivos es la combinaci&#243;n de ambos dataframes por lo que es importante el renombrado de las columnas restantes.
    </p>
    <p>
      
    </p>
    <p>
      se puede hacer asi:
    </p>
    <p>
      <b>dete_survey_updated.columns = dete_survey_updated.columns.str.lower().str.rstrip().str.replace(' ','_') </b>
    </p>
    <p>
      
    </p>
    <p>
      o se puede hacer con el uso de .rename:
    </p>
    <p>
      
    </p>
    <p>
      <b>tafe_survey_updated.rename({'Record ID': 'id', </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'LengthofServiceCurrent. Length of Service at current workplace (in years)': 'role_service'}, </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;axis=1, inplace=True) </b>
    </p>
    <p>
      <b>tafe_survey_updated.info()</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1664294004223" ID="ID_606828866" MODIFIED="1685521528354" POSITION="right" TEXT="Filtrado de Data">
<node CREATED="1664294014501" ID="ID_218437092" MODIFIED="1664294474816">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Observaci&#243;n&#160;de las bajas del trabajador en ambos dataframes
    </p>
    <p>
      
    </p>
    <p>
      haciendo un unique y un value counts en la serie donde nos interese de ambos dataframes.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="3">dete_survey_updated['separationtype'].value_counts(dropna=False)</font>
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="3">Age Retirement                          285
Resignation-Other reasons               150
Resignation-Other employer               91
Resignation-Move overseas/interstatevalue_counts     70
Voluntary Early Retirement (VER)         67
Ill Health Retirement                    61
Other                                    49
Contract Expired                         34
Termination                              15
Name: separationtype, dtype: int64</font>


<font size="3">tafe_survey_updated['separationtype'].value_counts(dropna=False)</font></pre>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="3">Resignation                 340
Contract Expired            127
Retrenchment/ Redundancy    104
Retirement                   82
Transfer                     25
Termination                  23
NaN                           1
Name: separationtype, dtype: int6</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1664294486151" ID="ID_523814921" MODIFIED="1685521528377">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Filtrado booleano:
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"></pre>
  </body>
</html></richcontent>
<node CREATED="1664294745550" ID="ID_1391736420" MODIFIED="1664294811100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      `dete`
    </p>
    <p>
      
    </p>
    <p>
      Para hacer la recopilaci&#243;n de aquellas bajas que estan unicamente relacionadas con el abandono por parte del trabajador y por lo tanto NO tener en cuenta que ya no esten en plantilla por retiro o porque el contrato expiro hay que hacer un filtrado booleano incorporando las situaciones que antes hemos visto con el .value_counts()
    </p>
    <p>
      
    </p>
    <p>
      <b>dete_resignations=dete_survey_updated[(dete_survey_updated['separationtype']=='Resignation-Other reasons') | </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; (dete_survey_updated['separationtype']=='Resignation-Other employer') | </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; (dete_survey_updated['separationtype']=='Resignation-Move overseas/interstate')].copy() </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>dete_resignations['separationtype'].value_counts(dropna=False)</b>
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="3">Resignation-Other reasons               150
Resignation-Other employer               91
Resignation-Move overseas/interstate     70
Name: separationtype, dtype: int</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1664294749144" ID="ID_1077236617" MODIFIED="1664294847629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      `tafe`
    </p>
    <p>
      tafe_resignations = tafe_survey_updated[tafe_survey_updated['separationtype']=='Resignation'].copy()
    </p>
    <p>
      tafe_resignations['separationtype'].value_counts(dropna=False)
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="3">Resignation    340
Name: separationtype, dtype: int64</font></pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1664299277361" ID="ID_1333714320" MODIFIED="1685521528386" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Verificando DATA inconsistencias
    </p>
  </body>
</html></richcontent>
<node CREATED="1664299293562" ID="ID_1433279931" MODIFIED="1685521528402">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Una de las inconsistencias en los datos puede estar en los a&#241;os.
    </p>
    <p>
      
    </p>
    <p>
      Let's verify any major **inconsistencies**.
    </p>
    <p>
      
    </p>
    <p>
      Focus on verifying **years** in the `cease_date `and `dete_start_date` columns make sense.
    </p>
    <p>
      
    </p>
    <p>
      - **`cease_date` is the last year of the person's employment**
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      - **`dete_start_date` is the person's first year of employment**
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      #### It wouldn't make sense to have years after the current date.
    </p>
  </body>
</html></richcontent>
<node CREATED="1664299488519" ID="ID_787786624" MODIFIED="1664350684433">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;verificacion de las fechas tanto de inicio como de final en un dataframe o en otro y del tipo de dato que tiene cada una de las series, es importante ya que no son diferentes.
    </p>
    <p>
      
    </p>
    <p>
      dete_resignations['dete_start_date'].value_counts(dropna=False).sort_index(ascending = False).head(10)
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">2013.0    10
2012.0    21
2011.0    24
2010.0    17
2009.0    13
2008.0    22
2007.0    21
2006.0    13
2005.0    15
2004.0    14
Name: dete_start_date, dtype: int64</font></pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      dete_resignations['dete_start_date'].unique()
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">array([2005., 1994., 2009., 1997., 1998., 2007.,   nan, 1982., 1980.,
       1973., 1995., 2003., 2006., 2011., 1977., 1974., 1976., 1993.,
       2008., 1986., 2002., 2004., 2010., 2012., 1989., 1999., 1996.,
       2000., 1991., 1992., 2001., 1988., 1990., 1985., 1963., 2013.,
&#160;&#160;&#160;&#160;&#160;&#160;&#160;1972., 1983., 1971., 1984., 1975., 1987.])

</font><font face="SansSerif" size="3">dete_resignations['dete_start_date'].isna().sum() # checking amount of NaN</font><font size="2">28
28</font></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664300865090" ID="ID_1309113876" MODIFIED="1685521528421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      comparacion entre columnas mapa de calor
    </p>
  </body>
</html></richcontent>
<node CREATED="1664301042841" ID="ID_569913983" MODIFIED="1664301178165">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Para comparar dos tres columnas de un mismo dataframe lo que debo hacer es convertir a la columna comun en indice de un nuevo df y visualizar el mapa de calor.
    </p>
    <p>
      
    </p>
    <p>
      <b>combined_cease_date = dete_resignations.set_index('position') </b>
    </p>
    <p>
      <b>combined_cease_date.index.unique().sort_values()</b>
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">Index([                               'Business Service Manager',
                                                       'Cleaner',
                                              'Guidance Officer',
                  'Head of Curriculum/Head of Special Education',
                                                         'Other',
                                          'Professional Officer',
                                                'Public Servant',
                                   'School Administrative Staff',
       'School Based Professional Staff (Therapist, nurse, etc)',
                                               'Schools Officer',
                                                       'Teacher',
                                                  'Teacher Aide',
                                             'Technical Officer',
                                                             nan],
      dtype='object', name='position')</font></pre>
    <p>
      
    </p>
    <p>
      <b>sns.heatmap(combined_cease_date[['dete_start_date','cease_date']].isna(), cbar=False) </b>
    </p>
    <p>
      <b>plt.show()</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664301205395" ID="ID_945089730" MODIFIED="1664301329811">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      En ese mapa de calor lo que se visualiza son filas con las profesiones y una linea blanca en el caso de que no tenga datos.
    </p>
    <p>
      
    </p>
    <p>
      tanto para la fecha de inicio como para la fecha de cese.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664301372159" ID="ID_241327055" MODIFIED="1664301519748">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      extraccion unicamente del a&#241;o en dete_resignations[cease_date]
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664350914771" ID="ID_1078755418" MODIFIED="1685521528429" TEXT="box plot">
<node CREATED="1664350929437" ID="ID_977345460" MODIFIED="1664351102537">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      para poder hacer uso del boxplot debo de tener los datos adecuados en la serie con la que quiero trabajar.
    </p>
    <p>
      
    </p>
    <p>
      - 1. Extract part of &quot;string&quot; corresponds to **year** in `dete_resignations['cease_date']`.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      - 2. Convert the year &quot;string&quot; into a **float** data type.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b># using vectorized method </b>
    </p>
    <p>
      <b>dete_resignations['cease_date'] = dete_resignations['cease_date'].str[-4:].astype('float').copy() # getting Years</b>
    </p>
    <p>
      
    </p>
    <p>
      dete_resignations['cease_date'].head(3)
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">3    2012.0
5    2012.0
8    2012.0
Name: cease_date, dtype: float6</font></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664351346719" ID="ID_1409917447" MODIFIED="1664351356088" TEXT="histograma en ambos datasets"/>
</node>
<node CREATED="1664351363407" ID="ID_785679649" MODIFIED="1685521528433" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Creando una nueva columna en dete_resignations
    </p>
  </body>
</html></richcontent>
<node CREATED="1664352438248" ID="ID_1713385562" MODIFIED="1664352471522">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Como el objetivo es unir ambos dataframes y el tiempo en servicio es algo que adem&#225;s de ser muy importante es necesario para nuestro estudio, se crea una columna en el dataframe con la diferencia entre los a&#241;os de servicio y los a&#241;os en los que la gente empez&#243; a trabajar.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>dete_resignations['institute_service'] = dete_resignations['cease_date'] - dete_resignations['dete_start_date']</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664352480841" ID="ID_262842868" MODIFIED="1685521528447" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      identificando la instatisfacci&#243;n en ambos datasets
    </p>
  </body>
</html></richcontent>
<node CREATED="1664352514421" ID="ID_1345144573" MODIFIED="1685521528453">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <code style="font-family: monospace; font-size: 14px; padding-top: 1px; padding-bottom: 1px; padding-right: 5px; padding-left: 5px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">tafe_survey_updated</font></code><font size="2">: </font>
    </p>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">Contributing Factors. Dissatisfaction </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">Contributing Factors. Job Dissatisfaction </font>
        </p>
      </li>
    </ul>
    <font color="rgb(0, 0, 0)" face="Helvetica Neue, Helvetica, Arial, sans-serif" size="2"><br align="start" size="2" style="letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)" />
    </font>

    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <code style="font-family: monospace; font-size: 14px; padding-top: 1px; padding-bottom: 1px; padding-right: 5px; padding-left: 5px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">dete_survey_updated</font></code><font size="2">: </font>
    </p>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">job_dissatisfaction </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">dissatisfaction_with_the_department </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">physical_work_environment </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">lack_of_recognition </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">lack_of_job_security </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">work_location </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">employment_conditions </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">work_life_balance </font>
        </p>
      </li>
      <li>
        <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left">
          <font size="2">workload </font>
        </p>
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1664352592542" ID="ID_996268846" MODIFIED="1664352606764">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tafe_survey_updated['Contributing Factors. Dissatisfaction'].unique()
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">array([nan, '-', 'Contributing Factors. Dissatisfaction '], dtype=object)</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1664352609770" ID="ID_398428192" MODIFIED="1664352645004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tafe_survey_updated['Contributing Factors. Job Dissatisfaction'].unique()
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">array([nan, '-', 'Job Dissatisfaction'], dtype=object</font></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664353851758" ID="ID_1938435341" MODIFIED="1685521528493">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Setting the bolean values on multiple columns with in `tafe_resignations_up` and `dete_resignations`
    </p>
  </body>
</html></richcontent>
<node CREATED="1664353886429" ID="ID_5900087" MODIFIED="1664353951161">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">One of the steps to identify the dissatisfaction of the teaching staff is to see what are the factors that contribute to that dissatisfaction and that we can see in the two columns that exist in&#160;</font><code style="font-family: monospace; font-size: 14px; padding-top: 1px; padding-bottom: 1px; padding-right: 5px; padding-left: 5px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">tafe_survey_updated</font></code><font size="2"><br size="2" /></font>
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">However when we look within the series and see what the content is, it strikes us that we have values,&#160;<strong style="font-weight: bold"><b>nan</b></strong>, we have what we are looking for and we have a sign&#160;<strong style="font-weight: bold"><b>-</b></strong>&#160;that we will make count as False, for this we will create the following function. </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">def updating_vals(element): </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;&quot;&quot;&quot; </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;This function only changes the sign - by False state everything else keeps it the same. </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160; </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;Keyword arguments: </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;element -- serie to examine </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;return: True if not &quot;-&quot; or NaN </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;return: False if equal &quot;-&quot; </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;&quot;&quot;&quot; </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;if pd.isnull(element):&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return np.nan </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;elif element=='-': </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return False </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;else: </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return True </font>
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </p>
    <p style="margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: left; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664354303218" ID="ID_1112183292" MODIFIED="1664354343296">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tafe_resignations
    </p>
    <p>
      
    </p>
    <p>
      columns = ['Contributing Factors. Dissatisfaction',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'Contributing Factors. Job Dissatisfaction']
    </p>
    <p>
      
    </p>
    <p>
      tafe_resignations['dissatisfied'] = tafe_resignations[columns].applymap(updating_vals).any(axis=1, skipna=False)
    </p>
    <p>
      tafe_resignations_up = tafe_resignations.copy()
    </p>
    <p>
      tafe_resignations_up['dissatisfied'].value_counts(dropna=False)
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">False    241
True      99
Name: dissatisfied, dtype: int6</font></pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1664354348514" ID="ID_1009085243" MODIFIED="1664354437457">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      dete_resignations
    </p>
    <p>
      
    </p>
    <p>
      columnas = ['job_dissatisfaction',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'dissatisfaction_with_the_department',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'physical_work_environment',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'lack_of_recognition',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'lack_of_job_security',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'work_location',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'employment_conditions',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'work_life_balance',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'workload']
    </p>
    <p>
      
    </p>
    <p>
      dete_resignations[columnas].dtypes
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">job_dissatisfaction                    bool
dissatisfaction_with_the_department    bool
physical_work_environment              bool
lack_of_recognition                    bool
lack_of_job_security                   bool
work_location                          bool
employment_conditions                  bool
work_life_balance                      bool
workload                               bool
dtype: object</font></pre>
    <p>
      
    </p>
    <p>
      dete_resignations['dissatisfied'] = dete_resignations[columnas].any(axis=1, skipna=False)
    </p>
    <p>
      dete_resignations_up = dete_resignations.copy()
    </p>
    <p>
      
    </p>
    <p>
      dete_resignations_up['dissatisfied'].value_counts(dropna=False) # only boolean
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">False    162
True     149
Name: dissatisfied, dtype: int64</font></pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1664354442659" ID="ID_1509519480" MODIFIED="1685521528519" POSITION="right" TEXT="combinando dataframes">
<node CREATED="1664354451134" ID="ID_429310451" MODIFIED="1685521528530">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Combining `dete_resignations_up` and `tafe_resignations_up`
    </p>
    <p>
      
    </p>
    <p>
      First, let's add a column to each dataframe that will allow us to easily distinguish between the two.
    </p>
    <p>
      
    </p>
    <p>
      - Add a column named institute to `dete_resignations_up`. Each row should contain the value **DETE**.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      - Add a column named institute to `tafe_resignations_up`. Each row should contain the value **TAFE**.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>dete_resignations_up['institute']='DETE' # help for differenciate df's. </b>
    </p>
    <p>
      <b>tafe_resignations_up['institute']='TAFE' </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>combined = pd.concat([dete_resignations_up,tafe_resignations_up], axis = 0) </b># axis = 0 means columns.
    </p>
  </body>
</html></richcontent>
<node CREATED="1664354563086" ID="ID_337677006" MODIFIED="1664355732057">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>combined_updated = combined.dropna(axis = 1, thresh = 500).copy() # combined_updated </b>
    </p>
    <p>
      
    </p>
    <p>
      thresh especifica el numero de NULL necesarios para eliminar la fila o la columna, esto dependera del valor que tenga el parametro axis, 0 por defecto o 1 para las columnas.
    </p>
    <p>
      
    </p>
    <p>
      We still have some columns left in the dataframe that we don't need to complete our analysis, so using the `DataFrame.dropna()` method to drop **any columns with less than 500** with non null values.
    </p>
    <p>
      
    </p>
    <p>
      Until now we had not done anything with the NaN values neither in one df nor in the other because it was at this point where with the use of dropna (axis, thresh) we were going to take care of the NaN values
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      As a result we see that the reduction of columns is significant, going from 53 to 10 and gives us an idea of the number of NaN values we had.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Joining two dataframes has a consequence...
    </p>
    <p>
      
    </p>
    <p>
      La necesidad de resetear el indice del nuevo dataframe
    </p>
    <p>
      
    </p>
    <p>
      <b>combined_updated.reset_index(drop=True, inplace=True) </b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664355758848" ID="ID_1233288954" MODIFIED="1664377742877">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 id="Cleaning-service_column" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">Ahora que ya tenemos el dataframe unido vamos a&#160;&#160;Cleaning&#160;</font><code style="font-family: monospace; font-size: 18.004px; padding-top: 2px; padding-bottom: 2px; padding-right: 4px; padding-left: 4px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">service_column </font></code>
    </h3>
    <h3 id="Cleaning-service_column" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </h3>
    <h3 id="Cleaning-service_column" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">Comprobamos que tipos de datos hay en esa serie. </font>
    </h3>
    <h3 id="Cleaning-service_column" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      
    </h3>
    <h3 id="Cleaning-service_column" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="2">La idea es tener valores numericos limpios por lo que hemos de eliminar todo lo que sean simbolos, texto y dem&#225;s. </font>
    </h3>
    <p>
      
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;[.^0][1-2^0]&quot;,&quot;&quot;,regex=True).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;Less than 1 year&quot;,&quot;0.5&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;More than 20 years&quot;,&quot;25&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;1-2&quot;,&quot;1.5&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;3-4&quot;,&quot;3.5&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;5-6&quot;,&quot;5.6&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = combined_updated[c_name].str.replace(&quot;7-10&quot;,&quot;8.5&quot;).copy()
    </p>
    <p>
      combined_updated[c_name] = pd.to_numeric(combined_updated[c_name], errors='coerce')
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      al final lo que hago es hacer un cast de tipo float
    </p>
    <p>
      combined_updated[c_name].astype(float)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664377767278" ID="ID_634216219" MODIFIED="1685521528556" POSITION="right" TEXT="mapeado">
<node CREATED="1664377900947" ID="ID_266966267" MODIFIED="1664378010990">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">para que quede mas claro, lo ideal es agrupar por tramos de edades a los profesores creando una funcion: </font>
    </p>
    <p>
      
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">def mapper(serie): </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&quot;&quot;&quot;Change a value in years for a experience category: New - Experienced - Established - Veteran </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160; </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;Keyword arguments: </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;serie -- series of the dataframe you want to convert </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;return -- depending on the values returns the categories. </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&quot;&quot;&quot; </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;if pd.isnull(serie): </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return np.nan </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;elif (serie &lt; 3): # Less than 3 years at a company </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 'New' </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160; </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;elif ((serie &gt;= 3) &amp; (serie &lt;= 6.0)): # 3-6 years at a company </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 'Experienced' </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160; </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;elif ((serie &gt;= 7.0) &amp; (serie &lt;= 10.0)): # 7-10 years at a company </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 'Established' </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160; </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;elif (serie &gt;= 11.0): #&#160;&#160;11 or more years at a company </font>
    </p>
    <p style="text-align: left">
      <font face="FreeMono" size="3">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 'Veteran'</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1664378024595" ID="ID_1978543002" MODIFIED="1685521528570" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Analisis inicial:
    </p>
  </body>
</html></richcontent>
<node CREATED="1664378038970" ID="ID_1462864935" MODIFIED="1664378559491">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      En este punto se vuelve a hacer un .info para ver cuales son los datos con los que contamos.
    </p>
    <p>
      
    </p>
    <p>
      Hacemos un resumen de que es lo que&#160;&#160;tenemos a nivel de datos y que es lo que estamos buscando.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664620899051" ID="ID_453954405" MODIFIED="1685521528587">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h2 id="The-initial-questions-were-as-follows:" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 21.994px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="3">The initial questions were as follows:</font><a class="anchor-link" href="http://localhost:8888/notebooks/Documentos/albertjimrod/data-projects/03_Data_Cleaning/Clean%20and%20Analyze%20Employee%20Exit%20Surveys/Guided%20Project%20Clean%20and%20Analyze%20Employee%20Exit%20Surveys.ipynb#The-initial-questions-were-as-follows:" style="color: rgb(41, 110, 170); text-decoration: none; padding-top: 0px; padding-bottom: 0px; padding-right: 20px; padding-left: 20px"><font color="rgb(41, 110, 170)">
</font></a>    </h2>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <font size="2">1.</font><code style="font-family: monospace; font-size: 14px; padding-top: 2px; padding-bottom: 2px; padding-right: 4px; padding-left: 4px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">Are employees who only worked for the institutes for a short period of time resigning due to some kind of dissatisfaction?</font></code>
      </li>
    </ul>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <font size="2">2.</font><code style="font-family: monospace; font-size: 14px; padding-top: 2px; padding-bottom: 2px; padding-right: 4px; padding-left: 4px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">What about employees who have been there longer?</font></code>
      </li>
    </ul>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <font size="2">3.</font><code style="font-family: monospace; font-size: 14px; padding-top: 2px; padding-bottom: 2px; padding-right: 4px; padding-left: 4px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">Are younger employees resigning due to some kind of dissatisfaction?</font></code>
      </li>
    </ul>
    <ul style="margin-top: 0; margin-bottom: 9px; list-style: disc; padding-left: 0; color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <li>
        <font size="2">4.</font><code style="font-family: monospace; font-size: 14px; padding-top: 2px; padding-bottom: 2px; padding-right: 4px; padding-left: 4px; color: rgb(0, 0, 0); background-color: rgb(239, 240, 241); white-space: pre-wrap; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px"><font face="monospace" size="2" color="rgb(0, 0, 0)">What about older employees?</font></code>
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1664620956231" ID="ID_905175907" MODIFIED="1664621094471">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      general idea of how dissatisfied are the different categories:
    </p>
    <p>
      
    </p>
    <p>
      mediante el uso de pd.pivot_tables(values=xxx, index=hhh, aggfunc=)
    </p>
    <table border="1" class="dataframe" style="border-spacing: 0px; background-color: rgb(255, 255, 255); float: left; margin-left: 0px; margin-right: 0px; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; color: rgb(0, 0, 0); font-size: 12px; margin-top: 0; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-transform: none; white-space: normal; word-spacing: 0px">
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          
        </th>
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">dissatisfied </font>
        </th>
      </tr>
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">service_cat </font>
        </th>
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          
        </th>
      </tr>
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; background-color: rgb(245, 245, 245); background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">Established </font>
        </th>
        <td style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
          <font size="2">51.612903 </font>
        </td>
      </tr>
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">Experienced </font>
        </th>
        <td style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
          <font size="2">34.302326 </font>
        </td>
      </tr>
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; background-color: rgb(245, 245, 245); background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">New </font>
        </th>
        <td style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
          <font size="2">29.533679 </font>
        </td>
      </tr>
      <tr style="text-align: right; vertical-align: middle; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">
        <th style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; font-weight: bold">
          <font size="2">Veteran </font>
        </th>
        <td style="padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; text-align: right; vertical-align: middle; line-height: normal; white-space: normal; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium">
          <font size="2">48.529412</font>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1664621108432" ID="ID_96185227" MODIFIED="1664621201096">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      una grafica tambien
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">comb_serv_diss = combined_updated.pivot_table(values='dissatisfied', index='service_cat', aggfunc=np.mean) </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">comb_serv_diss.plot(kind='barh',title=&quot;service category vs % dissatisfied&quot;,xlim=(0,1),legend=True) </font>
    </p>
    <p>
      <font size="2">plt.show() </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664621257836" ID="ID_440500412" MODIFIED="1664621367594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <h3 id="--1.-Employees-who-only-worked-for-the-institutes-for-a-short-period-of-time:" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 1; color: rgb(0, 0, 0); margin-top: 0; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18.004px; font-style: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <font size="3"><b>Employees who only worked for the institutes for a short period of time</b></font>
    </h3>
    <p>
      
    </p>
    <p>
      Are employees who only worked for the institutes for a short period of time resigning due to some kind of dissatisfaction?
    </p>
    <p>
      
    </p>
    <pre style="font-family: monospace; font-size: 14px; display: block; padding-top: 1px; padding-bottom: 1px; padding-right: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; white-space: pre-wrap; vertical-align: baseline; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px"><font size="2">Resignation                             63.157895
Resignation-Other reasons               15.789474
Resignation-Move overseas/interstate    12.280702
Resignation-Other employer               8.771930
Name: separationtype, dtype: float64</font></pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      The various reasons why new people leave the job are varied, however job resignations are very high being at the top of the list.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1664621279140" ID="ID_359838052" MODIFIED="1664621279140" TEXT=""/>
</node>
</node>
</node>
</map>
