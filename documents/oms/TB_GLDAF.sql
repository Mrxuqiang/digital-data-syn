/*
================================================================================
表结构代码:TB_GLDAF
表结构名称:辅助核算内容表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAF;
drop index AK_TB_GLDAF;
drop table TB_GLDAF;
create table TB_GLDAF  (
   GLDAF_ID             INTEGER                         not null,   /*辅助核算项主键           */
   GLDAF001             VARCHAR2(20)                    not null,   /*辅助核算标识               */
   GLDAF002             INTEGER                         not null,   /*辅助核算项ID             */
   GLDAF003             INTEGER,                                    /*核算内容                 */
   GLDAF004             NUMBER(1),                                  /*核算数                   */
   GLDAF005             NUMBER(2),                                  /*核算组序号               */
   GLDAF006             VARCHAR2(30),                               /*核算内容编号               */
   GLDAF007             VARCHAR2(60),                               /*核算内容名称               */
   GLDAF008             VARCHAR2(1),                                /*是否必输               */ 
   CREATE_USER          VARCHAR2(12),                               /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门             */                               
   CREATE_DATE          DATE,                                       /*建立日期                 */
   MODIFIER             VARCHAR2(12),                               /*修改人员                 */
   MODI_DATE            DATE,                                       /*修改日期                  */
   FLAG                 NUMBER(1),                                  /*资料状态                  */
   constraint PK_TB_GLDAF primary key (GLDAF_ID)
);
create unique index AK_TB_GLDAF on TB_GLDAF (GLDAF001,GLDAF002);
create sequence SEQ_TB_GLDAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAF to public;
grant index  on TB_GLDAF to public;
grant update on TB_GLDAF to public; 
grant delete on TB_GLDAF to public;  
grant insert on TB_GLDAF to public; 
grant select on SEQ_TB_GLDAF to public;   