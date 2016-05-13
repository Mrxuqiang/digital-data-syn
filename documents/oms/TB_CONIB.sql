/*
================================================================================
表结构代码:TB_CONIB
表结构名称:广告位合同变更表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONIB;
drop index AK_TB_CONIB;
drop table TB_CONIB;
create table TB_CONIB  (
   CONIB_ID             INTEGER                         not null,  /*广告位合同ID      */
   CONIB001             VARCHAR2(30)                    not null,  /*广告位合同号      */
   CONIB002             NUMBER(5,0)                     not null,  /*版本号            */
   CONIB003             INTEGER                         not null,  /*广告位ID          */
   CONIB004             DATE                            not null,  /*签订日期          */
   CONIB005             INTEGER                         not null,  /*客商ID            */
   CONIB006             INTEGER,                                   /*楼栋ID            */
   CONIB007             INTEGER,                                   /*楼层ID            */
   CONIB008             NUMBER(12,2),                              /*宽(m)             */
   CONIB009             NUMBER(12,2),                              /*高(m)             */
   CONIB010             NUMBER(12,2),                              /*面积(m2)          */
   CONIB011             DATE                            not null,  /*租赁起日          */
   CONIB012             DATE                            not null,  /*租赁止日          */
   CONIB013             NUMBER(12,2),                              /*合同金额          */
   CONIB014             NUMBER(12,2),                              /*合同变更金额      */
   CONIB015             NUMBER(12,2),                              /*当前合同金额      */
   CONIB016             INTEGER,                                   /*费用ID            */
   CONIB017             INTEGER,                                   /*费用单ID          */
   CONIB018             INTEGER,                                   /*签约营运组织ID    */
   CONIB019             VARCHAR2(1)                     not null,  /*出租方式          */
   CONIB020             INTEGER                         not null,  /*业务部门ID        */
   CONIB021             INTEGER                         not null,  /*业务人员ID        */
   CONIB022             INTEGER,                                   /*录入人ID          */
   CONIB023             DATE,                                      /*录入日期          */
   CONIB024             INTEGER,                                   /*审核人ID          */
   CONIB025             DATE,                                      /*审核日期          */
   CONIB026             VARCHAR2(1)                     not null,  /*合同状态          */
   CONIB027             INTEGER,                                   /*变更人ID          */
   CONIB028             DATE,                                      /*变更日期          */
   CONIB029             VARCHAR2(1)                     not null,  /*变更状态          */
   CONIB030             INTEGER,                                   /*差异费用单ID      */
   CONIB031             INTEGER,                                   /*变更原因ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_CONIB primary key (CONIB_ID)
);
create unique index AK_TB_CONIB on TB_CONIB (CONIB001,CONIB002);
create sequence SEQ_TB_CONIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIB to public;
grant index  on TB_CONIB to public;
grant update on TB_CONIB to public; 
grant delete on TB_CONIB to public;  
grant insert on TB_CONIB to public; 
grant select on SEQ_TB_CONIB to public;   