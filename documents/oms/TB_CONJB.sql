/*
================================================================================
表结构代码:TB_CONJB
表结构名称:自定义供应商评定主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONJB;
drop index AK_TB_CONJB;
drop table TB_CONJB;
create table TB_CONJB  (
   CONJB_ID	          INTEGER                           not null,        /*评定明细ID       */               
   CONJB001	          INTEGER                           not null,        /*评定ID           */           
   CONJB002	          VARCHAR2(255)                     not null,        /*主标题           */           
   CONJB003	          VARCHAR2(255),                                     /*一级标题名称     */           
   CONJB004	          VARCHAR2(255),                                     /*二级标题名称     */           
   CONJB005	          VARCHAR2(255),                                     /*三级标题名称     */           
   CONJB006	          NUMBER(2),                                         /*排列顺序         */           
   CONJB007	          VARCHAR2(255),                    not null,        /*评定内容         */           
   CONJB008	          VARCHAR2(255),                    not null,        /*选项1            */           
   CONJB009	          NUMBER(11,2),                                      /*选项1分值        */           
   CONJB010	          VARCHAR2(255),                                     /*选项2            */           
   CONJB011	          NUMBER(11,2),                                      /*选项2分值        */           
   CONJB012	          VARCHAR2(255),                                     /*选项3            */           
   CONJB013	          NUMBER(11,2),                                      /*选项3分值        */           
   CONJB014	          VARCHAR2(255),                                     /*选项4            */           
   CONJB015	          NUMBER(11,2),                                      /*选项4分值        */           
   CONJB016	          VARCHAR2(255),                                     /*选项5            */           
   CONJB017	          NUMBER(11,2),                                      /*选项5分值        */           
   CONJB018	          VARCHAR2(255),                                     /*备注             */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONJB primary key (CONJB_ID)
);
create unique index AK_TB_CONJB on TB_CONJB (CONJB_ID,CONJB002);
create sequence SEQ_TB_CONJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONJB to public;
grant index  on TB_CONJB to public;
grant update on TB_CONJB to public; 
grant delete on TB_CONJB to public;  
grant insert on TB_CONJB to public; 
grant select on SEQ_TB_CONJB to public;   