/*
================================================================================
表结构代码:TB_SALZE
表结构名称:线上抽奖流水表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALZE;
drop index AK_TB_SALZE;
drop table TB_SALZE;
create table TB_SALZE  (
   SALZE_ID             INTEGER                         not null,  /*流水表ID           */
   SALZE001             INTEGER,                                   /*营运组织ID         */
   SALZE002             VARCHAR2(30)                            ,  /*营运组织代码       */
   SALZE003             VARCHAR2(80)                            ,  /*营运组织名称       */
   SALZE004             INTEGER,                                   /*销售单ID           */
   SALZE005             VARCHAR2(30),                              /*销售单号           */
   SALZE006             VARCHAR2(2)                     not null,  /*抽奖状态1.待抽奖（已生成QR,未抽奖或是抽奖失败失败也属于待抽奖）2.扫描成功抽奖中 3.扫描抽奖成功 4.扫描取消抽奖 5. oms主动终止抽奖*/
   SALZE007             VARCHAR2(80),                              /*抽奖交易流水号（yyyymmddxxxxxxxx） */
   SALZE008             NUMBER(12,2),                              /*销售抽奖总金额     */
   SALZE009             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALZE primary key (SALZE_ID)
);
create unique index AK_TB_SALZE on TB_SALZE (SALZE007);
create sequence SEQ_TB_SALZE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZE to public;
grant index  on TB_SALZE to public;
grant update on TB_SALZE to public; 
grant delete on TB_SALZE to public;  
grant insert on TB_SALZE to public; 
grant select on SEQ_TB_SALZE to public;   