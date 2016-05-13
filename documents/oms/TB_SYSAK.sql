/*
================================================================================
表结构代码:TB_SYSAK
表结构名称:查询视图设置字段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAK;
drop index AK_TB_SYSAK;
drop table TB_SYSAK;
create table TB_SYSAK  (
   SYSAK_ID             INTEGER                         not null,  /*查询视图字段ID   */
   SYSAK001             INTEGER                         not null,  /*查询视图ID       */
   SYSAK002             VARCHAR2(30)                    not null,  /*查询视图字段代码 */
   SYSAK003             VARCHAR2(30),                              /*查询视图字段描述 */
   SYSAK004             VARCHAR2(1)                             ,  /*是否显示         */
   SYSAK005             VARCHAR2(20)                    not null,  /*字段类型         */
   SYSAK006             NUMBER(5),                                 /*长度             */
   SYSAK007             NUMBER(5),                                 /*小数位           */
   SYSAK008             VARCHAR2(1),                               /*是否返回         */
   SYSAK009             VARCHAR2(20),                              /*开窗视图         */  
   SYSAK010             NUMBER(5),                                 /*显示宽度         */
   SYSAK011             VARCHAR2(1),                               /*该字段显示       */
   SYSAK012             VARCHAR2(1),                               /*该字段回传       */
   SYSAK013             VARCHAR2(1),                               /*主键(树)         */
   SYSAK014             VARCHAR2(1),                               /*父主键(树)       */
   SYSAK015             VARCHAR2(20),                              /*视图返回字段     */
   SYSAK016             VARCHAR2(20),                              /*子查询条件字段名 */
   SYSAK017             VARCHAR2(1),                               /*是否合计         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAK primary key (SYSAK_ID)
);
create unique index AK_TB_SYSAK on TB_SYSAK (SYSAK001,SYSAK002);
create sequence SEQ_TB_SYSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAK to public;
grant index  on TB_SYSAK to public;
grant update on TB_SYSAK to public; 
grant delete on TB_SYSAK to public;  
grant insert on TB_SYSAK to public; 
grant select on SEQ_TB_SYSAK to public;   