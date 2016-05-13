/*
================================================================================
表结构代码:TB_INVNE
表结构名称:回库单条码明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVNE;
drop index AK_TB_INVNE;
drop table TB_INVNE;
create table TB_INVNE  (
   INVNE_ID             INTEGER                         not null,  /*条码明细ID          */
   INVNE001		INTEGER				not null,  /*子件明细ID          */
   INVNE002             VARCHAR2(30)                    not null,  /*条码                */
   INVNE003             number(18,3)                    not null,  /*回库数量            */
   INVNE004             INTEGER                         not null,  /*货位ID              */
   INVNE005             INTEGER                                    /*回库单ID            */
   INVNE006		number(18,3)			not null,  /*发货数量*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_INVNE primary key (INVNE_ID)
);
create unique index AK_TB_INVNE on TB_INVNE (INVNE001);

create sequence SEQ_TB_INVNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNE to public;
grant index  on TB_INVNE to public;
grant update on TB_INVNE to public; 
grant delete on TB_INVNE to public;  
grant insert on TB_INVNE to public; 
grant select on SEQ_TB_INVNE to public;   
