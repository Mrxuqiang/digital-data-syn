/*
================================================================================
表结构代码:TB_DRPCC
表结构名称:报表关键字
表结构目的:
================================================================================
*/

drop table TB_DRPCC;
create table TB_DRPCC  (
   DRPCC001             VARCHAR2(20)    not null,  /*关键字编号         */   
   DRPCC002             VARCHAR2(30),              /*关键字名称         */   
   DRPCC003             VARCHAR2(200),             /*关键字注释         */
   DRPCC004             NUMBER(5),                 /*长度               */
   DRPCC005             NUMBER(5),                 /*计数               */
   DRPCC006             VARCHAR2(1)                /*类型               */
   DRPCC007             VARCHAR2(1),               /*是否系统预制       */    
   DRPCC008             VARCHAR2(1),               /*是否停用           */ 
   DRPCC009             VARCHAR2(1),               /*是否私有           */
   DRPCC010             VARCHAR2(30),              /*私有关键字所属报表 */
   DRPCC011             VARCHAR2(10),              /*版本号             */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */   
   constraint PK_TB_DRPCC primary key (DRPCC001)
);
grant select on TB_DRPCC to public;
grant index  on TB_DRPCC to public;
grant update on TB_DRPCC to public; 
grant delete on TB_DRPCC to public;  
grant insert on TB_DRPCC to public; 
