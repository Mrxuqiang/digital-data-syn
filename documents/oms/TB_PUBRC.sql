/*
================================================================================
表结构代码:TB_PUBRC
表结构名称:内部折算凭证类别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRC;
drop index AK_TB_PUBRC;
drop table TB_PUBRC;
create table TB_PUBRC  (
   PUBRC_ID             INTEGER                         not null,  /*内部折算凭证内别ID             */
   PUBRC001             INTEGER                         not null,  /*内部折算规则ID         */
   PUBRC002             INTEGER                         not null,  /*折算关联账簿ID                   */
   PUBRC003             INTEGER ,                                  /*来源凭证类别ID                   */
   PUBRC004             VARCHAR2(30),                              /*预留字段               */
   PUBRC005             INTEGER ,                                  /*目的凭证类别ID                   */
   PUBRC006             VARCHAR2(30),                              /*预留字段               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBRC primary key (PUBRC_ID)
);
create sequence SEQ_TB_PUBRC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRC to public;
grant index  on TB_PUBRC to public;
grant update on TB_PUBRC to public; 
grant delete on TB_PUBRC to public;  
grant insert on TB_PUBRC to public; 
grant select on SEQ_TB_PUBRC to public;   