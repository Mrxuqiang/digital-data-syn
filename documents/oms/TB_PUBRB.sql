/*
================================================================================
表结构代码:TB_PUBRB
表结构名称:内部折算规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRB;
drop index AK_TB_PUBRB;
drop table TB_PUBRB;
create table TB_PUBRB  (
   PUBRB_ID             INTEGER                         not null,  /*内部折算规则ID             */
   PUBRB001             INTEGER                         not null,  /*折算关联账簿编码ID         */
   PUBRB002             VARCHAR2(20)                    not null,  /*规则编码                   */
   PUBRB003             VARCHAR2(60)                    not null,  /*规则名称                   */
   PUBRB004             VARCHAR2(1)                     not null,  /*币种折算方式               */
   PUBRB005             VARCHAR2(1)                     not null,  /*折算日期                   */
   PUBRB006             VARCHAR2(1)                     not null,  /*携带现金流量               */
   PUBRB007             VARCHAR2(1)                     not null,  /*携带结算信息               */
   PUBRB008             VARCHAR2(1),                               /*预留字段               */
   PUBRB009             VARCHAR2(1)                     not null,  /* 无对应科目处理方式        */
   PUBRB010             INTEGER,                                    /会计科目ID                  */
   PUBRB011             VARCHAR2(1),                               /* 预留字段               */
   PUBRB012             VARCHAR2(1)                     not null,  /* 凭证类别一致               */
   PUBRB013             VARCHAR2(1)                     not null,  /* 默认规则                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBRB primary key (PUBRB_ID)
);
create unique index AK_TB_PUBRB on TB_PUBRB (PUBRB002,PUBRB003);
create sequence SEQ_TB_PUBRB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRB to public;
grant index  on TB_PUBRB to public;
grant update on TB_PUBRB to public; 
grant delete on TB_PUBRB to public;  
grant insert on TB_PUBRB to public; 
grant select on SEQ_TB_PUBRB to public;   