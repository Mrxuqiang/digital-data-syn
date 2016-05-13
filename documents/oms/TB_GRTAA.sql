/*
================================================================================
表结构代码:TB_GRTAA
表结构名称:投资数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAA;
drop index AK_TB_GRTAA;
drop table TB_GRTAA;
create table TB_GRTAA  (
   GRTAA_ID             INTEGER                         not null,  /*投资数据ID     */
   GRTAA001             INTEGER                         not null,  /*投资方ID   */
   GRTAA002             INTEGER                         not null,  /*被投资方ID       */
   GRTAA003             DATE                            not null,  /*日期        */
   GRTAA004             NUMBER(5,4)                    not null,  /*持股比例变动       */ 
   GRTAA005             VARCHAR2(1)                     not null,  /*会计核算方式   */ 
   GRTAA006             VARCHAR2(1),                               /*自动生成权益法调整凭证   */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAA primary key (GRTAA_ID)
);
create sequence SEQ_TB_GRTAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAA to public;
grant index  on TB_GRTAA to public;
grant update on TB_GRTAA to public; 
grant delete on TB_GRTAA to public;  
grant insert on TB_GRTAA to public; 
grant select on SEQ_TB_GRTAA to public;   