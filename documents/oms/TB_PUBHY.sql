
/*
================================================================================
表结构代码:TB_PUBHY
表结构名称:子件商品维度信息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHY;
drop index AK_TB_PUBHY;
drop table TB_PUBHY;
create table TB_PUBHY  (
   PUBHY_ID             INTEGER                         not null,  /*子件维度信息ID                                   */
   PUBHY001             INTEGER                         not null,  /*套件维度信息ID                                       */
   PUBHY002             INTEGER,                         not null, /*子件商品ID                                   */
   PUBHY003             INTEGER,                                   /*子件维度1ID                                     */
   PUBHY004             INTEGER                         ,        /*子件维度2ID                                     */
   PUBHY005             INTEGER,				 /*子件维度3ID                                     */
   PUBHY006             INTEGER,				 /*子件维度4ID                                       */
   PUBHY007             INTEGER,                                   /*子件维度5ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                                       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                                   */                               
   CREATE_DATE          DATE,                                      /*建立日期                                       */
   MODIFIER             VARCHAR2(12),                              /*修改人员                                       */
   MODI_DATE            DATE,                                      /*修改日期                                       */
   FLAG                 NUMBER(1),                                 /*资料状态                                       */
   constraint PK_TB_PUBHY primary key (PUBHY_ID)
);
create index AK_TB_PUBHY on TB_PUBHY (PUBHY001,PUBHY002,PUBHY003,PUBHY004,PUBHY005,PUBHY006,PUBHY007);
create sequence SEQ_TB_PUBHY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHY to public;
grant index  on TB_PUBHY to public;
grant update on TB_PUBHY to public; 
grant delete on TB_PUBHY to public;  
grant insert on TB_PUBHY to public; 
grant select on SEQ_TB_PUBHY to public;   