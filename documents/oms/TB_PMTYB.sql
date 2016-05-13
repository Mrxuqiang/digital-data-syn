20140811 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_PMTYB
表结构名称:明折明扣促销时间子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTYB;
drop index AK_TB_PMTYB;
drop table TB_PMTYB;
create table TB_PMTYB  (
   PMTYB_ID             INTEGER                         not null,  /*明折明扣促销时间ID             */
   PMTYB001             INTEGER                         not null,  /*明折明扣促销id           */
   PMTYB002             DATE				not null,  /*促销开始时间           */
   PMTYB003             DATE				not null,  /*促销结束时间           */
            
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PMTYB primary key (PMTYB_ID)
);

create sequence SEQ_TB_PMTYB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYB to public;
grant index  on TB_PMTYB to public;
grant update on TB_PMTYB to public; 
grant delete on TB_PMTYB to public;  
grant insert on TB_PMTYB to public; 
grant select on SEQ_TB_PMTYB to public;   