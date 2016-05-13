/*
================================================================================
表结构代码:TB_CONIA
表结构名称:广告位合同表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONIA;
drop index AK_TB_CONIA;
drop table TB_CONIA;
create table TB_CONIA  (
   CONIA_ID             INTEGER                         not null,  /*广告位合同ID      */
   CONIA001             VARCHAR2(30)                    not null,  /*广告位合同号      */
   CONIA002             NUMBER(5,0)                     not null,  /*版本号            */
   CONIA003             INTEGER                         not null,  /*广告位ID          */
   CONIA004             DATE                            not null,  /*签订日期          */
   CONIA005             INTEGER                         not null,  /*客商ID            */
   CONIA006             INTEGER,                                   /*楼栋ID            */
   CONIA007             INTEGER,                                   /*楼层ID            */
   CONIA008             NUMBER(12,2),                              /*宽(m)             */
   CONIA009             NUMBER(12,2),                              /*高(m)             */
   CONIA010             NUMBER(12,2),                              /*面积(m2)          */
   CONIA011             DATE                            not null,  /*租赁起日          */
   CONIA012             DATE                            not null,  /*租赁止日          */
   CONIA013             NUMBER(12,2),                              /*合同金额          */
   CONIA014             NUMBER(12,2),                              /*合同变更金额      */
   CONIA015             NUMBER(12,2),                              /*当前合同金额      */
   CONIA016             INTEGER,                                   /*费用ID            */
   CONIA017             INTEGER,                                   /*费用单ID          */
   CONIA018             INTEGER,                                   /*签约营运组织ID    */
   CONIA019             VARCHAR2(1)                     not null,  /*出租方式          */
   CONIA020             INTEGER                         not null,  /*业务部门ID        */
   CONIA021             INTEGER                         not null,  /*业务人员ID        */
   CONIA022             INTEGER,                                   /*录入人ID          */
   CONIA023             DATE,                                      /*录入日期          */
   CONIA024             INTEGER,                                   /*审核人ID          */
   CONIA025             DATE,                                      /*审核日期          */
   CONIA026             VARCHAR2(1)                     not null,  /*合同状态N.未审核 Y.审核 Z.终止  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_CONIA primary key (CONIA_ID)
);
create unique index AK_TB_CONIA on TB_CONIA (CONIA001);
create sequence SEQ_TB_CONIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIA to public;
grant index  on TB_CONIA to public;
grant update on TB_CONIA to public; 
grant delete on TB_CONIA to public;  
grant insert on TB_CONIA to public; 
grant select on SEQ_TB_CONIA to public;   