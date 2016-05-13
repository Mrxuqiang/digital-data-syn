/*
================================================================================
表结构代码:TB_PUBCK
表结构名称:客户基本资料
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PUBCK;
drop index AK_TB_PUBCK;
drop table TB_PUBCK;
create table TB_PUBCK  (
   PUBCK_ID             INTEGER                         not null,  /*客户基本资料ID     */
   PUBCK001             INTEGER                         not null,  /*客商ID             */
   PUBCK002             NUMBER(18,2),                              /*客户授信额度       */
   PUBCK003             NUMBER(18,2),                              /*已使用额度         */
   PUBCK004             VARCHAR2(255),                             /*送货方式           */
   PUBCK005             VARCHAR2(1),                               /*管控方式           */
   PUBCK006             VARCHAR2(255),                             /*备注               */
   PUBCK007             INTEGER                         not null,  /*内部法人（公司）   */
   PUBCK008             INTEGER                         not null,  /*业务员             */
   PUBCK009             VARCHAR2(1)                     not null,  /*默认提货方式       */
   PUBCK010             NUMBER(18,2),                              /*定金比率           */
   PUBCK011             NUMBER(18,2),                              /*交款比率           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER ,                                   /*资料状态           */
   constraint PK_TB_PUBCK primary key (PUBCK_ID)
);
create unique index AK_TB_PUBCK on TB_PUBCK (PUBCK001,FLAG);
create sequence SEQ_TB_PUBCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCK to public;
grant index  on TB_PUBCK to public;
grant update on TB_PUBCK to public; 
grant delete on TB_PUBCK to public;  
grant insert on TB_PUBCK to public; 
grant select on SEQ_TB_PUBCK to public;   