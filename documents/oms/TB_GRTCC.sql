/*
================================================================================
表结构代码:TB_GRTCC
表结构名称:报表关键字
表结构目的:
================================================================================
*/

drop table TB_GRTCC;
create table TB_GRTCC  (
   GRTCC001             VARCHAR2(20)    not null,  /*关键字编号         */   
   GRTCC002             VARCHAR2(30),              /*关键字名称         */   
   GRTCC003             VARCHAR2(200),             /*关键字注释         */
   GRTCC004             NUMBER(5),                 /*长度               */
   GRTCC005             NUMBER(5),                 /*计数               */
   GRTCC006             VARCHAR2(1)                /*类型               */
   GRTCC007             VARCHAR2(1),               /*是否系统预制       */    
   GRTCC008             VARCHAR2(1),               /*是否停用           */ 
   GRTCC009             VARCHAR2(1),               /*是否私有           */
   GRTCC010             VARCHAR2(30),              /*私有关键字所属报表 */
   GRTCC011             VARCHAR2(10),              /*版本号             */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */   
   constraint PK_TB_GRTCC primary key (GRTCC001)
);
grant select on TB_GRTCC to public;
grant index  on TB_GRTCC to public;
grant update on TB_GRTCC to public; 
grant delete on TB_GRTCC to public;  
grant insert on TB_GRTCC to public; 
