/*
================================================================================
表结构代码:TB_BATDF
表结构名称:套件临时表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATDF;
drop table TB_BATDF;
create table TB_BATDF  (
   BATDF_ID	            INTEGER						/* 主键                   */
   BATDF001	            INTEGER                        ,  		        /* 单据类型               */
   BATDF002	            INTEGER	          	   ,                    /* 单据ID                 */
   BATDF003	            INTEGER		           ,                    /* 单据明细套件ID         */   
   BATDF004	            INTEGER		           ,                    /* 单据明细子件ID         */   
   BATDF005	            INTEGER		           ,                    /* 类型 1.锁定 2.扣减     */   
   BATDF006	            NUMBER(10)           ,                              /* 锁定、扣减数量         */
   BATDF007	            NUMBER(10)           ,                              /* 实际锁定、扣减数量     */
   BATDF008	            VARCHAR2(1)	           ,                            /* 子套件  1.套件 2.子件  */ 
   CREATE_USER          VARCHAR2(12),                                 /* 建立人员               */
   USER_GROUP           VARCHAR2(12),                                 /* 建立人员部门           */
   CREATE_DATE          DATE,                                         /* 建立日期               */
   MODIFIER             VARCHAR2(12),                                 /* 修改人员               */
   MODI_DATE            DATE,                                         /* 修改日期               */
   FLAG                 NUMBER(1),                                    /* 资料状态               */

   --constraint PK_TB_BATDF primary key (BATDF_ID)
);
create index AK_TB_BATDF on TB_BATDF (BATDF_ID,BATDF001,BATDF003,BATDF008);
create sequence SEQ_TB_BATDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATDF to public;
grant index  on TB_BATDF to public;
grant update on TB_BATDF to public;
grant delete on TB_BATDF to public;
grant insert on TB_BATDF to public;
grant select on SEQ_TB_BATDF to public;