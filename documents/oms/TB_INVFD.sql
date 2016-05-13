/*
================================================================================
表结构代码:TB_INVFD
表结构名称:盘点单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFD;
drop index AK_TB_INVFD;
drop table TB_INVFD;
create table TB_INVFD  (
   INVFD_ID         INTEGER                   not null,            /*盘点单ID         */
   INVFD001         INTEGER                   not null,            /*盘点单别          */
   INVFD002         VARCHAR2(30)              not null,            /*盘点单号          */
   INVFD003         INTEGER                   not null,            /*盘点计划单号    */
   INVFD004         DATE                      not null,            /*盘点日期           */
   INVFD005         INTEGER,                  not null,            /*盘点组织           */
   INVFD006         INTEGER,                                       /*大类ID          */
   INVFD007         INTEGER,                                       /*厂商ID          */
   INVFD008         INTEGER,                                       /*品牌ID          */
   INVFD009         INTEGER,                                       /*盘点人ID          */
   INVFD010         VARCHAR2(1),              not null,            /*盘点规则          */
   INVFD011         INTEGER,                                       /*盘点目标          */
   INVFD012         VARCHAR2(1),              not null,            /*盘点方式1按套件2按组装件*/
   INVFD013         VARCHAR2(1),              not null,            /*显示方式*/   
   INVFD014         VARCHAR2(1),              not null,            /*审核状态          */                
   INVFD015         INTEGER,                                       /*录入人            */                  
   INVFD016         DATE,                                          /*录入时间          */                  
   INVFD017         INTEGER,                                       /*审核人            */                  
   INVFD018         DATE,                                          /*审核时间          */                  
   CREATE_USER      VARCHAR2(12),                                  /*建立人员           */
   USER_GROUP       VARCHAR2(12),                                  /*建立人员部门       */                               
   CREATE_DATE      DATE,                                          /*建立日期           */
   MODIFIER         VARCHAR2(12),                                  /*修改人员           */
   MODI_DATE        DATE,                                           /*修改日期           */
   FLAG             NUMBER(1),                                          /*资料状态           */
   constraint PK_TB_INVFD primary key (INVFD_ID)
);
create unique index AK_TB_INVFD on TB_INVFD (INVFD002, INVFD005);
create sequence SEQ_TB_INVFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFD to public;
grant index  on TB_INVFD to public;
grant update on TB_INVFD to public; 
grant delete on TB_INVFD to public;  
grant insert on TB_INVFD to public; 
grant select on SEQ_TB_INVFD to public;   