/*
================================================================================
表结构代码:TB_MEMBA
表结构名称:会员卡规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBA;
drop index AK_TB_MEMBA;
drop table TB_MEMBA;
create table TB_MEMBA  (
   MEMBA_ID             INTEGER                         not null,  /*会员卡规则ID        */
   MEMBA001             VARCHAR2(4)                     not null,  /*规则代码            */
   MEMBA002             VARCHAR2(30)                    not null,  /*规则名称            */
   MEMBA003             NUMBER(12)                      not null,  /*换算基数            */
   MEMBA004             NUMBER(12)                      not null,  /*单位积分            */
   MEMBA005             NUMBER(12,2)                    not null,  /*默认折扣率(%)       */
   MEMBA006             VARCHAR2(1),                               /*会员价              */
   MEMBA007             VARCHAR2(1),                               /*可折扣              */
   MEMBA008             VARCHAR2(1),                               /*可积分              */
   MEMBA009             VARCHAR2(1)                     not null,  /*有效期方式[1 2]     */
   MEMBA010             DATE,                                      /*有效期至YYYMMDD     */
   MEMBA011             NUMBER(12),                                /*几月内有效          */
   MEMBA012             VARCHAR2(1),                               /*是否有效期可延长    */
   MEMBA013             VARCHAR2(1)                     not null,  /*有效期延长方式      */
   MEMBA014             NUMBER(12),                                /*积分达到几分        */
   MEMBA015             NUMBER(12),                                /*消费达到几元        */
   MEMBA016             NUMBER(12),                                /*消费达到几次        */
   MEMBA017             DATE,                                      /*延长到YYYMMDD       */
   MEMBA018             NUMBER(12),                                /*延长几月            */
   MEMBA019             VARCHAR2(1)                     not null,  /*是否自动清积分      */
   MEMBA020             NUMBER(12),                                /*几月后清零          */
   MEMBA021             NUMBER(12),                                /*几日后清零          */
   MEMBA022             DATE,                                      /*YYYMMDD 后清零      */
   MEMBA023             VARCHAR2(1),                               /*是否有不清零条件    */
   MEMBA024             NUMBER(12),                                /*小于几月不清零      */
   MEMBA025             VARCHAR2(1),                               /*清积分方式          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEMBA primary key (MEMBA_ID)
);
create unique index AK_TB_MEMBA on TB_MEMBA (MEMBA001);
create sequence SEQ_TB_MEMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBA to public;
grant index  on TB_MEMBA to public;
grant update on TB_MEMBA to public; 
grant delete on TB_MEMBA to public;  
grant insert on TB_MEMBA to public; 
grant select on SEQ_TB_MEMBA to public;   