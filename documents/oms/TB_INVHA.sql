/*
================================================================================
表结构代码:TB_INVHA
表结构名称:差异单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVHA;
drop index AK_TB_INVHA;
drop table TB_INVHA;
create table TB_INVHA  (
   INVHA_ID             INTEGER              not null,   /*差异单ID          */   
   INVHA001             INTEGER              not null,   /*差异单别          */   
   INVHA002             VARCHAR2(30)         not null,   /*差异单号          */   
   INVHA003             DATE                 not null,   /*差异调整日期      */   
   INVHA004             INTEGER              not null,   /*收货营运组织      */   
   INVHA005             INTEGER              not null,   /*发货营运组织      */   
   INVHA006             INTEGER              not null,   /*调整营运组织      */   
   INVHA007             INTEGER,                         /*差异调整人员      */   
   INVHA008             VARCHAR2(1)          not null,   /*差异来源类型      */   
   INVHA009             INTEGER              not null,   /*来源单号ID        */   
   INVHA010             VARCHAR2(30)         not null,   /*来源单号          */   
   INVHA011             VARCHAR2(1),         not null,   /*审核状态          */   
   INVHA012             INTEGER,                         /*录入人            */   
   INVHA013             DATE,                            /*录入日期          */   
   INVHA014             INTEGER,                         /*审核人            */   
   INVHA015             DATE,                            /*审核日期          */   
   CREATE_USER          VARCHAR2(12),                    /*建立人员        */
   USER_GROUP           VARCHAR2(12),                    /*建立人员部门    */                               
   CREATE_DATE          DATE,                            /*建立日期        */
   MODIFIER             VARCHAR2(12),                    /*修改人员        */
   MODI_DATE            DATE,                            /*修改日期        */
   FLAG                 NUMBER(1),                       /*资料状态        */
   constraint PK_TB_INVHA primary key (INVHA_ID)
);
create unique index AK_TB_INVHA on TB_INVHA (INVHA001,INVHA002);
create sequence SEQ_TB_INVHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVHA to public;
grant index  on TB_INVHA to public;
grant update on TB_INVHA to public; 
grant delete on TB_INVHA to public;  
grant insert on TB_INVHA to public; 
grant select on SEQ_TB_INVHA to public;   