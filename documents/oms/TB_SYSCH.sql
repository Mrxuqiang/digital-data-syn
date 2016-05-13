/*
================================================================================
表结构代码:TB_SYSCH
表结构名称:客户端ping命令记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSCH;
drop table TB_SYSCH;
create table TB_SYSCH  (
   SYSCH_ID             INTEGER                         not null,  /*ping日志表ID       */
   SYSCH001             INTEGER                         not null,  /*用户ID             */
   SYSCH002             VARCHAR2(20),                              /*用户账号           */
   SYSCH003             VARCHAR2(200),                             /*用户名称           */
   SYSCH004             VARCHAR2(30),                              /*客户端IP           */
   SYSCH005             INTEGER,                                   /*商场ID             */
   SYSCH006             VARCHAR2(100),                             /*商场名称           */
   SYSCH007             DATE,                                      /*开始时间           */
   SYSCH008             DATE,                                      /*结束时间           */
   SYSCH009             DATE,                                      /*日志日期           */
   SYSCH010             VARCHAR2(200),                             /*机器名称           */
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SYSCH primary key (SYSCH_ID)
);
create sequence SEQ_TB_SYSCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCH to public;
grant index  on TB_SYSCH to public;
grant update on TB_SYSCH to public; 
grant delete on TB_SYSCH to public;  
grant insert on TB_SYSCH to public; 
grant select on SEQ_TB_SYSCH to public;   