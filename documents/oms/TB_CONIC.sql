/*
================================================================================
表结构代码:TB_CONIC
表结构名称:广告位合同终止表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONIC;
drop index AK_TB_CONIC;
drop table TB_CONIC;
create table TB_CONIC  (
   CONIC_ID             INTEGER                         not null,  /*广告位合同ID      */
   CONIC001             VARCHAR2(30)                    not null,  /*广告位合同号      */
   CONIC002             NUMBER(5,0)                     not null,  /*版本号            */
   CONIC003             INTEGER                         not null,  /*广告位ID          */
   CONIC004             DATE                            not null,  /*签订日期          */
   CONIC005             INTEGER                         not null,  /*客商ID            */
   CONIC006             INTEGER,                                   /*楼栋ID            */
   CONIC007             INTEGER,                                   /*楼层ID            */
   CONIC008             NUMBER(12,2),                              /*宽(m)             */
   CONIC009             NUMBER(12,2),                              /*高(m)             */
   CONIC010             NUMBER(12,2),                              /*面积(m2)          */
   CONIC011             DATE                            not null,  /*租赁起日          */
   CONIC012             DATE                            not null,  /*租赁止日          */
   CONIC013             NUMBER(12,2),                              /*合同金额          */
   CONIC014             NUMBER(12,2),                              /*合同变更金额      */
   CONIC015             NUMBER(12,2),                              /*当前合同金额      */
   CONIC016             INTEGER,                                   /*费用ID            */
   CONIC017             INTEGER,                                   /*费用单ID          */
   CONIC018             INTEGER,                                   /*签约营运组织ID    */
   CONIC019             VARCHAR2(1)                     not null,  /*出租方式          */
   CONIC020             INTEGER                         not null,  /*业务部门ID        */
   CONIC021             INTEGER                         not null,  /*业务人员ID        */
   CONIC022             INTEGER,                                   /*录入人ID          */
   CONIC023             DATE,                                      /*录入日期          */
   CONIC024             INTEGER,                                   /*审核人ID          */
   CONIC025             DATE,                                      /*审核日期          */
   CONIC026             VARCHAR2(1)                     not null,  /*合同状态          */
   CONIC027             INTEGER,                                   /*终止人ID          */
   CONIC028             DATE,                                      /*终止日期          */
   CONIC029             VARCHAR2(1)                     not null,  /*终止状态          */
   CONIC030             INTEGER,                                   /*差异费用单ID      */
   CONIC031             INTEGER,                                   /*终止原因ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_CONIC primary key (CONIC_ID)
);
create unique index AK_TB_CONIC on TB_CONIC (CONIC001,CONIC002);
create sequence SEQ_TB_CONIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIC to public;
grant index  on TB_CONIC to public;
grant update on TB_CONIC to public; 
grant delete on TB_CONIC to public;  
grant insert on TB_CONIC to public; 
grant select on SEQ_TB_CONIC to public;   