/*
================================================================================
表结构代码:TB_ASSAC
表结构名称:固定资产新增主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSAC;
drop index AK_TB_ASSAC;
drop table TB_ASSAC;
create table TB_ASSAC  (
   ASSAC_ID             INTEGER                         not null,   /*新增主表ID            */
   ASSAC001             INTEGER                         not null,   /*单别ID                 */
   ASSAC002             VARCHAR2(30)                    not null,   /*单号                   */ 
   ASSAC003             DATE                            not null,   /*单据日期               */ 
   ASSAC004             INTEGER,                                    /*供应商ID               */
   ASSAC005             VARCHAR2(60),                               /*生产供应商             */  
   ASSAC006             INTEGER,                                    /*币种ID                 */  
   ASSAC007             NUMBER(16,4),                               /*汇率                   */   
   ASSAC008             VARCHAR2(1),                                /*单据状态               */  
   ASSAC009             DATE,                                       /*录入日期               */   
   ASSAC010             INTEGER,                                    /*录入人                 */ 
   ASSAC011             DATE,                                       /*审核日期               */ 
   ASSAC012             INTEGER,                                    /*审核人                 */   
   ASSAC013             VARCHAR2(255),                              /*备注                   */ 
   ASSAC014             INTEGER,                                    /*部门ID                 */   
   ASSAC015             INTEGER,                                    /*员工ID                 */                            
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_ASSAC primary key (ASSAC_ID)
);
create unique index AK_TB_ASSAC on TB_ASSAC (ASSAC001,ASSAC002);
create sequence SEQ_TB_ASSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAC to public;
grant index  on TB_ASSAC to public;
grant update on TB_ASSAC to public; 
grant delete on TB_ASSAC to public;  
grant insert on TB_ASSAC to public; 
grant select on SEQ_TB_ASSAC to public;   