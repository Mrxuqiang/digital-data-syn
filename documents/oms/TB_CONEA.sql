/*
================================================================================
表结构代码:TB_CONEA
表结构名称:供应商合同主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEA;
drop index AK_TB_CONEA;
drop table TB_CONEA;
create table TB_CONEA  (
   CONEA_ID             INTEGER                         not null,  /*合同ID              */
   CONEA001             VARCHAR2(30)                    not null,  /*合同号              */
   CONEA002             NUMBER(6,1)                     not null,  /*版本号              */
   CONEA003             VARCHAR2(30)                    not null,  /*对方签约人          */
   CONEA004             DATE                            not null,  /*签订日期            */
   CONEA005             VARCHAR2(80),                              /*文档编号            */
   CONEA006             INTEGER                         not null,  /*供应商户ID          */
   CONEA007             INTEGER                         not null,  /*签约营运组织ID      */
   CONEA008             INTEGER                         not null,  /*业务部门ID          */
   CONEA009             INTEGER                         not null,  /*业务人员ID          */
   CONEA010             VARCHAR2(60),                              /*签约地点            */
   CONEA011             VARCHAR2(1)                     not null,  /*经营方式            */
   CONEA012             DATE                            not null,  /*合同起日            */
   CONEA013             DATE                            not null,  /*合同止日            */
   CONEA014             NUMBER(12,2),                              /*经营面积            */
   CONEA015             INTEGER                         not null,  /*付款方式ID          */
   CONEA016             NUMBER(5),                                 /*三包期(月)          */
   CONEA017             VARCHAR2(1)                     not null,  /*合同类型            */
   CONEA018             INTEGER                                 ,  /*大合同营运组织ID    */
   CONEA019             INTEGER                                 ,  /*大合同ID            */
   CONEA020             VARCHAR2(1)                     not null,  /*合同状态            */
   CONEA021             DATE,                                      /*终止日期            */
   CONEA022             VARCHAR2(255),                             /*备注                */
   CONEA023             VARCHAR2(1),                               /*是否签核            */
   CONEA024             VARCHAR2(30),                              /*签核单号            */
   CONEA025             VARCHAR2(1),                               /*签核码              */
   CONEA026             INTEGER,                                   /*录入人ID            */
   CONEA027             DATE,                                      /*录入日期            */
   CONEA028             INTEGER,                                   /*审核人ID            */
   CONEA029             DATE,                                      /*审核日期            */
   CONEA030             NUMBER(12,2),                              /*商品损耗供应商承担比例(%)*/
   CONEA031             VARCHAR2(1),                               /*退还方式            */
   CONEA032             NUMBER(5),                                 /*退还月份            */
   CONEA033             VARCHAR2(1),                               /*是否固定结算日      */    --modi by licf 
   CONEA034             DATE,                                      /*结算日期            */    --modi by licf
   CONEA035             VARCHAR2(200),                             /*流程ID              */
   CONEA036             VARCHAR2(200),                             /*流程组              */
   CONEA037             VARCHAR2(200),                             /*备注                */
   CONEA038             VARCHAR2(200),                             /*备用                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEA primary key (CONEA_ID)
);
create unique index AK_TB_CONEA on TB_CONEA (CONEA001);
create sequence SEQ_TB_CONEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEA to public;
grant index  on TB_CONEA to public;
grant update on TB_CONEA to public; 
grant delete on TB_CONEA to public;  
grant insert on TB_CONEA to public; 
grant select on SEQ_TB_CONEA to public;   