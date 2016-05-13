/*
================================================================================
表结构代码:TB_PUBHX
表结构名称:套件商品维度信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHX;
drop index AK_TB_PUBHX;
drop table TB_PUBHX;
create table TB_PUBHX  (
   PUBHX_ID             INTEGER                         not null,  /*套件维度信息ID       */
   PUBHX001             INTEGER                         not null,  /*套件商品ID           */
   PUBHX002             INTEGER                         	,  /*套件维度1ID         */
   PUBHX003             INTEGER                         	,  /*套件维度2ID         */
   PUBHX004             INTEGER                         	,  /*套件维度3ID        */
   PUBHX005             INTEGER,                                   /*套件维度4ID	*/
   PUBHX006             VARCHAR2(60),                              /*套件维度5ID	*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */     
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PUBHX primary key (PUBHX_ID)
);
create unique index AK_TB_PUBHX on TB_PUBHX(PUBHX001,PUBHX002,PUBHX003,PUBHX004,PUBHX005,PUBHX006);
create sequence SEQ_TB_PUBHX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHX  to public;
grant index  on TB_PUBHX  to public;
grant update on TB_PUBHX  to public; 
grant delete on TB_PUBHX  to public;  
grant insert on TB_PUBHX  to public; 
grant select on SEQ_TB_PUBHX to public;   