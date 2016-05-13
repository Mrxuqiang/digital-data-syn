/*
================================================================================
表结构代码:TB_PROCA
表结构名称:房产定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROCA;
drop index AK_TB_PROCA;
drop table TB_PROCA;
create table TB_PROCA  (
   PROCA_ID             INTEGER                         not null,  /*房产ID          */
   PROCA001             VARCHAR2(30)                    not null,  /*房产号          */
   PROCA002             VARCHAR2(60)                    not null,  /*房产名称        */
   PROCA003             VARCHAR2(100),                             /*位置描述	     */ 
   PROCA004             INTEGER                         not null,  /*营运组织	     */ 
   PROCA005             INTEGER,                                   /*楼栋    	     */ 
   PROCA006             INTEGER,                                   /*楼层    	     */ 
   PROCA007             VARCHAR2(1),                               /*产权性质	     */
   PROCA008             NUMBER(12,2),                              /*建筑面积	     */ 
   PROCA009             NUMBER(12,2),                              /*产权面积	     */ 
   PROCA010             INTEGER                        not null,   /*业主    	     */ 
   PROCA011             VARCHAR2(30),                              /*预售证号        */ 
   PROCA012             DATE,                                      /*认购日期        */ 
   PROCA013             VARCHAR2(1),                               /*有效否          */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门    */                               
   CREATE_DATE          DATE,                                      /*建立日期        */
   MODIFIER             VARCHAR2(12),                              /*修改人员        */
   MODI_DATE            DATE,                                      /*修改日期        */
   FLAG                 NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_PROCA primary key (PROCA_ID)
);
create unique index AK_TB_PROCA on TB_PROCA (PROCA001,PROCA004);
create sequence SEQ_TB_PROCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROCA to public;
grant index  on TB_PROCA to public;
grant update on TB_PROCA to public; 
grant delete on TB_PROCA to public;  
grant insert on TB_PROCA to public; 
grant select on SEQ_TB_PROCA to public;   

