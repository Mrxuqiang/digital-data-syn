/*
================================================================================
表结构代码:TB_PUBUA
表结构名称:打印设计模板表
表结构目的:
================================================================================
*/

drop index AK_TB_PUBUA;
drop table TB_PUBUA;
create table TB_PUBUA  (
 --PUBUA_ID             INTEGER                not null,  /*凭证模板表ID         */
   PUBUA001             VARCHAR2(30)           not null,  /*程序编号             */
   PUBUA002             VARCHAR2(30)           not null,  /*模板编号             */  
   PUBUA003             VARCHAR2(100),                    /*模板名称             */
   PUBUA004             VARCHAR2(30)           not null,  /*页签                 */
   PUBUA005             NUMBER(1),                        /*是否默认打印方案     */
   PUBUA006             NUMBER(5),                        /*设计时参考打印机（设计页面时用到）*/
   PUBUA007             VARCHAR2(1),                      /*底图存放方式 0存放数据库 1存放目录 */
   PUBUA008             VARCHAR2(100),                    /*底图文件名           */
   PUBUA009             NUMBER(10,2),                     /*纸张宽度             */
   PUBUA010             NUMBER(10,2),                     /*纸张高度             */
   PUBUA011             CLOB,                             /*设计内容             */
   PUBUA012             CLOB,                             /*底图内容             */
   CREATE_USER          VARCHAR2(12),                     /*建立人员             */
   USER_GROUP           VARCHAR2(12),                     /*建立人员部门         */                               
   CREATE_DATE          DATE,                             /*建立日期             */
   MODIFIER             VARCHAR2(12),                     /*修改人员             */
   MODI_DATE            DATE,                             /*修改日期             */
   FLAG                 NUMBER(1)                         /*资料状态             */
);
create unique index AK_TB_PUBUA on TB_PUBUA(PUBUA001,PUBUA002,PUBUA004);
grant select on TB_PUBUA to public;
grant index  on TB_PUBUA to public;
grant update on TB_PUBUA to public; 
grant delete on TB_PUBUA to public;  
grant insert on TB_PUBUA to public; 