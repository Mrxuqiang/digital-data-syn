/*
================================================================================
表结构代码:TB_SYSAJ
表结构名称:查询视图设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAJ;
drop index AK_TB_SYSAJ;
drop table TB_SYSAJ;
create table TB_SYSAJ  (
   SYSAJ_ID             INTEGER                         not null,  /*查询视图ID       */
   SYSAJ001             VARCHAR2(20)                    not null,  /*查询视图代码     */
   SYSAJ002             VARCHAR2(30)                    not null,  /*查询视图名称     */
   SYSAJ003             VARCHAR2(4000)                  not null,  /*SQL1              */
   SYSAJ004             VARCHAR2(255)                           ,  /*备注             */
   SYSAJ005             VARCHAR2(1)                     not null,  /*视图类型         */
   SYSAJ006             VARCHAR2(1)                             ,  /*开窗类型         */
   SYSAJ007             VARCHAR2(1)                             ,  /*是否多选         */
   SYSAJ008             VARCHAR2(1)                             ,  /*是否按条件查询   */
   SYSAJ009             VARCHAR2(4000),                            /*SQL2             */
   SYSAJ010             VARCHAR2(4000),                            /*SQL3             */
   SYSAJ011             VARCHAR2(4000),                            /*SQL4             */
   SYSAJ012             VARCHAR2(4000),                            /*SQL5             */ 
   SYSAJ013             VARCHAR2(4000),                            /*排序子句             */
   SYSAJ014             VARCHAR2(2),                               /*是否树形显示默认收拢 */
   SYSAJ015             VARCHAR2(2),                               /*窗体类型            */
   SYSAJ016             VARCHAR2(2),                               /*窗体显示样式        */
   SYSAJ017             VARCHAR2(100),                             /*关联条件视图        */
   SYSAJ018             VARCHAR2(255),                             /*关联视图传值映射公式*/
   SYSAJ019             VARCHAR2(100),                             /*sql映射变量名*/
   SYSAJ020             VARCHAR2(255),                             /*sql映射条件*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAJ primary key (SYSAJ_ID)
);
create unique index AK_TB_SYSAJ on TB_SYSAJ (SYSAJ001);
create sequence SEQ_TB_SYSAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAJ to public;
grant index  on TB_SYSAJ to public;
grant update on TB_SYSAJ to public; 
grant delete on TB_SYSAJ to public;  
grant insert on TB_SYSAJ to public; 
grant select on SEQ_TB_SYSAJ to public;   