/*
================================================================================
表结构代码:TB_SUPAI
表结构名称:商户引入主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAI;
drop index AK_TB_SUPAI;
drop table TB_SUPAI;
create table TB_SUPAI  (
   SUPAI_ID             INTEGER                         not null,  /*登记ID              */
   SUPAI001             VARCHAR2(16)                    not null,  /*登记号              */
   SUPAI002             DATE                            not null,  /*登记日期            */
   SUPAI003             INTEGER,                                   /*商户ID              */
   SUPAI004             VARCHAR2(40)                    not null,  /*商户简称            */
   SUPAI005             VARCHAR2(80)                    not null,  /*商户全称            */
   SUPAI006             INTEGER                         not null,  /*招商划ID          */
   SUPAI007             INTEGER                         not null,  /*过程模板ID          */
   SUPAI008             VARCHAR2(1),                               /*是否商户            */
   SUPAI009             VARCHAR2(1),                               /*是否供应商          */
   SUPAI010             VARCHAR2(1),                               /*是否客户            */
   SUPAI011             INTEGER                         not null,  /*经手人ID            */
   SUPAI012             VARCHAR2(1)                     not null,  /*资料状态 0:开立 1.引入 2.转正式 3.转失败  */
   SUPAI013             INTEGER                         not null,  /*营运组织ID          */
   SUPAI014             INTEGER,                                   /*楼栋ID              */
   SUPAI015             INTEGER,                                   /*楼层ID              */
   SUPAI016             INTEGER,                                   /*经营小类ID          */
   SUPAI017             NUMBER(12,2),                              /*拟租面积            */
   SUPAI018             INTEGER,                                   /*资料存放组织ID      */
   SUPAI019             INTEGER                         not null,  /*企业性质ID          */
   SUPAI020             VARCHAR2(255),                             /*经营范围            */
   SUPAI021             VARCHAR2(30),                              /*法人代表            */
   SUPAI022             VARCHAR2(30),                              /*法人电话            */
   SUPAI023             VARCHAR2(30),                              /*总经理              */
   SUPAI024             VARCHAR2(30),                              /*总经理电话          */
   SUPAI025             VARCHAR2(30),                              /*经营人              */
   SUPAI026             VARCHAR2(30),                              /*经营人电话          */
   SUPAI027             VARCHAR2(30),                              /*营销负责人          */
   SUPAI028             VARCHAR2(60),                              /*营销E_Mail          */
   SUPAI029             VARCHAR2(60),                              /*公司网址            */
   SUPAI030             VARCHAR2(20),                              /*纳税人登记号        */
   SUPAI031             INTEGER,                                   /*进项税种ID          */
   SUPAI032             NUMBER(12,2),                              /*注册资金            */
   SUPAI033             VARCHAR2(30),                              /*传真                */
   SUPAI034             INTEGER,                                   /*经营形态ID          */
   SUPAI035             VARCHAR2(10),                              /*发票邮编            */
   SUPAI036             VARCHAR2(255),                             /*发票地址            */
   SUPAI037             VARCHAR2(10),                              /*邮政编码            */
   SUPAI038             VARCHAR2(255),                             /*公司地址            */
   SUPAI039             VARCHAR2(10),                              /*邮寄邮编            */
   SUPAI040             VARCHAR2(255),                             /*邮寄地址            */
   SUPAI041             VARCHAR2(1),                               /*结果 0.成功 1.失败  */
   SUPAI042             INTEGER,                                   /*结果原因ID          */
   SUPAI043             VARCHAR2(255),                             /*备注                */
   SUPAI044             INTEGER,                                   /*客商分类ID          */
   SUPAI045             VARCHAR2(30),                              /*负责人电话          */
   SUPAI046             VARCHAR2(1)                     not null,  /*质保金交纳方式1.依小类 2.依最高额 3.依标准  */
   SUPAI047             VARCHAR2(1),                               /*单据来源1.手工录入 2.招商线索    */
   SUPAI048             VARCHAR2(30),                              /*来源单号            */
   SUPAI049             INTEGER,                                   /*来源单号ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAI primary key (SUPAI_ID)
);
create unique index AK_TB_SUPAI on TB_SUPAI (SUPAI001);
create sequence SEQ_TB_SUPAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAI to public;
grant index  on TB_SUPAI to public;
grant update on TB_SUPAI to public; 
grant delete on TB_SUPAI to public;  
grant insert on TB_SUPAI to public; 
grant select on SEQ_TB_SUPAI to public;   