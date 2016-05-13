/*
================================================================================
表结构代码:TB_CONKA
表结构名称:供应商打分主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONKA;
drop index AK_TB_CONKA;
drop table TB_CONKA;
create table TB_CONKA  (
   CONKA_ID	           INTEGER                             not null,   /*打分ID          */            
   CONKA001	           VARCHAR2(30)                        not null,   /*评定编号        */            
   CONKA002	           VARCHAR2(30)                        not null,   /*评点名称        */            
   CONKA003	           DATE                                not null,   /*制定日期        */            
   CONKA004	           INTEGER                             not null,   /*营运组织ID      */            
   CONKA005	           INTEGER                             not null,   /*供应商ID        */      
   CONKA006	           VARCHAR2(1)                         not null,   /*格式类型        */      
   CONKA007	           VARCHAR2(1)                         not null,   /*是否可多选      */      
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONKA primary key (CONKA_ID)
);
create unique index AK_TB_CONKA on TB_CONKA (CONKA001，CONKA005);
create sequence SEQ_TB_CONKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONKA to public;
grant index  on TB_CONKA to public;
grant update on TB_CONKA to public; 
grant delete on TB_CONKA to public;  
grant insert on TB_CONKA to public; 
grant select on SEQ_TB_CONKA to public;   