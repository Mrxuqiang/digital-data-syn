/*
================================================================================
表结构代码:TB_PUBNJ
表结构名称:收付方式账户表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNJ;
drop index AK_TB_PUBNJ;
drop table TB_PUBNJ;
create table TB_PUBNJ  (
   PUBNJ_ID             INTEGER                         not null,  /*收付方式账户ID           */
   PUBNJ001             INTEGER,                                   /*账号ID                   */
   PUBNJ002             INTEGER,                                   /*收付款方式ID             */
   PUBNJ003             INTEGER,                                   /*券种ID                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_PUBNJ primary key (PUBNJ_ID)
);
create unique index AK_TB_PUBNJ on TB_PUBNJ (PUBNJ001,PUBNJ002,PUBNJ003);
create sequence SEQ_TB_PUBNJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNJ to public;
grant index  on TB_PUBNJ to public;
grant update on TB_PUBNJ to public; 
grant delete on TB_PUBNJ to public;  
grant insert on TB_PUBNJ to public; 
grant select on SEQ_TB_PUBNJ to public;   