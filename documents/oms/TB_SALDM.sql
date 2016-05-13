/*
================================================================================
表结构代码:TB_SALDM
表结构名称:退货垫付还回单项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDM;
drop index AK_TB_SALDM;
drop table TB_SALDM;
create table TB_SALDM  (
   SALDM_ID             INTEGER                         not null,  /*退货垫付还回单项目ID */
   SALDM001             INTEGER                         not null,  /*退货垫付还回单ID     */
   SALDM002             INTEGER                         not null,  /*退货垫付单项目ID     */
   SALDM003             INTEGER                         not null,  /*费用ID               */
   SALDM004             INTEGER,                                   /*科目ID               */
   SALDM005             NUMBER(12,2)                    not null,  /*垫付余额             */
   SALDM006             NUMBER(12,2),                              /*还回金额             */
   SALDM007             VARCHAR2(255),                             /*备注                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SALDM primary key (SALDM_ID)
);
create index AK_TB_SALDM on TB_SALDM (SALDM001,SALDM002);
create sequence SEQ_TB_SALDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDM to public;
grant index  on TB_SALDM to public;
grant update on TB_SALDM to public; 
grant delete on TB_SALDM to public;  
grant insert on TB_SALDM to public; 
grant select on SEQ_TB_SALDM to public;   