{{
  config(
     pre_hook=[

        "create warehouse Custom_WH"

        "create or replace table  STUDENT(
            ID   integer,
            NAME  varchar(50),
            FEE    integer,
            SUBJECT    string
        )"

        " insert into STUDENT (ID,NAME,FEE,SUBJECT) values (101,'shubhika Tiwari','30000','Maths')"
      ]

    )
}}

select * from VWE_DATABASE.PUBLIC.STUDENT