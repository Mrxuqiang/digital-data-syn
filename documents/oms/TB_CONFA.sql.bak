/*
================================================================================
表结构代码:TB_CONFA
表结构名称:供应商合同变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFA;
drop index AK_TB_CONFA;
drop table TB_CONFA;
create table TB_CONFA  (
   CONFA_ID             INTEGER                         not null,  /*合同变更ID          */
   CONFA001             INTEGER                         not null,  /*合同号ID            */
   CONFA002             NUMBER(6,1)                     not null,  /*版本号              */
   CONFA003             VARCHAR2(30)                    not null,  /*对方签约人          */
   CONFA004             DATE                            not null,  /*签订日期            */
   CONFA005             VARCHAR2(80),                              /*文档编号            */
   CONFA006             INTEGER                         not null,  /*供应商户ID          */
   CONFA007             INTEGER                         not null,  /*签约营运组织ID      */
   CONFA008             INTEGER                         not null,  /*业务部门ID          */
   CONFA009             INTEGER                         not null,  /*业务人员ID          */
   CONFA010             VARCHAR2(60),                              /*签约地点            */
   CONFA011             VARCHAR2(1)                     not null,  /*经营方式            */
   CONFA012             DATE                            not null,  /*合同起日            */
   CONFA013             DATE                            not null,  /*合同止日            */
   CONFA014             NUMBER(12,2),                              /*经营面积            */
   CONFA015             INTEGER                         not null,  /*付款方式ID          */
   CONFA016             NUMBER(5),                                 /*三包期(月)          */
   CONFA017             VARCHAR2(1)                     not null,  /*合同类型            */
   CONFA018             INTEGER                                 ,  /*大合同营运组织ID    */
   CONFA019             INTEGER                                 ,  /*大合同ID            */
   CONFA020             VARCHAR2(1)                     not null,  /*合同状态            */
   CONFA021             DATE,                                      /*终止日期            */
   CONFA022             VARCHAR2(255),                             /*备注                */
   CONFA023             VARCHAR2(1),                               /*是否签核            */
   CONFA024             VARCHAR2(30),                              /*签核单号            */
   CONFA025             VARCHAR2(1),                               /*签核码              */
   CONFA026             INTEGER,                                   /*录入人ID            */
   CONFA027             DATE,                                      /*录入日期            */
   CONFA028             INTEGER,                                   /*审核人ID            */
   CONFA029             DATE,                                      /*审核日期            */
   CONFA030             NUMBER(12,2),                              /*商品损耗供应商承担比例(%)*/
   CONFA031             VARCHAR2(1),                               /*退还方式            */
   CONFA032             NUMBER(5),                                 /*退还月份            */
   CONFA033             VARCHAR2(1),                               /*审核码              */
   CONFA034             VARCHAR2(200),                             /*流程ID              */
   CONFA035             VARCHAR2(200),                             /*流程组              */
   CONFA036             VARCHAR2(200),                             /*备注                */
   CONFA037             VARCHAR2(200),                             /*备用                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFA primary key (CONFA_ID)
);
create unique index AK_TB_CONFA on TB_CONFA (CONFA001,CONFA002);
create sequence SEQ_TB_CONFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFA to public;
grant index  on TB_CONFA to public;
grant update on TB_CONFA to public; 
grant delete on TB_CONFA to public;  
grant insert on TB_CONFA to public; 
grant select on SEQ_TB_CONFA to public;   