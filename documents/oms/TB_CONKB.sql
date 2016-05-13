/*
================================================================================
表结构代码:TB_CONKB
表结构名称:供应商打分评定主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONKB;
drop index AK_TB_CONKB;
drop table TB_CONKB;
create table TB_CONKB  (
   CONKB_ID	           INTEGER                                not null,    /*打分明细ID      */           
   CONKB001	           INTEGER                                not null,    /*打分ID          */           
   CONKB002	           INTEGER                                not null,    /*评定明细ID      */           
   CONKB003	           VARCHAR2(255),                                      /*主标题          */           
   CONKB004	           VARCHAR2(255),                                      /*一级标题名称    */           
   CONKB005	           VARCHAR2(255),                                      /*二级标题名称    */           
   CONKB006	           VARCHAR2(255),                                      /*三级标题名称    */           
   CONKB007	           VARCHAR2(255),                                      /*评定内容        */           
   CONKB008	           VARCHAR2(255),                                      /*选项1           */           
   CONKB009	           NUMBER(11,2),                                       /*选项1分值       */           
   CONKB010	           VARCHAR2(255),                                      /*选项2           */           
   CONKB011	           NUMBER(11,2),                                       /*选项2分值       */           
   CONKB012	           VARCHAR2(255),                                      /*选项3           */           
   CONKB013	           NUMBER(11,2),                                       /*选项3分值       */           
   CONKB014	           VARCHAR2(255),                                      /*选项4           */           
   CONKB015	           NUMBER(11,2),                                       /*选项4分值       */           
   CONKB016	           VARCHAR2(255),                                      /*选项5           */           
   CONKB017	           NUMBER(11,2),                                       /*选项5分值       */           
   CONKB018	           VARCHAR2(1)                          not null,      /*选择项目1       */           
   CONKB019	           VARCHAR2(1),                                        /*选择项目2       */        
   CONKB020	           VARCHAR2(1),                                        /*选择项目3       */        
   CONKB021	           VARCHAR2(1),                                        /*选择项目4       */        
   CONKB022	           VARCHAR2(1),                                        /*选择项目5       */        
   CONKB023	           NUMBER(11,2),                                       /*总分值          */        
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONKB primary key (CONKB_ID)
);
create unique index AK_TB_CONKB on TB_CONKB (CONKB_ID,CONKB002);
create sequence SEQ_TB_CONKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONKB to public;
grant index  on TB_CONKB to public;
grant update on TB_CONKB to public; 
grant delete on TB_CONKB to public;  
grant insert on TB_CONKB to public; 
grant select on SEQ_TB_CONKB to public;   