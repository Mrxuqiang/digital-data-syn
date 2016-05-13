/*
================================================================================
表结构代码:TB_PUBIN
表结构名称:分类自定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIN;
drop index AK_TB_PUBIN;
drop table TB_PUBIN;
create table TB_PUBIN  (
   PUBIN_ID             INTEGER                         not null,  /*自定义分类表ID              */
   PUBIN001             VARCHAR2(100)                   not null,  /*名称定义                    */
   PUBIN002             INTEGER                         not null,  /*序号                        */
   PUBIN003             INTEGER,                                   /*层级数                      */
   PUBIN004             VARCHAR2(1),                               /*是否必填                    */
   PUBIN005             VARCHAR2(1),                               /*是否启用                    */
   PUBIN006             VARCHAR2(1),                               /*是否多选*/
   PUBIN007             VARCHAR2(1),                               /*节点类型（1.根节点(根节点是唯一)、2.中间节点、3.叶节点）*/
   PUBIN008             INTEGER,                                   /*子节点兄弟节点数                  */
   PUBIN009             INTEGER,                                   /*上级自定义分类ID            */
   PUBIN010             VARCHAR2(100),                             /*作业号                      */
   PUBIN011             VARCHAR2(100),                             /*绑定的表                    */
   PUBIN012             VARCHAR2(100),                             /*映射字段ID                  */
   PUBIN013             VARCHAR2(100),                             /*映射字段二编码              */
   PUBIN014             VARCHAR2(100),                             /*映射字段三名称              */
   PUBIN015             VARCHAR2(100),                             /*左视图                      */
   PUBIN016             VARCHAR2(100),                             /*右视图                      */
   PUBIN017             VARCHAR2(100),                             /*归属分类类型                */
   PUBIN018             VARCHAR2(100),                             /*分类名称                    */
   PUBIN019             VARCHAR2(100),                             /*是否只读                    */
   PUBIN020             VARCHAR2(100),                             /*窗体显示类型                 */
   PUBIN021             VARCHAR2(100),                             /*映射字段二显示名称                       */
   PUBIN022             VARCHAR2(100),                             /**映射字段三显示名称                       */
   PUBIN023             VARCHAR2(100),                             /*不能够为空                      */
   PUBIN024             VARCHAR2(100),                             /*开启包含检查                      */
   PUBIN025             VARCHAR2(100),                             /*值包含检查字段                      */
   PUBIN026             VARCHAR2(100),                             /*备用13                      */
   PUBIN027             VARCHAR2(100),                             /*备用14                      */
   CREATE_USER          VARCHAR2(12),                              /*创建人                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBIN primary key (PUBIN_ID)
);
                                 
create unique index AK_TB_PUBIN on TB_PUBIN (PUBIN001,FLAG);
create sequence SEQ_TB_PUBIN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIN to public;
grant index  on TB_PUBIN to public;
grant update on TB_PUBIN to public; 
grant delete on TB_PUBIN to public;  
grant insert on TB_PUBIN to public; 
grant select on SEQ_TB_PUBIN to public;   