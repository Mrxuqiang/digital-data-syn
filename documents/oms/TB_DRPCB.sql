/*
================================================================================
表结构代码:TB_DRPCB
表结构名称:报表基本信息表
表结构目的:
================================================================================
*/

drop table TB_DRPCB;
create table TB_DRPCB  (
   DRPCB001             VARCHAR2(30)    not null,  /*报表编码           */   
   DRPCB002             VARCHAR2(50),              /*报表名称           */   
   DRPCB003             VARCHAR2(200),             /*报表说明           */
   DRPCB004             INTEGER,                   /*所属目录ID         */
   DRPCB005             VARCHAR2(1),               /*是否模板           */    
   DRPCB006             VARCHAR2(1),               /*是否系统预制       */    
   DRPCB007             VARCHAR2(1),               /*是否内部交易项目表 */ 
   DRPCB008             VARCHAR2(1),               /*报表类型           */
   DRPCB009             INTEGER,                   /*关键字组合         */
   DRPCB010             INTEGER,                   /*引用指标关键字组合 */
   DRPCB011             VARCHAR2(10),              /*版本号             */
   DRPCB012             CLOB,                      /*报表设计内容       */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */
   constraint PK_TB_DRPCB primary key (DRPCB001)
);
grant select on TB_DRPCB to public;
grant index  on TB_DRPCB to public;
grant update on TB_DRPCB to public; 
grant delete on TB_DRPCB to public;  
grant insert on TB_DRPCB to public; 
