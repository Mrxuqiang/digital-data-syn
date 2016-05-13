/*
================================================================================
表结构代码:TB_GRTCB
表结构名称:报表基本信息表
表结构目的:
================================================================================
*/

drop table TB_GRTCB;
create table TB_GRTCB  (
   GRTCB001             VARCHAR2(30)    not null,  /*报表编码           */   
   GRTCB002             VARCHAR2(50),              /*报表名称           */   
   GRTCB003             VARCHAR2(200),             /*报表说明           */
   GRTCB004             INTEGER,                   /*所属目录ID         */
   GRTCB005             VARCHAR2(1),               /*是否模板           */    
   GRTCB006             VARCHAR2(1),               /*是否系统预制       */    
   GRTCB007             VARCHAR2(1),               /*是否内部交易项目表 */ 
   GRTCB008             VARCHAR2(1),               /*报表类型           */
   GRTCB009             INTEGER,                   /*关键字组合         */
   GRTCB010             INTEGER,                   /*引用指标关键字组合 */
   GRTCB011             VARCHAR2(10),              /*版本号             */
   GRTCB012             CLOB,                      /*报表设计内容       */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */
   constraint PK_TB_GRTCB primary key (GRTCB001)
);
grant select on TB_GRTCB to public;
grant index  on TB_GRTCB to public;
grant update on TB_GRTCB to public; 
grant delete on TB_GRTCB to public;  
grant insert on TB_GRTCB to public; 
