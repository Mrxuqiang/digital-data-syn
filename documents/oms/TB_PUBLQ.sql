/*
================================================================================
表结构代码:TB_PUBLQ
表结构名称:现金流量项目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLQ;
drop index AK_TB_PUBLQ;
drop table TB_PUBLQ;
create table TB_PUBLQ  (
   PUBLQ_ID             INTEGER                         not null,  /*现金流量项目表ID     */
   PUBLQ001             VARCHAR2(40)                    not null,  /*项目代码             */
   PUBLQ002             VARCHAR2(200)                   not null,  /*项目名称             */
   PUBLQ003             VARCHAR2(100),                             /*项目英文名称         */
   PUBLQ004             INTEGER,                                   /*上级节点的项目代码   */
   PUBLQ005             VARCHAR2(40),                              /*项目类型             */
   PUBLQ006             VARCHAR2(20),                              /*助记码               */
   PUBLQ007             VARCHAR2(2)                     not null,  /*是否主表项目         */
   PUBLQ008             INTEGER                         not null,  /*封存                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLQ primary key (PUBLQ_ID)
);
create unique index AK_TB_PUBLQ on TB_PUBLQ (PUBLQ001,PUBLQ002);
create sequence SEQ_TB_PUBLQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLQ to public;
grant index  on TB_PUBLQ to public;
grant update on TB_PUBLQ to public; 
grant delete on TB_PUBLQ to public;  
grant insert on TB_PUBLQ to public; 
grant select on SEQ_TB_PUBLQ to public;   