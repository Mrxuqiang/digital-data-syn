/*
================================================================================
表结构代码:TB_CONBC
表结构名称:合同优惠单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBC;
drop index AK_TB_CONBC;
drop table TB_CONBC;
create table TB_CONBC  (
   CONBC_ID             INTEGER                         not null,  /*合同优惠单明细ID    */
   CONBC001             INTEGER                         not null,  /*优惠单展位ID        */
   CONBC002             INTEGER                         not null,  /*优惠项目ID          */
   CONBC003             DATE                            not null,  /*开始日期            */
   CONBC004             DATE                            not null,  /*结束日期            */
   CONBC005             NUMBER(12,2),				   /*优惠单价            */
   CONBC006             NUMBER(12,2),				   /*优惠总额            */
   CONBC007             NUMBER(12,2),				   /*百分比              */
   CONBC008             NUMBER(12,2),				   /*累计优惠总额        */
   CONBC009             NUMBER(12,2),				   /*累计百分比          */
   CONBC010             INTEGER,				   /*合同优惠单ID        */
   CONBC011             INTEGER,				   /*天数                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_CONBC primary key (CONBC_ID)
);
create unique index AK_TB_CONBC on TB_CONBC (CONBC001,CONBC002,CONBC003);
create sequence SEQ_TB_CONBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBC to public;
grant index  on TB_CONBC to public;
grant update on TB_CONBC to public; 
grant delete on TB_CONBC to public;  
grant insert on TB_CONBC to public; 
grant select on SEQ_TB_CONBC to public;   