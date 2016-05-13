/*
================================================================================
表结构代码:TB_SALDI
表结构名称:退货垫付单项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDI;
drop index AK_TB_SALDI;
drop table TB_SALDI;
create table TB_SALDI  (
   SALDI_ID             INTEGER                         not null,  /*退货垫付单项目ID */
   SALDI001             INTEGER                         not null,  /*退货垫付单ID     */
   SALDI002             INTEGER                         not null,  /*费用ID           */
   SALDI003             INTEGER,                                   /*科目ID           */
   SALDI004             NUMBER(12,2)                    not null,  /*垫付金额         */
   SALDI005             NUMBER(12,2),                              /*还回金额         */
   SALDI006             NUMBER(12,2),                              /*冲销金额         */
   SALDI007             NUMBER(12,2),                              /*垫付余额         */
   SALDI008             VARCHAR2(255),                             /*备注             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDI primary key (SALDI_ID)
);
create index AK_TB_SALDI on TB_SALDI (SALDI_ID,SALDI001,SALDI002);
create sequence SEQ_TB_SALDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDI to public;
grant index  on TB_SALDI to public;
grant update on TB_SALDI to public; 
grant delete on TB_SALDI to public;  
grant insert on TB_SALDI to public; 
grant select on SEQ_TB_SALDI to public;   