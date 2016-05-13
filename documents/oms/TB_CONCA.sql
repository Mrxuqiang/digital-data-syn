/*
================================================================================
表结构代码:TB_CONCA
表结构名称:合同变更表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCA;
drop index AK_TB_CONCA;
drop table TB_CONCA;
create table TB_CONCA  (
   CONCA_ID             INTEGER                         not null,  /*合同变更ID          */
   CONCA001             INTEGER                         not null,  /*公司ID              */
   CONCA002             INTEGER                         not null,  /*营运组织ID          */
   CONCA003             INTEGER                         not null,  /*合同ID              */
   CONCA004             NUMBER(6,1)                     not null,  /*版本号              */
   CONCA005             DATE                            not null,  /*签订日期            */
   CONCA006             VARCHAR2(30)                    not null,  /*对方签约人          */
   CONCA007             INTEGER                         not null,  /*合同类型ID          */
   CONCA008             INTEGER                         not null,  /*经营商户ID          */
   CONCA009             INTEGER                         not null,  /*结算商户ID          */
   CONCA010             INTEGER                         not null,  /*摊位ID              */
   CONCA011             DATE                            not null,  /*计租起日            */ #modify ouwx 2010/2/26
   CONCA012             DATE                            not null,  /*租赁止日            */
   CONCA013             INTEGER                         not null,  /*付款方式ID          */
   CONCA014             INTEGER,                                   /*展帐单ID            */
   CONCA015             NUMBER(5),                                 /*提前收款天数        */
   CONCA016             VARCHAR2(1),                               /*是否代收银          */
   CONCA017             VARCHAR2(1),                               /*POS使用方式         */
   CONCA018             INTEGER,                                   /*返款方式ID          */
   CONCA019             NUMBER(5),                                 /*交款期限(天)        */
   CONCA020             NUMBER(12,2),                              /*滞纳金率            */
   CONCA021             INTEGER,                                   /*续签关联合同ID      */
   CONCA022             INTEGER                         not null,  /*业务人员ID          */
   CONCA023             VARCHAR2(255),                             /*备注                */
   CONCA024             DATE,                                      /*终止日期            */
   CONCA025             VARCHAR2(1)                     not null,  /*状态                */
   CONCA026             VARCHAR2(1),                               /*是否签核            */
   CONCA027             VARCHAR2(30),                              /*签核单号            */
   CONCA028             VARCHAR2(1),                               /*签核码              */
   CONCA029             INTEGER,                                   /*录入人ID            */
   CONCA030             DATE,                                      /*录入日期            */
   CONCA031             INTEGER,                                   /*审核人ID            */
   CONCA032             DATE,                                      /*审核日期            */
   CONCA033             VARCHAR2(80),                              /*商户全称            */
   CONCA034             VARCHAR2(30),                              /*负责人              */
   CONCA035             VARCHAR2(30),                              /*负责人电话          */
   CONCA036             VARCHAR2(30),                              /*传真                */
   CONCA037             VARCHAR2(20),                              /*纳税人登记号        */
   CONCA038             INTEGER                         not null,  /*经营大类ID          */
   CONCA039             INTEGER                         not null,  /*经营中类ID          */
   CONCA040             INTEGER                         not null,  /*经营小类ID          */
   CONCA041             INTEGER                         not null,  /*品牌系列ID            */
   CONCA042             INTEGER,                                   /*变更人ID            */
   CONCA043             DATE,                                      /*变更日期            */
   CONCA044             DATE,                                      /*变更生效日          */
   CONCA045             INTEGER,                                   /*变更原因ID          */
   CONCA046             VARCHAR2(80),                              /*文档编号            */
   CONCA047             VARCHAR2(1)                     not null,  /*摊位类型            */
   CONCA048             INTEGER                         not null,  /*业务部门ID          */
   CONCA049             VARCHAR2(60),                              /*签约地点            */
   CONCA050             INTEGER                         not null,  /*楼栋ID              */
   CONCA051             INTEGER                         not null,  /*楼层ID              */
   CONCA052             VARCHAR2(30)                    not null,  /*合同号              */
   CONCA053             DATE                                       /*租赁起日            */ #modify ouwx 2010/2/26
   CONCA054             NUMBER(5),                                 /*自动延期(月)        */  add ouwx 2010/12/05
   CONCA055             NUMBER(5),                                 /*提前延期天数        */  add ouwx 2010/12/05
   CONCA056             DATE,					   /*延期最近执行日      */  add ouwx 2010/12/05
   CONCA057             VARCHAR2(400),                             /*变更事项            */  add ouwx 2011/12/21
   CONCA058             VARCHAR2(800),                             /*变更说明            */  add ouwx 2011/12/21
   CONCA059             INTEGER,                                   /*合同等级ID          */  add ouwx 2012/02/14   
   CONCA060             VARCHAR2(40),                              /*经营客商简称        */  add ouwx 2012/04/09   
   CONCA061             VARCHAR2(40),                              /*结算客商简称        */  add ouwx 2012/04/09 
   CONCA062             INTEGER,                                   /*销售区域id          */  20120619 add by gaoxl   

   CONCA063             INTEGER                         not null,  /*品牌ID              */
   CONCA064             DATE                            not null,  /*截止时间            */
   CONCA065             NUMBER(22,2),                              /*合同单价            */ 
   CONCA066             VARCHAR2(30),                              /*公司代码            */
   CONCA067             VARCHAR2(60),                             /*承租方注册地址（或住址）            */
   CONCA068             VARCHAR2(30),                             /*承租方法定代表人（负责人）            */
   CONCA069             VARCHAR2(30),                             /*承租方身份证号码（组织机构代码证）            */
   CONCA070             VARCHAR2(30),                             /*承租方法定代表人（负责人）-联系方式            */
   CONCA071             VARCHAR2(30),                             /*承租方联系人名            */
   CONCA072             VARCHAR2(60),                             /*承租方联系地址            */
   CONCA073             VARCHAR2(30),                             /*承租方联系电话            */
   CONCA074             VARCHAR2(60),                             /*担保方注册地址（或住址）            */
   CONCA075             VARCHAR2(30),                             /*担保方法定代表人（负责人）            */
   CONCA076             VARCHAR2(30),                             /*担保方身份证号码（组织机构代码证）            */
   CONCA077             VARCHAR2(30),                             /*担保方法定代表人（负责人）-联系方式            */
   CONCA078             VARCHAR2(30),                             /*承租方授权代表（委托代签人）            */
   CONCA079             VARCHAR2(30),                             /*承租方授权代表（委托代签人）身份证            */
   CONCA080             VARCHAR2(30),                  not null,  /*商业主体             */
   CONCA081             VARCHAR2(13),                             /*SAP合同号            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   constraint PK_TB_CONCA primary key (CONCA_ID)
);
create unique index AK_TB_CONCA on TB_CONCA (CONCA002,CONCA003,CONCA004);
create sequence SEQ_TB_CONCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCA to public;
grant index  on TB_CONCA to public;
grant update on TB_CONCA to public; 
grant delete on TB_CONCA to public;  
grant insert on TB_CONCA to public; 
grant select on SEQ_TB_CONCA to public;   