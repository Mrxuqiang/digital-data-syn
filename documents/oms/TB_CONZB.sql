/*
================================================================================
表结构代码:TB_CONZB
表结构名称:质保金明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONZB;
drop index AK_TB_CONZB;
drop table TB_CONZB;
create table TB_CONZB  (
   CONZB_ID             INTEGER                         not null,  /*质保金明细ID      */
   CONZB001             INTEGER                         not null,  /*质保金ID          */
   CONZB002             INTEGER                         not null,  /*营运组织ID        */
   CONZB003             INTEGER                         not null,  /*合同ID            */
   CONZB004             INTEGER                         not null,  /*客商ID            */
   CONZB005             INTEGER                         not null,  /*小类ID            */
   CONZB006             VARCHAR2(1)                     not null,  /*单据类型          */
   CONZB007             INTEGER                         not null,  /*单号ID            */
   CONZB008             VARCHAR2(30)                    not null,  /*单据号码          */
   CONZB009             DATE                            not null,  /*录入日期          */
   CONZB010             VARCHAR2(1)                     not null,  /*赔付标识          */
   CONZB011             NUMBER(12,2)                    not null,  /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_CONZB primary key (CONZB_ID)
);
create unique index AK_TB_CONZB on TB_CONZB (CONZB001,CONZB002,CONZB006,CONZB007);
create sequence SEQ_TB_CONZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZB to public;
grant index  on TB_CONZB to public;
grant update on TB_CONZB to public; 
grant delete on TB_CONZB to public;  
grant insert on TB_CONZB to public; 
grant select on SEQ_TB_CONZB to public;   