/*
================================================================================
表结构代码:TB_PRCCC
表结构名称:价格策略调整会员价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCCC;
drop index AK_TB_PRCCC;
drop table TB_PRCCC;
create table TB_PRCCC  (
   PRCCC_ID             INTEGER                         not null,  /*价格策略调整会员价ID*/
   PRCCC001             INTEGER                         not null,  /*价格策略调整单头ID*/
   PRCCC002             INTEGER                         not null,  /*售价格策略调整标准售价ID*/
   PRCCC003             INTEGER                         not null,  /*会员等级ID        */
   PRCCC004             VARCHAR(1)                      not null,  /*参考基准          */
   PRCCC005             NUMBER(12,2)                    not null,  /*参考价            */
   PRCCC006             NUMBER(5,3)                     not null,  /*浮动比率          */
   PRCCC007             NUMBER(12,2)                    not null,  /*会员价            */
   PRCCC008             INTEGER                                    /*原策略会员价ID    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCCC primary key (PRCCC_ID)
);
create unique index AK_TB_PRCCC on TB_PRCCC (PRCCC001,PRCCC002,PRCCC003);
create sequence SEQ_TB_PRCCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCCC to public;
grant index  on TB_PRCCC to public;
grant update on TB_PRCCC to public; 
grant delete on TB_PRCCC to public;  
grant insert on TB_PRCCC to public; 
grant select on SEQ_TB_PRCCC to public;   