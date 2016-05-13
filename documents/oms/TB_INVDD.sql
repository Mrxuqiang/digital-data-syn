/*
================================================================================
表结构代码:TB_INVDD
表结构名称:借出归还单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVDD;
drop index AK_TB_INVDD;
drop table TB_INVDD;
create table TB_INVDD  (                                       
   INVDD_ID           INTEGER                       not null,     /*还回明细ID        */          
   INVDD001           INTEGER                       not null,     /*还回单ID          */          
   INVDD002           INTEGER                       not null,     /*来源单号ID        */          
   INVDD003           INTEGER                       not null,     /*来源序号ID        */          
   INVDD004           INTEGER                       not null,     /*商品编码          */          
   INVDD005           INTEGER ,                                   /*维度1             */          
   INVDD006           INTEGER,                                    /*维度2             */          
   INVDD007           INTEGER,                                    /*维度3             */          
   INVDD008           INTEGER,                                    /*维度4             */          
   INVDD009           INTEGER,                                    /*维度5             */          
   INVDD010           INTEGER                       not null,     /*仓库              */          
   INVDD011           INTEGER,                                    /*库位              */          
   INVDD012           INTEGER                       not null,     /*单位              */          
   INVDD013           NUMBER(18,3)                  not null,     /*单位换算率        */          
   INVDD014           NUMBER(12,2)                  not null,     /*借出量            */          
   INVDD015           NUMBER(12,2)                  not null,     /*还回量            */      
   INVDD016           NUMBER(12,2)                  not null,     /*单价              */      
   INVDD017           NUMBER(12,2)                  not null,     /*金额              */      
   INVDD018           VARCHAR2(1)                   not null,     /*商品服务属性      */      
   INVDD019           VARCHAR2(1)                   not null,     /*物权属性          */      
   INVDD020           VARCHAR2(255),                              /*备注              */      
   CREATE_USER        VARCHAR2(12),                              /*建立人员           */             
   USER_GROUP         VARCHAR2(12),                              /*建立人员部门       */             
   CREATE_DATE        DATE,                                      /*建立日期           */             
   MODIFIER           VARCHAR2(12),                              /*修改人员           */             
   MODI_DATE          DATE,                                      /*修改日期           */             
   FLAG               NUMBER(1),                                 /*资料状态           */            


  constraint PK_TB_INVDD primary key (INVDD_ID)                               
);                                           
create unique index AK_TB_INVDD on TB_INVDD (INVDD_ID,INVDD004);               
create sequence SEQ_TB_INVDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDD to public;                                     
grant index  on TB_INVDD to public;                                     
grant update on TB_INVDD to public;                                      
grant delete on TB_INVDD to public;                                       
grant insert on TB_INVDD to public;                                      
grant select on SEQ_TB_INVDD to public;                                        