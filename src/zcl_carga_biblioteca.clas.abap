CLASS zcl_carga_biblioteca DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_carga_biblioteca IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_categ TYPE TABLE OF ztb_acc_categ,
          lt_catego    TYPE TABLE OF ztb_catego,
          lt_clientes  TYPE TABLE OF ztb_clientes,
          lt_clnts_lib TYPE TABLE OF ztb_clnts_lib,
          lt_libros    TYPE TABLE OF ztb_libros.

******** ZTB_ACC_CATEG ********
    "fill internal table
    lt_acc_categ = VALUE #(
    ( tipo_acceso ='1' bi_categ ='A' )
    ( tipo_acceso ='1' bi_categ ='B' )
    ( tipo_acceso ='2' bi_categ ='C' )
    ( tipo_acceso ='2' bi_categ ='D' )
    ( tipo_acceso ='2' bi_categ ='E' )
    ( tipo_acceso ='3' bi_categ ='F' )
    ( tipo_acceso ='3' bi_categ ='G' )
    ( tipo_acceso ='4' bi_categ ='H' )  ).

    "Delete possible entries; insert new entries
    DELETE FROM ztb_acc_categ.

    INSERT ztb_acc_categ FROM TABLE @lt_acc_categ.

******** ZTB_CATEGO ********
    "fill internal table
    lt_catego = VALUE #(
    ( bi_categ ='A' descripcion ='Filosofía, psicología')
    ( bi_categ ='B' descripcion ='Religión, mitología')
    ( bi_categ ='C' descripcion ='Ciencias sociales (derecho, política, economía)')
    ( bi_categ ='D' descripcion ='Ciencias naturales (matemáticas, astronomía, física)')
    ( bi_categ ='E' descripcion ='Ciencias aplicadas (tecnología, informática)')
    ( bi_categ ='F' descripcion ='Arte, música, deporte')
    ( bi_categ ='G' descripcion ='Lengua, poesía, teatro')
    ( bi_categ ='H' descripcion ='Geografía, historia') ).

    "Delete possible entries; insert new entries
    DELETE FROM ztb_catego.

    INSERT ztb_catego FROM TABLE @lt_catego.

******** ZTB_CATEGO ********
    "fill internal table
    lt_clientes = VALUE #(
    ( id_cliente = '005638984K'  nombre = 'Andrew' apellidos = 'Roberts' email = 'STEPHANIE.ROBERTS@EMAIL.COM' tipo_acceso = '1')
    ( id_cliente = '049320909Q'  nombre = 'Natalie' apellidos = 'Clark' email = 'PETER.CLARK@EMAIL.COM' tipo_acceso = '2')
    ( id_cliente = '049573865T'  nombre = 'Faith' apellidos = 'Black' email = 'DAN.BLACK@EMAIL.COM' tipo_acceso = '1')
    ( id_cliente = '203947278B'  nombre = 'Carolyn' apellidos = 'Wright' email = 'ADRIAN.WRIGHT@EMAIL.COM' tipo_acceso = '3')
    ( id_cliente = '234234231T'  nombre = 'Penelope' apellidos = 'King' email = 'CAROLINE.KING@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '239482309W'  nombre = 'Julian' apellidos = 'Underwood' email = 'DAN.UNDERWOOD@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '276594867J'  nombre = 'Olivia' apellidos = 'Allan' email = 'OWEN.ALLAN@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '283748858A'  nombre = 'Eric'  apellidos = 'Knox' email = 'LILY.KNOX@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '324726345S'  nombre = 'Vanessa' apellidos = 'Baker' email = 'SUE.BAKER@EMAIL.COM' tipo_acceso = '4')
    ( id_cliente = '340958439D'  nombre = 'Michael' apellidos = 'Short' email = 'JASON.SHORT@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '345093450E'  nombre = 'Sue'   apellidos = 'Sanderson' email = 'JOAN.SANDERSON@EMAIL.COM' tipo_acceso = '3')
    ( id_cliente = '345838534R'  nombre = 'Lily'  apellidos = 'Langdon' email = 'ANDREW.LANGDON@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '348947597P'  nombre = 'Lillian' apellidos = 'Davies' email = 'JULIAN.DAVIES@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '378458844M'  nombre = 'Joseph' apellidos = 'Smith' email = 'NATALIE.SMITH@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '423586845G'  nombre = 'Stephanie' apellidos = 'Quinn' email = 'LILLIAN.QUINN@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '430958433A'  nombre = 'Joan'  apellidos = 'Short' email = 'WENDY.SHORT@EMAIL.COM' tipo_acceso = '2')
    ( id_cliente = '439853453C'  nombre = 'Wendy' apellidos = 'Newman' email = 'JOSEPH.NEWMAN@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '453532543O'  nombre = 'Neil'  apellidos = 'Wilson' email = 'VANESSA.WILSON@EMAIL.COM' tipo_acceso = '1')
    ( id_cliente = '489632882D'  nombre = 'Sonia' apellidos = 'Welch' email = 'NEIL.WELCH@EMAIL.COM' tipo_acceso = '5')
    ( id_cliente = '540867547H'  nombre = 'Adrian' apellidos = 'Young' email = 'PENELOPE.YOUNG@EMAIL.COM' tipo_acceso = '5') ).

    "Delete possible entries; insert new entries
    DELETE FROM ztb_clientes.

    INSERT ztb_clientes FROM TABLE @lt_clientes.

******** ZTB_CLNTS_LIB ********

    lt_clnts_lib = VALUE #(
    ( id_cliente = '005638984K' id_libro = '01' )
    ( id_cliente = '049320909Q' id_libro = '02' )
    ( id_cliente = '049573865T' id_libro = '03' )
    ( id_cliente = '203947278B' id_libro = '04' )
    ( id_cliente = '234234231T' id_libro = '05' )
    ( id_cliente = '239482309W' id_libro = '06' )
    ( id_cliente = '276594867J' id_libro = '07' )
    ( id_cliente = '283748858A' id_libro = '08' )
    ( id_cliente = '324726345S' id_libro = '09' )
    ( id_cliente = '340958439D' id_libro = '10' )
    ( id_cliente = '345093450E' id_libro = '11' )
    ( id_cliente = '345838534R' id_libro = '12' )
    ( id_cliente = '348947597P' id_libro = '13' )
    ( id_cliente = '378458844M' id_libro = '14' )
    ( id_cliente = '423586845G' id_libro = '15' )
    ( id_cliente = '430958433A' id_libro = '16' )
    ( id_cliente = '439853453C' id_libro = '17' )
    ( id_cliente = '453532543O' id_libro = '18' )
    ( id_cliente = '489632882D' id_libro = '19' )
    ( id_cliente = '540867547H' id_libro = '20' ) ).

    "Delete possible entries; insert new entries
    DELETE FROM ztb_clnts_lib.

    INSERT ztb_clnts_lib FROM TABLE @lt_clnts_lib.



******** ZTB_LIBROS ********
    "fill internal table
    lt_libros = VALUE #(
      ( id_libro = '000001' bi_categ = 'A' titulo = 'Diccionario de los sentimientos' autor = 'CAGIGAL, Jose Maria' editorial = 'ANAGRAMA' idioma = 'S' paginas = 350 precio = '84.99' moneda = 'USD' formato = 'E' )
      ( id_libro = '000002' bi_categ = 'A' titulo = 'La selva del lenguaje' autor = 'Hoagland , M.' editorial = 'LATERZ A'  idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' )
      ( id_libro = '000002' bi_categ = 'C' titulo = 'La selva del lenguaje 2' autor = 'Hoagland , M.' editorial = 'LATERZ A'  idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' )
      ( id_libro = '000002' bi_categ = 'E' titulo = 'La selva del lenguaje 3' autor = 'Hoagland , M.' editorial = 'LATERZ A'  idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' )
      ( id_libro = '000002' bi_categ = 'G' titulo = 'La selva del lenguaje 4' autor = 'Hoagland , M.' editorial = 'LATERZ A'  idioma = 'S' paginas = 486 precio = 146 moneda = 'USD' formato = 'P' )
      ( id_libro = '000003' bi_categ = 'A' titulo = 'Ética Para Náufragos' autor = 'Vallejo- Nágera, Juan' editorial = 'LA SOCIAL' idioma = 'S'  paginas = 236 precio = 35  moneda = 'USD' formato = 'E' )
      ( id_libro = '000004' bi_categ = 'B' titulo = 'La Sociedad Global' autor = 'Lane, Frank WW'  editorial = 'JOAQUIN MORTIZ'  idioma = 'S' paginas = 189 precio = '18.5'  moneda = 'USD' formato = 'P' )
      ( id_libro = '000005' bi_categ = 'B' titulo = 'Evangelio de San Pablo' autor = 'DICKSON, David' editorial = 'EDIBESA' idioma = 'S' paginas = 475 precio = '25.1'  moneda = 'USD' formato = 'E' )
      ( id_libro = '000006' bi_categ = 'B' titulo = 'El Profeta: El jardin del Profeta' autor = 'Araujo, Joaquín' editorial = 'ABE BOOKS' idioma = 'S' paginas = 750 precio = '110.05'  moneda = 'USD' formato = 'P' )
      ( id_libro = '000007' bi_categ = 'B' titulo = 'Your Growing Child and Religion' autor = 'Luka Brajnovic' editorial = 'KELVIN BOOKS' idioma = 'E' paginas = 380 precio = '65.49' moneda = 'USD' formato = 'P' )
      ( id_libro = '000008' bi_categ = 'B' titulo = 'Carta a la Familias' autor = 'Sastre, José Luis' editorial = 'PPC' idioma = 'S' paginas = 265 precio = '19.99' moneda = 'USD' formato = 'E' )
      ( id_libro = '000009' bi_categ = 'C' titulo = 'The language of science O' autor = 'MANIQUE, John' editorial = 'SALVAR EDICION' idioma = 'E' paginas = 125 precio = '14.99'  moneda = 'USD' formato = 'P' )
      ( id_libro = '000010' bi_categ = 'C' titulo = 'Energy in Evolution' autor = 'Meade, J. E.' editorial = 'ROW' idioma = 'E' paginas = 276 precio = '39.99' moneda = 'USD' formato = 'E' )
      ( id_libro = '000011' bi_categ = 'D' titulo = 'Analisis Numerico' autor = 'Timothy Sauer' editorial = 'Addison-wesley'  idioma = 'E' paginas = 390 precio = '54.95' moneda = 'USD' formato = 'E' )
      ( id_libro = '000012' bi_categ = 'D' titulo = 'Algebra Matricial' autor = 'Jose manuel Gamboa' editorial = 'Anaya' idioma = 'S' paginas = 160 precio = '8.85' moneda = 'EUR' formato = 'P' )
      ( id_libro = '000013' bi_categ = 'D' titulo = 'Matematicas Galdos' autor = 'VV.A.A.' editorial = 'Cultural' idioma = 'S' paginas = 220 precio =  30  moneda = 'EUR' formato = 'P' )
      ( id_libro = '000014' bi_categ = 'E' titulo = 'Un pequeño pasa para un hombre' autor = 'Rafael Clemente' editorial = 'Cúpula'  idioma = 'S' paginas = 328 precio =  '18.52' moneda = 'EUR' formato = 'E' )
      ( id_libro = '000015' bi_categ = 'E' titulo = 'Mecánica de Materiales' autor = 'John T. DeWolf' editorial = 'MCGRAW-HILL' idioma = 'E' paginas = 635 precio = '62.51' moneda = 'USD' formato = 'E' )
      ( id_libro = '000016' bi_categ = 'E' titulo = 'Fundamentos de electricidad' autor = 'Jorge López Crespo' editorial = 'Thomson Paraninfo' idioma = 'S' paginas = 334 precio = '30.4' moneda = 'EUR' formato = 'P' )
      ( id_libro = '000017' bi_categ = 'F' titulo = 'La popularización del deporte' autor = 'García Ferrando, Manuel' editorial = 'Centro de Investig.' idioma = 'S' paginas = 180 precio = 19  moneda = 'EUR' formato = 'E' )
      ( id_libro = '000018' bi_categ = 'F' titulo = 'Ideal democrático y bienestar personal' autor = 'Llopis Goig, Ramón' editorial = 'Centro de Investig.' idioma = 'S' paginas = 268 precio = '9.5' moneda = 'EUR' formato = 'P' )
      ( id_libro = '000019' bi_categ = 'F' titulo = '14 canciones. El viaje del elefante' autor = 'Pastor, Luis' editorial = 'El Ángel Caído'  idioma = 'S' paginas = 48  precio = 21  moneda = 'USD' formato = 'E' )
      ( id_libro = '000020' bi_categ = 'F' titulo = '4 notas de jazz' autor = 'Fernández Martínez, Gema' editorial = 'ECU' idioma = 'S' paginas = 250 precio = 10  moneda = 'USD' formato = 'P' )
      ( id_libro = '000021' bi_categ = 'F' titulo = 'A mil besos. Canciones y poemas' autor = 'Cohen, Leonard' editorial = 'Visor Libros'  idioma = 'E' paginas = 250 precio = 16 moneda = 'USD' formato = 'E' )
      ( id_libro = '000022' bi_categ = 'G' titulo = 'Nada tan amargo: Seis poetas Inglesas' autor = 'VV.A.A.' editorial = 'DESVELO EDICIONES' idioma = 'S' paginas = 208 precio = '17.1' moneda = 'EUR' formato = 'E' )
      ( id_libro = '000023' bi_categ = 'G' titulo = 'Poemas' autor = 'Maria Zambrano'  editorial = 'S.L. EDICIONES'  idioma = 'S' paginas = 212 precio = '15.1' moneda = 'USD' formato = 'P' )
      ( id_libro = '000024' bi_categ = 'H' titulo = 'Atlas de los exploradores' autor = 'VV.A.A.'  editorial = 'PLANETA' idioma = 'S' paginas = 320 precio = '34.15' moneda = 'USD' formato = 'E' )
      ( id_libro = '000025' bi_categ = 'H' titulo = 'El dominio mundial' autor = 'Pedro Baños' editorial = 'Ariel' idioma = 'S' paginas = 368 precio = '22.7' moneda = 'USD' formato = 'P' )
      ( id_libro = '000026' bi_categ = 'H' titulo = 'Historia Latinoamericana 1700-2005' autor = 'Teresa Eggers Brass' editorial = 'EDITORIAL MAIPUE' idioma = 'S' paginas = 620 precio = '11.39' moneda = 'USD' formato = 'E' )
      ( id_libro = '000071' bi_categ = 'G' titulo = 'Los heraldos negros' autor = 'César Vallejo' editorial = 'Peisa' idioma = 'S' paginas = 128 precio = 23  moneda = 'USD' formato = 'P' )
      ( id_libro = '000072' bi_categ = 'G' titulo = 'Aves sin nido' autor = 'Clorinda Matto de Turner' editorial = 'Visor Libros'  idioma = 'S' paginas = 356 precio = '34.15' moneda = 'USD' formato = 'P' ) ).

    "Delete possible entries; insert new entries
    DELETE FROM ztb_libros.

    INSERT ztb_libros FROM TABLE @lt_libros.

    "Check result in console
    out->write( sy-dbcnt ).
    out->write(  'DONE!' ).

  ENDMETHOD.

ENDCLASS.
