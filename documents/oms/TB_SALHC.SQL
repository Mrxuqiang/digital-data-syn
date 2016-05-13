
/*
================================================================================
表结构代码:TB_SALHC
表结构名称:销售单费用分摊明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHC;
drop index AK_TB_SALHC;
drop table TB_SALHC;
create table TB_SALHC  (
   SALHC_ID             INTEGER                         not null,  /*销售单费用分摊明细ID*/
   SALHC001             INTEGER                         not null,  /*销售单ID         */
   SALHC002             INTEGER                         not null,  /*销售单明细ID         */
   SALHC003             INTEGER,                        not null,  /*促销类型             */1.会员分摊2.单品特价3.单品折扣4单品组合5.单品买赠6.交款折扣7.交款返券8.累计返券9.累计送赠
   SALHC004             INTEGER,                                   /*会员卡/促销单ID             */
   SALHC005             NUMBER(22,2)                    not null,  /*促销费用分摊金额    */
   SALHC006             INTEGER,                                   /*供应商              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SALHC primary key (SALHC_ID)
);
create index AK_TB_SALHC on TB_SALHC (SALHC001,SALHC002,SALHC003);
create sequence SEQ_TB_SALHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHC to public;
grant index  on TB_SALHC to public;
grant update on TB_SALHC to public; 
grant delete on TB_SALHC to public;  
grant insert on TB_SALHC to public; 
grant select on SEQ_TB_SALHC to public;   