/*
================================================================================
表结构代码:TB_HRBAF
表结构名称:社会统筹分类设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAF;
drop index AK_TB_HRBAF;
drop table TB_HRBAF;
create table TB_HRBAF  (
   HRBAF_ID             INTEGER                         not null,  /*社会统筹编码ID     */
   HRBAF001             VARCHAR2(8)                     not null,  /*编号               */
   HRBAF002             VARCHAR2(30)                    not null,  /*名称               */
   HRBAF003             VARCHAR2(8)                     not null,  /*分类编号           */ 
   HRBAF004             NUMBER(12,2)                    not null,  /*统筹上限           */
   HRBAF005             NUMBER(12,2)                    not null,  /*统筹下限           */  
   HRBAF006             NUMBER(1)                       not null,  /*进位原则           */
   HRBAF007             NUMBER(1)                       not null,  /*有效性             */        
   HRBAF008             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAF primary key (HRBAF_ID)
);
create unique index AK_TB_HRBAF on TB_HRBAF (HRBAF001);
create sequence SEQ_TB_HRBAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAF to public;
grant index  on TB_HRBAF to public;
grant update on TB_HRBAF to public; 
grant delete on TB_HRBAF to public;  
grant insert on TB_HRBAF to public; 
grant select on SEQ_TB_HRBAF to public;   